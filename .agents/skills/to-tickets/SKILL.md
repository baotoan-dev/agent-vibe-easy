---
name: to-tickets
description: Phân rã tài liệu SPEC thành các thẻ công việc / GitHub Issues độc lập có gán nhãn ưu tiên (Matt Pocock Skills - mattpocock/skills).
---

# Kỹ Năng: To-Tickets (Phân Rã Thành GitHub Issues/Tickets)

Kỹ năng này chuyển đổi tài liệu `SPEC.md` thành một danh sách các công việc cụ thể, có thể tạo thành GitHub Issues hoặc checklist công việc tuần tự.

---

## 1. Quy Chuẩn Phân Loại Nhãn (Labels)
- `ready-for-agent`: Yêu cầu đã viết rõ ràng, AI có thể bắt đầu làm ngay.
- `priority:P0`: Nền tảng bắt buộc làm trước tiên (Foundation, Models).
- `priority:P1`: Tính năng cốt lõi (Core features).
- `priority:P2`: Hoàn thiện, tài liệu và kiểm thử tích hợp.
- `completed-by-agent`: Đã được AI thực thi và vượt qua kiểm thử.

## 2. Cấu Trúc Một Ticket Chuẩn
- **Mục tiêu (Goal):** 1 câu mô tả ticket này mang lại gì.
- **Phạm vi file can thiệp (Touched Files):** Liệt kê các file dự kiến tạo mới hoặc chỉnh sửa.
- **Tiêu chuẩn nghiệm thu (Acceptance Criteria):** Danh sách checkbox `[ ]`.
- **Lệnh kiểm thử xác nhận:** Lệnh chạy test chứng minh ticket hoàn thành.
