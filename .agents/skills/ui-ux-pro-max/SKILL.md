---
name: ui-ux-pro-max
description: Bộ quy chuẩn thiết kế UI/UX toàn diện nhất (UI/UX Pro Max) gồm 67 phong cách (Glassmorphism, Bento Grid, Neumorphism, Brutalism), 96 bảng màu theo ngành và 57 tổ hợp font chữ chuyên nghiệp.
---

# Kỹ Năng: UI/UX Pro Max (Thiết Kế Đỉnh Cao)

Kỹ năng này giải quyết vấn đề giao diện do AI tạo ra bị nhàm chán, generic hoặc màu mè thiếu chuyên nghiệp.

---

## 1. Thư Viện Phong Cách & Bảng Màu

### A. 4 Phong Cách Thiết Kế Xu Hướng
1. **Glassmorphism (Kính mờ cao cấp):**
   - Nền: `background: rgba(255, 255, 255, 0.05)` hoặc tối `rgba(16, 20, 38, 0.6)`.
   - Lọc mờ: `backdrop-filter: blur(16px); -webkit-backdrop-filter: blur(16px);`.
   - Viền: `border: 1px solid rgba(255, 255, 255, 0.12)`.
   - Bóng đổ: `box-shadow: 0 8px 32px 0 rgba(0, 0, 0, 0.37)`.
2. **Bento Grid (Lưới Nhật Bản - Phong cách Apple):**
   - Bố cục lưới thẻ không đều (2x2, 1x2, 2x1) phân cấp thị giác rõ ràng.
   - Bo tròn lớn: `border-radius: 24px`.
   - Nền thẻ màu xám nhạt trung tính `#f5f5f7` (light) hoặc `#1c1c1e` (dark).
3. **Neo-Brutalism (Táo bạo & Cá tính):**
   - Viền đen đậm: `border: 3px solid #000`.
   - Đổ bóng cứng, không mờ: `box-shadow: 5px 5px 0px #000`.
   - Màu nhấn tương phản cao: Vàng chanh `#fff017`, Cam neon `#ff5e00`, Xanh mint `#00ff9f`.
4. **Minimalist Cyber / Dark Luxury:**
   - Nền đen sâu: `#0a0a0c`, `#121316`.
   - Màu nhấn kim loại hoặc neon mảnh: Vàng đồng `#d4af37`, Cyan `#00f2fe`.

### B. Bảng Màu Theo Ngành (Color Palettes)
- **SaaS B2B & Công nghệ:** Primary `#2563eb` (Royal Blue), Accent `#06b6d4` (Cyan), Neutral `#0f172a`.
- **Tài chính & FinTech:** Primary `#059669` (Emerald Green), Accent `#d97706` (Amber), Neutral `#111827`.
- **Sức khỏe & Y tế:** Primary `#0284c7` (Sky Blue), Accent `#14b8a6` (Teal), Background `#f8fafc`.
- **Thương mại điện tử & Tiêu dùng:** Primary `#e11d48` (Rose/Crimson), Accent `#f59e0b` (Warm Amber).

---

## 2. Hướng Dẫn Tối Ưu Cho Từng Dòng Model

### 🌟 Dành cho mọi AI Model / IDE
- **Prompt mẫu:**
  ```text
  Áp dụng skill `ui-ux-pro-max`:
  Hãy thiết kế trang [Tên trang] theo phong cách Bento Grid với bảng màu SaaS B2B hiện đại. Sử dụng font Outfit cho tiêu đề và Inter cho nội dung.
  ```
