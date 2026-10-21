---
name: design-to-code
description: Chuyển đổi bản vẽ thiết kế, ảnh chụp màn hình UI, hoặc mockup Figma thành code Frontend (HTML/CSS, Vue, React) chuẩn xác, responsive và thẩm mỹ cao.
---

# Kỹ Năng: Design-to-Code (Chuyển Thiết Kế Sang Mã Nguồn)

Kỹ năng này chuẩn hóa quy trình nhận một hình ảnh giao diện (screenshot, mockup Figma, bản phác thảo) và chuyển đổi thành mã nguồn frontend thực tế.

---

## 1. Quy Trình 4 Bước Chuẩn (Standard Operating Procedure)

Mỗi khi nhận hình ảnh hoặc mô tả giao diện, AI tuân thủ nghiêm ngặt 4 bước:

### Bước 1: Bóc tách Thị giác (Visual Breakdown)
Trước khi viết bất kỳ dòng code nào, phân tích và trích xuất:
- **Bảng màu (Color Palette):** Màu nền (Background), màu chủ đạo (Primary), màu nhấn (Accent), màu chữ (Text hierarchy).
- **Typography:** Kiểu font (Heading sans/serif, Body), trọng lượng font (Bold/Regular), phân cấp kích cỡ (h1, h2, subtitle, body).
- **Hệ thống khoảng cách & Lưới (Grid & Spacing):** Xác định layout chính (Sidebar + Main, 3-column, Header + Hero, Card Grid).
- **Hiệu ứng thị giác:** Glassmorphism, bóng đổ (box-shadow), viền mờ (border glow), bo góc (border-radius).

### Bước 2: Xây dựng Cấu trúc Semantic HTML
- Sử dụng các thẻ ngữ nghĩa HTML5: `<header>`, `<nav>`, `<main>`, `<section>`, `<article>`, `<aside>`, `<footer>`.
- Đảm bảo tính tiếp cận (Accessibility): Tất cả ảnh có thuộc tính `alt`, nút bấm có `aria-label` và định danh `id` rõ ràng.

### Bước 3: Áp dụng CSS Layout Hiện đại
- **Bố cục chính:** Ưu tiên CSS Grid cho tổng thể trang, Flexbox cho các hàng/cột thành phần.
- **Responsive:** Bắt buộc có Media Query (`@media (max-width: 768px)`) để chạy mượt cả trên Mobile và Desktop.
- **Trạng thái tương tác:** Luôn bổ sung `:hover`, `:active`, `:focus` với hiệu ứng chuyển động mượt (`transition: all 0.2s ease`).

### Bước 4: Tự Kiểm thử & Hoàn thiện
- Không dùng ảnh placeholder mờ nhạt hay nội dung giả "Lorem Ipsum" vô nghĩa. Thay bằng nội dung thực tế sát với ngữ cảnh.
- Đảm bảo độ tương phản màu sắc đạt chuẩn đọc dễ chịu.

---

## 2. Hướng Dẫn Tối Ưu Cho Từng Dòng Mô Hình (Model Adaptations)

Tùy vào model bạn đang dùng, hãy áp dụng chiến thuật sau:

### 🌟 Dành cho các Mô hình Đa Phương Thức / Vision (Gemini 2.0 / Flash / GPT-4o)
- **Thế mạnh:** Khả năng nhận diện chi tiết hình ảnh, tọa độ pixel và màu sắc cực kỳ nhạy.
- **Cách ra lệnh (Prompting Strategy):**
  ```text
  Hãy đóng vai trò chuyên gia Frontend Design-to-Code theo skill `design-to-code`:
  1. Phân tích ảnh thiết kế đính kèm: trích xuất mã màu HEX chính, font size và cấu trúc layout.
  2. Viết mã HTML/CSS nguyên mẫu khôi phục chính xác 1:1 theo ảnh.
  3. Đảm bảo hỗ trợ Responsive trên Mobile (dưới 768px).
  ```

### 🧠 Dành cho các Mô hình Suy Luận Sâu (Claude 3.7 / 3.5 Sonnet, DeepSeek)
- **Thế mạnh:** Viết code cực sạch, bóc tách Component Vue/React hoàn hảo, tư duy logic state tốt.
- **Cách ra lệnh (Prompting Strategy):**
  ```text
  Theo skill `design-to-code`, hãy chuyển đổi giao diện này thành các Component React/Vue tái sử dụng được:
  - Tách thành các sub-components độc lập (Navbar, HeroCard, FeatureItem).
  - Khai báo rõ ràng Props, Types và quản lý State tương tác.
  - Sử dụng TailwindCSS hoặc CSS Variables đồng bộ.
  ```

### ⚡ Dành cho AI IDE Agent (Cursor, Trae, Antigravity, Windsurf)
- **Thế mạnh:** Có quyền đọc/ghi file và chạy terminal trực tiếp.
- **Cách ra lệnh (Prompting Strategy):**
  ```text
  Áp dụng skill `design-to-code`:
  Hãy tạo file `index.html` trong thư mục hiện tại theo ảnh thiết kế này, sau đó mở preview lên cho tôi xem ngay.
  ```
