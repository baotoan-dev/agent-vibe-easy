---
name: agentic-coding-mastery
description: Bộ quy chuẩn kỹ thuật lập trình tác nhân cấp cao (Agentic Coding Mastery) đúc kết từ Cursor, Windsurf Cascade, Claude Code và v0. Thực thi phẫu thuật mã nguồn, kiểm chứng terminal bằng Exit Code 0, và tự khắc phục lỗi.
---

# Kỹ Năng: Agentic Coding Mastery

Kỹ năng này chuẩn hóa phương pháp làm việc của AI thành một kỹ sư phần mềm cao cấp, bám sát các kiến trúc thành công nhất của thế hệ công cụ AI 2024-2026.

---

## 1. Quy Trình 3 Bước Thực Thi Mã Nguồn

### Bước 1: Khảo Sát Kiểu Dữ Liệu & Hợp Đồng (Type-First Discovery)
- Trước khi viết logic nghiệp vụ, đọc file định nghĩa kiểu (`types/`, `schema.ts`, `interface`).
- Định vị chính xác dữ liệu đầu vào và đầu ra mong muốn.

### Bước 2: Can Thiệp Phẫu Thuật (Surgical Modification)
- Áp dụng thay đổi tối thiểu, chỉ chạm vào đúng phạm vi dòng cần sửa.
- Không format lại code không liên quan, bảo toàn toàn bộ comment và phong cách của dự án hiện tại.

### Bước 3: Cổng Nghiệm Thu Terminal (Verification Gate)
- Luôn chạy lệnh kiểm tra cú pháp / biên dịch (`npm run build`, `tsc --noEmit`, hoặc test runner).
- Bắt buộc kiểm tra mã trả về `exit code == 0` trước khi kết luận hoàn tất công việc.

---

## 2. Vòng Tự Khắc Phục Lỗi (Self-Correction Loop)
- Khi gặp lỗi biên dịch hoặc ngoại lệ thời gian chạy:
  1. Đọc kỹ nội dung log `stderr`.
  2. Xác định tệp tin và số dòng gặp lỗi.
  3. Sửa chữa trực tiếp nguyên nhân gốc rễ (Root Cause).
  4. Chạy lại lệnh xác nhận cho đến khi sạch lỗi hoàn toàn.
