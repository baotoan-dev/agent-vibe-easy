# QUY TẮC BẢO MẬT API (API SECURITY RULES)

## 1. Xác Thực & Phân Quyền (Auth & Authorization)
- Tất cả các endpoint riêng tư bắt buộc phải kiểm tra Bearer JWT token qua Middleware.
- Kiểm tra quyền sở hữu tài nguyên (Resource-Level Auth): Người dùng A không thể đọc/sửa dữ liệu của người dùng B chỉ bằng cách đoán ID trên URL (ngăn ngừa lỗi IDOR).

## 2. Kiểm Soát Đầu Vào (Input Sanitization)
- Mọi dữ liệu từ Client (`req.body`, `req.query`, `req.params`) phải được kiểm thực (validate) qua thư viện schema mạnh (ví dụ: Zod, Joi, Pydantic) trước khi đưa vào database hoặc xử lý nghiệp vụ.
- Tuyệt đối nghiêm cấm việc nối chuỗi trực tiếp vào câu lệnh SQL để phòng chống triệt để SQL Injection.

## 3. Giới Hạn Tần Suất & Kích Thước (Rate Limiting & Body Limits)
- Mọi API public (đặc biệt là Auth, AI generation, Upload) phải có Rate Limiting theo địa chỉ IP hoặc User ID.
- Giới hạn payload size (`express.json({ limit: '1mb' })`) để phòng chống tấn công từ chối dịch vụ (DoS).

## 4. Xử Lý Lỗi An Toàn (Safe Error Responses)
- Không bao giờ trả về nguyên vẹn Stack Trace hoặc thông tin nội bộ của CSDL cho Client trên môi trường Production.
- Luôn trả về mã lỗi và thông báo thân thiện với người dùng: `{ "error": "NOT_FOUND", "message": "Tài nguyên không tồn tại" }`.
