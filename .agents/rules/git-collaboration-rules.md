# Quy Tắc Quản Lý Mã Nguồn & Git (Git Collaboration Rules)

Quy tắc này chuẩn hóa cách lưu trữ phiên bản, viết thông điệp commit và phối hợp đồng đội.

---

## 1. Chuẩn Hóa Thông Điệp Commit (Conventional Commits)
Mọi commit bắt buộc tuân theo định dạng:
```
<type>(<scope>): <mô tả ngắn gọn bằng mệnh lệnh>
```
- `feat:` Thêm tính năng mới cho người dùng.
- `fix:` Sửa lỗi chương trình.
- `docs:` Cập nhật tài liệu, README, hướng dẫn.
- `style:` Thay đổi định dạng code (khoảng trắng, dấu chấm phẩy, không đổi logic).
- `refactor:` Tái cấu trúc mã nguồn (không thêm tính năng, không sửa bug).
- `test:` Bổ sung hoặc sửa đổi các bài kiểm thử tự động.
- `chore:` Cập nhật cấu hình build, dependencies, tooling.

*Ví dụ:* `feat(auth): add google oauth sign-in via supabase`

---

## 2. Tính Nguyên Tử Của Commit (Atomic Commits)
- Mỗi commit chỉ giải quyết **một vấn đề duy nhất**.
- Không gộp 5 tính năng khác nhau và 3 bản sửa lỗi vào trong một commit khổng lồ.
- Nhờ commit nhỏ, nếu có lỗi xảy ra trong tương lai, team có thể dùng `git revert` hoặc `git bisect` để cô lập lỗi dễ dàng.

---

## 3. Bảo Vệ Nhánh Chính (Branch Protection & Safety)
- Không commit bừa bãi mã thử nghiệm trực tiếp lên nhánh `main`.
- Trước khi tạo Pull Request, luôn kéo mã mới nhất từ `main` về để giải quyết xung đột cục bộ.
- Chạy kiểm tra định dạng và build thành công trước khi đẩy code lên remote repository.
