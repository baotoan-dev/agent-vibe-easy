---
name: llamaindex-knowledge-base
description: "Xây dựng hệ thống cơ sở tri thức doanh nghiệp nâng cao bằng LlamaIndex, phân đoạn tài liệu đa cấp (Hierarchical Node Parsing) và tìm kiếm kết hợp (Hybrid Search)."
---

# Kỹ Năng Quản Trị Tri Thức Doanh Nghiệp (LlamaIndex Knowledge Base)

Kỹ năng này hướng dẫn AI agent cấu hình và triển khai pipeline truy xuất dữ liệu nâng cao dựa trên LlamaIndex (Python/TypeScript), tối ưu hóa trích xuất dữ liệu phi cấu trúc (PDF, Word, Markdown, Notion).

---

## 1. Kiến Trúc Pipeline LlamaIndex

```
Tài liệu gốc (PDF / Docx / Web)
       │
       ▼
SimpleDirectoryReader / LlamaParse
       │
       ▼
HierarchicalNodeParser (Parent-Child Chunking)
       │
       ├──► Vector Store Index (Embeddings)
       └──► Document Summary Index / BM25 Index
       │
       ▼
Hybrid Retriever (Vector Similarity + BM25 Keyword)
       │
       ▼
Cohere / BGE Reranker (Lọc & xếp hạng lại kết quả liên quan nhất)
       │
       ▼
Response Synthesizer (Tổng hợp câu trả lời chuẩn xác, dẫn nguồn)
```

---

## 2. Kỹ Thuật Parent-Child Indexing

Để giải quyết mâu thuẫn giữa kích thước chunk nhỏ (tốt cho vector search) và chunk lớn (cần thiết cho ngữ cảnh trả lời):
- **Child Chunks (128 - 256 tokens)**: Dùng để tính toán embedding và tìm kiếm độ tương đồng chính xác.
- **Parent Chunks (512 - 1024 tokens)**: Khi child chunk được chọn, hệ thống tự động tải parent chunk chứa toàn bộ bối cảnh xung quanh để nạp vào LLM.

---

## 3. Đo Lường & Đánh Giá Chất Lượng Truy Xuất

Sử dụng framework đánh giá `Ragas` hoặc `TruLens` với 3 chỉ số cốt lõi:
1. **Faithfulness (Độ trung thực)**: Câu trả lời có bám sát ngữ cảnh truy xuất được hay không (ngăn chặn hallucination).
2. **Answer Relevance (Độ phù hợp của câu trả lời)**: Câu trả lời có giải quyết đúng trọng tâm câu hỏi của người dùng.
3. **Context Recall (Độ phủ của ngữ cảnh)**: Các tài liệu truy xuất có chứa đủ thông tin để trả lời câu hỏi.
