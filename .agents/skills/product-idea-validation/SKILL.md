---
name: product-idea-validation
description: Thẩm định ý tưởng sản phẩm và nghiên cứu nhu cầu người dùng theo phương pháp The Mom Test, Jobs to Be Done (JTBD) và mô hình Double Diamond.
---

# Kỹ Năng: Product Idea Validation & User Research

Kỹ năng này giúp biến một ý tưởng mơ hồ thành một bài toán sản phẩm có thật, đã qua kiểm chứng trước khi tốn thời gian viết code.

---

## 1. Quy Trình 3 Bước Chuẩn (SOP)

### Bước 1: Áp Dụng The Mom Test (Tránh Lời Khen Ảo)
- **Nguyên tắc:** Không bao giờ hỏi: *"Bạn có thích ý tưởng app này không?"* (họ sẽ luôn trả lời "Có" để lịch sự).
- **3 câu hỏi vàng cần hỏi:**
  1. *"Lần gần nhất bạn gặp vấn đề này là khi nào? Bạn đã giải quyết nó như thế nào?"* (Hỏi về hành vi trong quá khứ).
  2. *"Bạn đã chi bao nhiêu tiền hoặc mất bao nhiêu giờ cho việc đó?"* (Đo lường mức độ đau đớn thực sự).
  3. *"Những giải pháp hiện tại bạn đang dùng có điểm gì khó chịu nhất?"*

### Bước 2: Định Khung Jobs To Be Done (JTBD)
Xác định nhiệm vụ cốt lõi mà người dùng "thuê" sản phẩm này:
- Định dạng: *"Khi tôi [Bối cảnh cụ thể], tôi muốn [Hành động mong đợi], để tôi có thể [Mục tiêu/Cảm xúc đạt được]."*
- Phân biệt giữa **Nhu cầu bề nổi** (Feature request) và **Động lực thực sự** (Underlying motivation).

### Bước 3: Thu Hẹp Phạm Vi với Double Diamond (Kim Cương Kép)
1. **Khám phá (Discover):** Liệt kê toàn bộ các khía cạnh của vấn đề.
2. **Xác định (Define):** Chọn đúng 1 nỗi đau nhức nhối nhất của một nhóm người dùng cụ thể.
3. **Phát triển (Develop):** Đề xuất giải pháp khả thi nhỏ nhất.
4. **Bàn giao (Deliver):** Tạo Landing Page hoặc Prototype clickable để đo tỷ lệ chuyển đổi (Click sign-up/pre-order).

---

## 2. Hướng Dẫn Tối Ưu Cho Từng Dòng Model

### 🌟 Dành cho Gemini 2.0 / GPT-4o / Claude 3.7
- **Prompt mẫu:**
  ```text
  Theo skill `product-idea-validation`:
  Tôi có ý tưởng: [Mô tả ý tưởng của bạn].
  Hãy giúp tôi:
  1. Phân tích điểm yếu và rủi ro lớn nhất của ý tưởng này theo The Mom Test.
  2. Viết bản Jobs to Be Done (JTBD) cho 2 tệp khách hàng tiềm năng.
  3. Đề xuất kịch bản 5 câu hỏi phỏng vấn thực tế để tôi đi hỏi khách hàng tiềm năng mà không bị lời khen xã giao đánh lừa.
  ```
