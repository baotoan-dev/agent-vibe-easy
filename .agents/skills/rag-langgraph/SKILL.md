---
name: rag-langgraph
description: Xây dựng hệ thống Hỏi-Đáp nâng cao Retrieval-Augmented Generation (RAG) sử dụng LangGraph, Vector Database, Semantic Chunking và cơ chế chấm điểm tài liệu tự động (Self-Reflective RAG).
---

# Kỹ Năng: RAG & LangGraph Advanced Pipeline

Kỹ năng này chuẩn hóa quy trình xây dựng các ứng dụng AI hỏi-đáp trên tài liệu nội bộ, khắc phục hiện tượng ảo giác (hallucination) và cải thiện độ chính xác câu trả lời.

---

## 1. Quy Trình 4 Bước Chuẩn (SOP)

### Bước 1: Xử Lý Tài Liệu & Tạo Vector (Ingestion Pipeline)
- **Tải dữ liệu:** Đọc file PDF, Markdown, DOCX hoặc dữ liệu Web.
- **Phân đoạn ngữ nghĩa (Semantic Chunking):** Chia văn bản thành các đoạn 500-1000 tokens kèm độ gối đầu (overlap 100-150 tokens) để bảo toàn ngữ cảnh liền mạch.
- **Lưu trữ Vector:** Dùng mô hình embedding chất lượng cao (OpenAI `text-embedding-3`, BGE-M3) lưu vào Vector Store (Supabase `pgvector`, Chroma, Pinecone).

### Bước 2: Thiết Kế Đồ Thị Luồng Quyết Định (LangGraph Workflow)
Không dùng RAG tuyến tính đơn giản (Retrieve ➔ Answer), mà dùng đồ thị có điều kiện (Self-RAG):
1. **Node `retrieve`:** Tìm kiếm k đoạn văn bản tương đồng nhất.
2. **Node `grade_documents`:** Dùng LLM kiểm tra xem từng đoạn tài liệu có thực sự liên quan đến câu hỏi không.
   - Nếu tài liệu **liên quan**: Chuyển sang Node `generate`.
   - Nếu tài liệu **không liên quan hoặc thiếu**: Chuyển sang Node `rewrite_query` (viết lại câu hỏi để tìm kiếm lần 2) hoặc gọi web search fallback.
3. **Node `generate`:** Sinh câu trả lời dựa trên tài liệu đã lọc.
4. **Node `check_hallucination`:** Kiểm tra chéo xem câu trả lời có được minh chứng hoàn toàn bởi tài liệu không.

### Bước 3: Trích Dẫn Nguồn Minh Bạch (Citation & Provenance)
- Mọi câu trả lời bắt buộc phải kèm nguồn trích dẫn: `[Tên file, Trang/Đoạn]`.
- Nếu tài liệu không chứa câu trả lời, AI bắt buộc phải trả lời: *"Tài liệu cung cấp không có thông tin về vấn đề này"* thay vì tự bịa câu trả lời.

### Bước 4: Tối Ưu Tốc Độ & Bộ Nhớ Lịch Sử
- Sử dụng Checkpointer của LangGraph (`MemorySaver` hoặc Postgres Saver) để duy trì ngữ cảnh nhiều lượt chat (Multi-turn conversations).
- Tích hợp Streaming Response để người dùng không phải chờ lâu.

---

## 2. Hướng Dẫn Tối Ưu Cho Từng Dòng Model

### 🌟 Dành cho Gemini 2.0 / GPT-4o
- **Yêu cầu thế mạnh:** Xử lý văn bản siêu dài (Long Context Window) kết hợp trích xuất thông tin nhanh.
- **Prompt mẫu:**
  ```text
  Theo skill `rag-langgraph`:
  Tôi có tập tài liệu [Loại tài liệu]. Hãy thiết kế luồng chia chunking phù hợp và viết schema metadata cần lưu cùng vector.
  ```

### 🧠 Dành cho Claude 3.7 / 3.5 Sonnet
- **Yêu cầu thế mạnh:** Viết mã nguồn Python / TypeScript cho LangGraph StateGraph, định nghĩa TypedDict State, các Node và Conditional Edges.
- **Prompt mẫu:**
  ```text
  Theo skill `rag-langgraph`:
  Hãy viết code LangGraph bằng Python:
  - Định nghĩa GraphState gồm: question, documents, generation.
  - Viết các node: retrieve, grade_documents, generate.
  - Thiết lập conditional_edges để chuyển hướng khi tài liệu không đạt chuẩn.
  ```
