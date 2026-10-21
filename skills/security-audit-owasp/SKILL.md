---
name: security-audit-owasp
description: Rà soát và vá các lỗ hổng bảo mật ứng dụng web theo tiêu chuẩn OWASP Top 10 (SQL Injection, XSS, CSRF, Rò rỉ thông tin nhạy cảm, CORS misconfiguration, Rate Limiting, Xác thực an toàn).
---

# Kỹ Năng: OWASP Web Security Audit & Hardening

Kỹ năng này hoạt động như một chuyên gia bảo mật (Security Auditor) quét toàn bộ mã nguồn để phát hiện và ngăn chặn các lỗ hổng nguy hiểm trước khi đưa ứng dụng lên môi trường Production.

---

## 1. Danh Mục Rà Soát 7 Lỗ Hổng Nguy Hiểm Nhất

### 1. SQL Injection & Injection Flaws
- **Nguy cơ:** Kẻ tấn công chèn lệnh SQL qua input để đánh cắp hoặc xóa sạch database.
- **Biện pháp phòng vệ:**
  - Luôn sử dụng Parameterized Query / ORM (Prisma, Drizzle, Supabase Client).
  - Cấm tuyệt đối: `db.query("SELECT * FROM users WHERE id = '" + req.body.id + "'")`.

### 2. Cross-Site Scripting (XSS)
- **Nguy cơ:** Kẻ tấn công nhúng mã JavaScript độc hại vào trang web để đánh cắp Cookie/Session.
- **Biện pháp phòng vệ:**
  - Tuyệt đối hạn chế dùng `dangerouslySetInnerHTML` trong React hoặc `v-html` trong Vue.
  - Sử dụng thư viện làm sạch nội dung (`DOMPurify`) nếu bắt buộc phải render HTML người dùng nhập.

### 3. Phân Quyền Hỏng (Broken Access Control & IDOR)
- **Nguy cơ:** Người dùng đổi URL `orders/101` thành `orders/102` để xem trộm đơn hàng của người khác.
- **Biện pháp phòng vệ:**
  - Mọi câu query phải luôn kèm điều kiện kiểm tra chủ sở hữu: `WHERE id = :id AND user_id = :current_user_id`.
  - Trên Supabase: Bắt buộc bật RLS policy.

### 4. Rò Rỉ Thông Tin Nhạy Cảm (Sensitive Data Exposure)
- Không bao giờ trả về trường `password_hash`, `refresh_token` hoặc thông tin thẻ tín dụng trong API response.
- Cookie phiên làm việc bắt buộc có cờ: `HttpOnly`, `Secure`, `SameSite=Lax/Strict`.

### 5. CORS Sai Cấu Hình (CORS Misconfiguration)
- Không cấu hình `Access-Control-Allow-Origin: *` cho các endpoint nhạy cảm có kèm thông tin xác thực (`credentials: true`).
- Luôn chỉ định danh sách domain được phép truy cập rõ ràng.

### 6. Thiếu Giới Hạn Tần Suất Gọi (Rate Limiting)
- Các endpoint đăng nhập, gửi OTP, reset password bắt buộc phải gắn Rate Limiting (ví dụ tối đa 5 lần thử trong 1 phút) để chống tấn công brute-force.

---

## 2. Hướng Dẫn Tối Ưu Cho Từng Dòng Model

### 🌟 Dành cho mọi AI Model / IDE
- **Prompt mẫu:**
  ```text
  Theo skill `security-audit-owasp`:
  Hãy quét toàn bộ mã nguồn của [File / Module này]. Phân tích xem có lỗ hổng bảo mật nào theo chuẩn OWASP Top 10 không (XSS, Injection, Broken Auth, Rò rỉ dữ liệu). Nếu có, hãy chỉ rõ dòng bị lỗi và viết mã vá an toàn ngay.
  ```
