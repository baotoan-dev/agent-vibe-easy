---
name: obsidian-knowledge-vault
description: "Tích hợp và đồng bộ quản lý tri thức cá nhân (PKM) với Obsidian Vault, tạo liên kết hai chiều (Bidirectional Linking) và đồ thị tri thức (Graph View)."
---

# Kỹ Năng Quản Trị Tri Thức Cá Nhân Với Obsidian (Obsidian Knowledge Vault)

Kỹ năng này hướng dẫn AI agent cấu hình, tổ chức và duy trì kho tri thức Markdown cá nhân theo phương pháp Zettelkasten, liên kết hai chiều (`[[Wikilinks]]`) và phân loại thẻ ngữ nghĩa.

---

## 1. Triết Lý Zettelkasten Trong Obsidian

- **Ghi chú nguyên tử (Atomic Notes)**: Mỗi tệp ghi chú chỉ chứa duy nhất một ý tưởng hoặc khái niệm độc lập.
- **Liên kết hai chiều (`[[Note Title]]`)**: Kết nối các ý tưởng liên quan với nhau tạo thành mạng lưới tri thức phi tuyến tính thay vì cấu trúc cây phân cấp cố định.
- **Bản đồ nội dung (Maps of Content - MOC)**: Tệp trung tâm tổng hợp các liên kết đến những ghi chú con cùng một chủ đề lớn.

---

## 2. Cấu Trúc Metadata YAML Frontmatter Chuẩn

Mỗi tệp ghi chú trong Obsidian Vault phải có phần đầu trang chuẩn hóa:
```yaml
---
title: "Kiến trúc Tác nhân AI Độc lập"
created: 2026-10-21
updated: 2026-10-21
tags:
  - ai/agents
  - architecture/llm
aliases:
  - Autonomous AI Agents
  - Multi-Agent Systems
---
```

---

## 3. Quy Trình Đồng Bộ & Xuất Bản Web

1. **Định dạng Markdown Chuẩn**: Tránh sử dụng cú pháp đặc thù không tương thích với các trình biên dịch Markdown tiêu chuẩn.
2. **Quản Lý Tài Nguyên Đính Kèm**: Tất cả hình ảnh và media đính kèm được gom chung vào thư mục `attachments/` để không làm lộn xộn cây thư mục chính.
3. **Chuyển Đổi Sang VitePress / Hugo**: Tự động chuyển đổi các thẻ `[[Tên trang]]` thành liên kết tương đối `[Tên trang](./ten-trang.md)` khi cần build ra web tĩnh.
