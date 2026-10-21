---
name: frontend-design-mastery
description: Kỹ năng thiết kế giao diện chống lối mòn AI (AI Slop) chính thức từ Anthropic (anthropics/skills/frontend-design), tập trung vào thẩm mỹ độc đáo, tương tác sống động và chất lượng code cấp sản xuất.
---

# Kỹ Năng: Frontend Design Mastery (Anti-AI-Slop by Anthropic)

Kỹ năng này bắt nguồn từ kho lưu trữ `anthropics/skills/frontend-design`, chuyên trị căn bệnh "giao diện trông như do máy tự tạo": phông chữ Inter/Roboto nhàm chán, nền gradient tím sến sẩm, thẻ bo tròn giống hệt nhau.

---

## 1. Các Quy Tắc Thiết Kế Đột Phá

### ❌ NHỮNG ĐIỀU TUYỆT ĐỐI NÉ TRÁNH (The "AI Slop" Checklist)
- **Không dùng font mặc định lặp đi lặp lại:** Tránh lạm dụng thuần `Inter`, `Roboto`, `Arial`.
- **Không dùng gradient tím-hồng generic:** Tránh các dải màu tím neon vô hồn không có chủ đích thương hiệu.
- **Không dùng bố cục lưới đối xứng tẻ nhạt:** Tránh 3 cái thẻ kích thước y hệt nhau xếp ngang từ trên xuống dưới.
- **Không dùng icon vô nghĩa:** Tránh gắn icon vào mọi ngóc ngách khi không có chức năng điều hướng.

### ✅ NHỮNG NGUYÊN TẮC THIẾT KẾ ĐỘC BẢN
1. **Lựa chọn hướng nghệ thuật rõ ràng (Aesthetic Intent):**
   - Chọn phong cách cụ thể ngay từ đầu (ví dụ: Editorial Magazine, Swiss High-Typography, Retro Sci-Fi, Bauhaus).
2. **Typography có cá tính:**
   - Kết hợp font tiêu đề có độ nhận diện cao (ví dụ: `Syne`, `Space Grotesk`, `Clash Display`, `Plus Jakarta Sans`) với font đọc nội dung dễ chịu.
3. **Micro-Interactions tinh tế:**
   - Hiệu ứng hover có độ trễ nhẹ (`transition: transform 0.25s cubic-bezier(0.16, 1, 0.3, 1)`).
   - Thêm subtle border highlight khi rê chuột vào card.
4. **Khoảng cách thị giác (Generous Whitespace):**
   - Đảm bảo các khối nội dung có "không gian thở", padding và margin rộng rãi (tối thiểu 24px - 48px cho các section).

---

## 2. Hướng Dẫn Tối Ưu Cho Từng Dòng Model

### 🌟 Dành cho Claude / Antigravity / Cursor
- **Prompt mẫu:**
  ```text
  Áp dụng skill `frontend-design-mastery`:
  Hãy thiết kế lại giao diện này để trông như một sản phẩm được tạo bởi Senior Product Designer của Apple/Stripe, hoàn toàn không có cảm giác do AI làm.
  ```
