---
name: implement
description: "Thực thi mã phẫu thuật (Surgical Code Implementation) từ GitHub Ticket / SPEC, viết test kiểm chứng và tạo commit chuẩn xác (Matt Pocock Skills)."
---

# Kỹ Năng Thực Thi Mã Từ Ticket (Matt Pocock Implement Skill)

Kỹ năng này là mắt xích thứ tư trong chuỗi quy trình chuẩn của Matt Pocock (`grill-with-docs` -> `to-spec` -> `to-tickets` -> `implement` -> `code-review`), biến từng thẻ nhiệm vụ độc lập thành mã nguồn hoàn chỉnh với đầy đủ bài kiểm thử.

---

## 1. Nguyên Tắc Thực Thi Phẫu Thuật (Surgical Implementation)

1. **Một Ticket Tại Một Thời Điểm**:
   - Không làm gộp nhiều thẻ công việc vào một phiên.
   - Tập trung duy nhất vào phạm vi (Scope) được định nghĩa trong thẻ.
2. **Đối Chiếu SPEC & Quyết Định Kiến Trúc**:
   - Trước khi gõ dòng code đầu tiên, đọc lại tài liệu `SPEC.md` và `ADR.md` liên quan để đảm bảo tuân thủ thiết kế ban đầu.
3. **Kỷ Luật Kiểm Thử Trước (TDD Guard)**:
   - Viết các test case mô phỏng hành vi mong muốn trước khi viết logic nghiệp vụ.
   - Chạy test để xác nhận trạng thái thất bại (Red), sau đó viết code để pass test (Green).
4. **Minimal Diff**:
   - Không format lại các tệp không liên quan. Giữ diff gọn gàng để bước `code-review` diễn ra nhanh chóng.

---

## 2. Quy Trình 5 Bước Chuẩn Khi Gọi `/implement [ticket-id]`

```
+--------------------+
| 1. Đọc Ticket      | -> Xác định yêu cầu, acceptance criteria và file cần sửa
+--------------------+
          │
          ▼
+--------------------+
| 2. Kiểm tra Test   | -> Viết unit / integration test cho tính năng mới
+--------------------+
          │
          ▼
+--------------------+
| 3. Viết Mã Nguồn   | -> Áp dụng minimal patch, không phá vỡ logic cũ
+--------------------+
          │
          ▼
+--------------------+
| 4. Chạy Kiểm Thử   | -> npm test / npm run build đảm bảo 100% pass
+--------------------+
          │
          ▼
+--------------------+
| 5. Bàn Giao Review | -> Chuyển giao sang bước code-review
+--------------------+
```
