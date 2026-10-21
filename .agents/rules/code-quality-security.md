# Quy Tắc Bảo Mật & Chất Lượng Mã Nguồn (Code Quality & Security Rules)

Quy tắc này bắt buộc tuân thủ nghiêm ngặt để đảm bảo an toàn dữ liệu và tính ổn định hệ thống.

---

## 1. Không Bao Giờ Lộ Bí Mật (Zero Secret Leakage)
- **Tuyệt đối không hardcode bí mật:** Không nhúng API Key, JWT Secret, Token, Password vào file code nguồn.
- Luôn sử dụng biến môi trường thông qua file `.env` hoặc cơ chế bí mật an toàn.
- File `.gitignore` bắt buộc phải chặn `.env`, `.env.local`, `credentials.json`.
- Luôn cung cấp file `.env.example` với các giá trị mẫu để người khác biết cách cấu hình.

---

## 2. Bảo Mật Cơ Sở Dữ Liệu (Database Security)
- **Bắt buộc bật Row Level Security (RLS) trên Supabase/PostgreSQL:**
  - Không bao giờ để bảng ở trạng thái RLS tắt (`DISABLE ROW LEVEL SECURITY`).
  - Mọi thao tác SELECT, INSERT, UPDATE, DELETE phải có chính sách Policy rõ ràng gắn với `auth.uid()`.
- **Ngăn chặn SQL Injection:** Luôn sử dụng câu lệnh tham số hóa (Parameterized queries) hoặc ORM, cấm nối chuỗi câu lệnh SQL thô (`raw string concatenation`).
- **Phân quyền Khóa API:** Phía Frontend chỉ được dùng `ANON_KEY`, tuyệt đối không đưa `SERVICE_ROLE_KEY` xuống Client.

---

## 3. Bảo Mật Thanh Toán & Webhook (Payment Security)
- Endpoint nhận Webhook từ Stripe/cổng thanh toán bắt buộc phải đọc raw body dạng buffer và xác thực chữ ký cryptographic (`stripe.webhooks.constructEvent`).
- Không bao giờ tin tưởng dữ liệu trạng thái thành công gửi từ phía trình duyệt (Client-side redirect). Chỉ cấp quyền tài khoản khi Webhook phía máy chủ xác nhận.

---

## 4. Bảo Tồn Code Đang Hoạt Động (Preservation of Code Integrity)
- Giữ nguyên các comment giải thích nghiệp vụ, docstrings và cấu trúc code hiện có nếu chúng không liên quan đến phạm vi thay đổi.
- Không tự ý xóa thư viện hoặc định dạng lại toàn bộ dự án làm bẩn lịch sử Git diff.
