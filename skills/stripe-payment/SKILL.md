---
name: stripe-payment
description: Tích hợp cổng thanh toán trực tuyến Stripe Checkout, xử lý Webhook an toàn, quản lý gói dịch vụ đăng ký (Subscription) và cấu hình Customer Portal.
---

# Kỹ Năng: Stripe Payment Integration

Kỹ năng này chuẩn hóa quy trình tích hợp hệ thống thanh toán quốc tế và đăng ký gói dịch vụ SaaS qua Stripe.

---

## 1. Quy Trình 4 Bước Chuẩn (SOP)

### Bước 1: Khởi Tạo Stripe Checkout Session
- Tạo API endpoint backend (ví dụ `/api/checkout-session`).
- Nhận diện người dùng đang đăng nhập qua User ID hoặc Customer ID.
- Tạo session với các tham số bắt buộc:
  - `mode`: `'payment'` (thanh toán 1 lần) hoặc `'subscription'` (định kỳ hàng tháng/năm).
  - `payment_method_types`: `['card']`.
  - `line_items`: chứa Price ID tạo từ Stripe Dashboard.
  - `success_url`: URL chuyển hướng sau khi thanh toán thành công (kèm session_id để hiển thị chúc mừng).
  - `cancel_url`: URL khi người dùng hủy bỏ giao dịch.
  - `metadata`: Chứa `user_id` để webhook biết cộng quyền lợi cho tài khoản nào.

### Bước 2: Xử Lý Webhook Bắt Buộc Xác Thực Chữ Ký (Security First)
- Endpoint Webhook (`/api/webhooks/stripe`) **PHẢI** đọc raw body (dạng Buffer/chuỗi thô) để kiểm tra chữ ký số:
  ```javascript
  const event = stripe.webhooks.constructEvent(
    rawBody,
    sig,
    process.env.STRIPE_WEBHOOK_SECRET
  );
  ```
- **Không bao giờ tin tưởng Client:** Chỉ cấp phát quyền lợi (nâng gói VIP, cộng credits) khi Webhook nhận được các sự kiện xác nhận:
  - `checkout.session.completed`
  - `invoice.payment_succeeded`
  - `customer.subscription.deleted` (hạ gói khi hết hạn/hủy)

### Bước 3: Đồng Bộ Trạng Thái Vào Database
- Bảng `subscriptions` hoặc trường `plan_tier` trong cơ sở dữ liệu:
  - `stripe_customer_id`: ID khách hàng trên Stripe.
  - `stripe_subscription_id`: ID gói đăng ký.
  - `status`: `'active'`, `'canceled'`, `'past_due'`.
  - `current_period_end`: Ngày hết hạn của kỳ thanh toán hiện tại.

### Bước 4: Tích Hợp Customer Portal
- Cung cấp nút "Quản lý gói thanh toán / Đổi thẻ / Hủy gói" bằng cách gọi Stripe Billing Portal:
  ```javascript
  const portalSession = await stripe.billingPortal.sessions.create({
    customer: customerId,
    return_url: returnUrl,
  });
  ```

---

## 2. Hướng Dẫn Tối Ưu Cho Từng Dòng Model

### 🌟 Dành cho Gemini 2.0 / GPT-4o
- **Yêu cầu thế mạnh:** Sinh nhanh code route xử lý Checkout Session và hướng dẫn cấu hình biến môi trường (`STRIPE_SECRET_KEY`, `STRIPE_WEBHOOK_SECRET`).
- **Prompt mẫu:**
  ```text
  Theo skill `stripe-payment`:
  Viết cho tôi endpoint tạo Checkout Session cho gói đăng ký Pro ($19/tháng). Nhớ kèm metadata user_id và xử lý redirect URL.
  ```

### 🧠 Dành cho Claude 3.7 / 3.5 Sonnet
- **Yêu cầu thế mạnh:** Viết trọn vẹn handler Webhook an toàn với raw body parsing, phân nhánh các event Stripe và cập nhật database.
- **Prompt mẫu:**
  ```text
  Theo skill `stripe-payment`:
  Viết trọn vẹn route Webhook cho Next.js/Express:
  - Kiểm tra chữ ký constructEvent với STRIPE_WEBHOOK_SECRET.
  - Xử lý checkout.session.completed và invoice.payment_succeeded.
  - Cập nhật quyền hạn người dùng vào database Supabase.
  ```
