---
name: long-running-tasks
description: "Quản lý và thực thi các tác vụ AI kéo dài hàng giờ hoặc qua đêm (Long-Running Tasks), cơ chế lưu điểm phục hồi (Checkpointing), tự động nối tiếp khi bị ngắt quãng."
---

# Kỹ Năng Điều Phối Tác Vụ Kéo Dài (Long-Running Tasks & Autonomous Goals)

Kỹ năng này hướng dẫn AI agent duy trì sự tập trung, ghi nhận tiến độ liên tục vào đĩa cứng và khôi phục trạng thái hoàn hảo khi thực hiện các dự án quy mô lớn chạy qua đêm (`/goal`).

---

## 1. Vấn Đề Của Các Tác Vụ Kéo Dài & Cửa Sổ Ngữ Cảnh

Khi một tác vụ chạy qua hàng chục bước:
- Cửa sổ ngữ cảnh (Context Window) bị đầy và buộc phải nén (Compaction).
- Nguy cơ mất thông tin chi tiết về các bước đã làm và việc cần làm tiếp theo.
- Rủi ro mất kết nối mạng hoặc tiến trình nền bị hủy đột ngột.

---

## 2. Chiến Lược Điểm Phục Hồi (Checkpointing Pattern)

Mỗi khi hoàn thành một mốc công việc nhỏ (milestone), Agent bắt buộc phải ghi trạng thái xuống tệp markdown cục bộ (ví dụ: `.agents/tasks/progress.md` hoặc `PROGRESS.md`):

```markdown
# TIẾN TRÌNH THỰC HIỆN TÁC VỤ DÀI HẠN

## 1. Trạng Thái Hiện Tại
- **Thời gian cập nhật**: 2026-10-21 09:30:00
- **Giai đoạn**: Bước 4/10
- **Trạng thái**: Đang xử lý

## 2. Các Bước Đã Hoàn Thành
- [x] Bước 1: Khởi tạo khung dự án và cài đặt dependencies.
- [x] Bước 2: Thiết kế lược đồ CSDL PostgreSQL và sinh migration script.
- [x] Bước 3: Viết 12 test cases cho API Authentication (TDD).

## 3. Bước Đang Thực Hiện
- [ ] Bước 4: Viết mã nguồn cho auth service để pass 12 test cases trên.

## 4. Các Vấn Đề & Rào Cản Đã Ghi Nhận
- Gặp lỗi tương thích phiên bản thư viện JWT, đã giải quyết bằng cách hạ cấp xuống v9.0.2.
```

---

## 3. Quy Trình Khôi Phục Khi Khởi Động Lại (Cold Start Resumption)

Khi Agent được đánh thức sau khi bị ngắt:
1. **Đọc tệp Checkpoint đầu tiên**: Luôn đọc `progress.md` trước khi làm bất kỳ hành động nào.
2. **Kiểm tra tính nhất quán**: Chạy lệnh kiểm thử hoặc `git status` để xác minh những gì đã ghi trong log khớp với tình trạng file thực tế trên đĩa.
3. **Tiếp tục từ bước dang dở**: Không lặp lại các bước đã hoàn thành `[x]`, tiến hành ngay vào mục `[ ]` tiếp theo.
