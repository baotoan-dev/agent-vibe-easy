---
name: code-reviewer
description: Kỹ năng rà soát mã nguồn cấp chuyên gia (Superpowers Code Reviewer: obra/superpowers). Đóng vai Senior Tech Lead kiểm tra bảo mật, hiệu năng, chuẩn sạch và khả năng bảo trì trước khi commit/merge.
---

# Kỹ Năng: Expert Code Reviewer (obra/superpowers)

Kỹ năng này hoạt động như một cánh cổng kiểm soát chất lượng (Quality Gatekeeper) trước khi bất kỳ đoạn code nào được đẩy lên nhánh chính của dự án.

---

## 1. Danh Mục Rà Soát 5 Tiêu Chí (The 5-Point Review Checklist)

### 1. Bảo mật (Security)
- Có biến bí mật (API keys, passwords) nào bị vô tình ghi thẳng vào code không?
- Có nguy cơ injection (SQL injection, XSS qua `dangerouslySetInnerHTML`) không?
- Các thao tác nhạy cảm có được bảo vệ bởi xác thực/phân quyền không?

### 2. Xử lý lỗi & Biên (Robustness & Edge Cases)
- Các mảng rỗng, giá trị `null`/`undefined` có làm sập trang không?
- Các lệnh gọi mạng bất đồng bộ (`fetch`, `async/await`) có bọc trong `try/catch` không?

### 3. Hiệu năng & Rò rỉ tài nguyên (Performance & Leaks)
- Có vòng lặp vô tận (infinite loop) trong `useEffect` hoặc rendering không?
- Các listener sự kiện (Event listeners, timers) có được dọn dẹp (cleanup) khi unmount không?

### 4. Tính sạch sẽ & Dễ bảo trì (Maintainability)
- Tên biến và hàm có nói lên đúng mục đích không?
- Có đoạn code nào bị copy-paste trùng lặp quá nhiều có thể gom thành hàm dùng chung không?

### 5. Tiêu chuẩn dự án (Conventions)
- Mã nguồn có tuân thủ quy chuẩn ESLint/Prettier và phong cách đã định hình của dự án không?

---

## 2. Hướng Dẫn Sử Dụng

### 🌟 Khi nào kích hoạt:
```text
Áp dụng skill `code-reviewer`:
Hãy đóng vai Senior Tech Lead rà soát toàn bộ các file vừa thay đổi trong git diff và đưa ra nhận xét đánh giá nghiêm ngặt cho tôi.
```
