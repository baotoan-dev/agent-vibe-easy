---
name: pdf-processor
description: Trích xuất, phân tích cú pháp và xử lý văn bản, biểu bảng từ tệp tài liệu PDF (chính thức từ anthropics/skills/pdf).
---

# Kỹ Năng: PDF Extraction & Processing (anthropics/skills)

Kỹ năng này chuẩn hóa cách AI làm việc với các tài liệu PDF phức tạp: trích xuất văn bản không bị lỗi font, đọc cấu trúc bảng biểu và chuyển đổi sang Markdown sạch.

---

## 1. Quy Trình 3 Bước Xử Lý PDF

### Bước 1: Trích Xuất Dữ Liệu Thô (Raw Extraction)
- Sử dụng công cụ dòng lệnh (như `pdftotext`, `pdfplumber`, `pypdf`) để đọc nội dung text layer.
- Giữ nguyên cấu trúc phân đoạn và số trang để phục vụ trích dẫn nguồn.

### Bước 2: Nhận Diện Bảng Biểu & Danh Sách
- Tái cấu trúc các bảng biểu trong PDF thành Markdown Table hoặc JSON có cấu trúc.
- Xử lý các dòng bị ngắt câu (Hyphenation) để văn bản liền mạch.

### Bước 3: Đóng Gói Phục Vụ RAG / Tóm Tắt
- Gắn metadata: `{ file_name, total_pages, current_page, extracted_at }`.
- Chia nhỏ văn bản theo trang để phục vụ nhúng vector hoặc hỏi đáp.

---

## 2. Hướng Dẫn Sử Dụng
```text
Áp dụng skill `pdf-processor`:
Hãy đọc tệp PDF [Tên file.pdf], trích xuất toàn bộ các bảng số liệu tài chính thành định dạng Markdown Table và tóm tắt 3 kết luận chính.
```
