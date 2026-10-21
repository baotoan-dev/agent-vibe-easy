---
name: dify-workflow-agent
description: "Xây dựng và cấu hình quy trình AI Workflow, Chatbot và AI Agent trên nền tảng Dify mã nguồn mở thông qua sơ đồ trực quan và API DSL."
---

# Kỹ Năng Thiết Kế AI Workflow Trên Nền Tảng Dify (Dify AI Platform)

Kỹ năng này hướng dẫn AI agent thiết kế sơ đồ luồng công việc (Workflows), cấu hình Knowledge Base đa định dạng và tích hợp các công cụ Tool / MCP vào nền tảng Dify.

---

## 1. Các Node Cốt Lõi Trong Dify Workflow DSL

- **Start Node**: Tiếp nhận biến đầu vào (`sys.query`, `sys.user_id`, tham số tùy chỉnh).
- **LLM Node**: Chọn mô hình (Claude 3.5 Sonnet, GPT-4o, DeepSeek), cấu hình System Prompt và nhiệt độ (`temperature`).
- **Knowledge Retrieval Node**: Kết nối với bộ cơ sở tri thức để tìm kiếm văn bản liên quan.
- **Code Node**: Chạy mã nguồn Python/JavaScript nhẹ để biến đổi dữ liệu, làm sạch JSON hoặc tính toán.
- **If/Else Node**: Phân nhánh luồng xử lý theo điều kiện logic.
- **HTTP Request Node**: Gọi webhook hoặc REST API ngoài.
- **End Node**: Định hình cấu trúc JSON hoặc câu văn phản hồi cuối cùng cho người dùng.

---

## 2. Tích Hợp API Dify Vào Ứng Dụng Web / Di Động

Sử dụng Dify Service API để gọi trực tiếp từ ứng dụng frontend:
```bash
curl -X POST 'https://api.dify.ai/v1/chat-messages' \
  -H 'Authorization: Bearer YOUR_DIFY_API_KEY' \
  -H 'Content-Type: application/json' \
  -d '{
    "inputs": {},
    "query": "Tóm tắt bản cập nhật thị trường tuần này",
    "response_mode": "streaming",
    "conversation_id": "",
    "user": "user-123"
  }'
```

---

## 3. Best Practices Vận Hành Bot Trực Tiếp

- Thiết lập cơ chế **Streaming Response** qua Server-Sent Events (SSE) để giảm thời gian phản hồi cảm nhận (Time-to-First-Token).
- Áp dụng kiểm duyệt nội dung (Content Moderation) trước khi đưa dữ liệu vào LLM.
