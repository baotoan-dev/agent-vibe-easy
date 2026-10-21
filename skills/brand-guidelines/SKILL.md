---
name: brand-guidelines
description: Xây dựng và duy trì hệ thống nhận diện thương hiệu nhất quán (Brand Identity System) từ Logo, Typography, Bảng màu đến giọng văn thương hiệu (Brand Voice).
---

# Kỹ Năng: Brand Guidelines & Design Tokens System

Kỹ năng này bắt nguồn từ `anthropics/skills/brand-guidelines`, giúp toàn bộ các trang web, app, email và bài viết trong cùng một dự án tuân thủ chặt chẽ một bộ nhận diện thương hiệu duy nhất.

---

## 1. 4 Trụ Cột Nhận Diện Thương Hiệu

### Trụ Cột 1: Hệ Thống Biến Thiết Kế (Design Tokens)
Định nghĩa tập trung các biến CSS hoặc Tailwind Config để tái sử dụng:
```css
:root {
  /* Brand Colors */
  --brand-primary: #4f46e5;
  --brand-primary-hover: #4338ca;
  --brand-secondary: #06b6d4;
  --brand-neutral-bg: #090d16;
  --brand-neutral-card: #131927;
  
  /* Typography Scale */
  --font-heading: 'Plus Jakarta Sans', sans-serif;
  --font-body: 'Inter', sans-serif;
  
  /* Elevation & Radius */
  --radius-button: 10px;
  --radius-card: 18px;
}
```

### Trụ Cột 2: Logo & Quy Chuẩn Không Gian An Toàn (Clear Space)
- Quy định khoảng cách an toàn xung quanh Logo (tối thiểu bằng chiều cao chữ 'X' của logo).
- Quy định độ tương phản tối thiểu của Logo trên các nền sáng/tối.

### Trụ Cột 3: Giọng Văn Thương Hiệu (Brand Voice & Tone)
- Xác định phong cách giao tiếp của sản phẩm: *Chuyên nghiệp (Professional), Thân thiện (Friendly), hay Đột phá & Hài hước (Bold/Playful)*.
- Quy chuẩn cách viết thông báo lỗi (Error messages) và thông báo thành công (Success toasts).

---

## 2. Hướng Dẫn Tối Ưu Cho Từng Dòng Model

### 🌟 Dành cho mọi AI Model / IDE
- **Prompt mẫu:**
  ```text
  Áp dụng skill `brand-guidelines`:
  Tôi đang xây dựng một startup SaaS về [Lĩnh vực]. Hãy giúp tôi soạn thảo bộ Design Tokens đầy đủ bằng CSS variables (màu sắc, typography, border-radius) và quy chuẩn giọng văn thương hiệu.
  ```
