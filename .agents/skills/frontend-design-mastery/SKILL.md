---
name: frontend-design-mastery
description: Kỹ năng thiết kế giao diện chống lối mòn AI (AI Slop) chính thức từ Anthropic (anthropics/skills/frontend-design), tập trung vào thẩm mỹ độc đáo, tương tác sống động và chất lượng code cấp sản xuất.
---

# Kỹ Năng: Frontend Design Mastery (Anti-AI-Slop by Anthropic)

Kỹ năng này bắt nguồn từ kho lưu trữ `anthropics/skills/frontend-design`, kết hợp với quy chuẩn thực chiến từ bài viết **"Tránh AI Slop: 7 kỹ thuật prompt để giao diện không còn giống do AI làm"** (`ui-ux-pro-max-skill.com`).

Mục tiêu tối thượng: **Chữa trị triệt để căn bệnh "giao diện trông như do máy tự tạo"** — màu sắc một kiểu mờ nhạt, phông chữ Inter/Roboto nhàm chán, nền gradient tím sến sẩm, thẻ bo tròn giống hệt nhau.

---

## 🚫 1. Danh Sách Cấm Tuyệt Đối (Negative Blacklist)

Khi bắt đầu thiết kế, AI **phải tự động áp dụng danh sách cấm** sau vào logic CSS & HTML:
1. ❌ **Cấm font nhận diện chung chung:** Tuyệt đối không dùng `Inter`, `Roboto`, `Open Sans`, `Arial` làm font tiêu đề chính.
2. ❌ **Cấm gradient tím sang chàm/hồng:** Không dùng dải màu tím neon vô hồn không có chủ đích thương hiệu.
3. ❌ **Cấm bố cục 3 thẻ ngang bằng nhau trên nền trắng:** Tránh sự lặp lại tẻ nhạt, phẳng lặng.
4. ❌ **Cấm câu khẩu hiệu sáo rỗng:** "Thay đổi cách bạn làm việc", "Cách mạng hóa quy trình", "Nền tảng tất cả trong một".
5. ❌ **Cấm soft drop shadow mờ nhạt:** Thay thế bằng đường viền mảnh `1px solid rgba(...)` hoặc hiệu ứng viền kính (glassmorphism rim light).
6. ❌ **Cấm icon trang trí vô nghĩa:** Không đính icon vào khắp mọi ngóc ngách khi không có chức năng hành động.

---

## 💎 2. Bảy Kỹ Thuật Thiết Kế Đột Phá (Anti-AI-Slop Techniques)

### Kỹ Thuật 1: Neo Vào Một Tham Chiếu Cụ Thể (Specific Anchor Reference)
- Thay vì yêu cầu *"làm cho hiện đại và sạch sẽ"*, hãy neo vào **một cái tên cụ thể**:
  - *"Xử lý như trang product của Linear cuối 2024 — tiêu đề sans-serif đậm, nhiều khoảng trắng, vạch ngăn mảnh 1px, gần như không có màu cho đến chỗ nút CTA."*
  - *"Thiết kế theo tạp chí kiến trúc Kinfolk — giấy ngà thủ công Alabaster, chữ than củi tương phản cao, ảnh chụp khổ lớn, khoảng thở hào phóng."*
  - *"Phong cách Wabi-Sabi Nhật Bản — than củi trầm ấm, gỗ tuyết tùng Hinoki, rêu phong matcha, tôn trọng sự tĩnh lặng."*

### Kỹ Thuật 2: Yêu Cầu Mỗi Màn Một Quyết Định Thị Giác Áp Đảo
- Thiết kế trung bình bị nhạt nhòa vì không có gì dám là **"thứ to nhất trong phòng"**.
- Chỉ rõ phần tử áp đảo:
  - *Hoặc:* Tiêu đề Hero đặt font Serif/Display kích thước cực lớn (72px - 96px), toàn bộ phần còn lại trên trang (body, button, vạch ngăn) lùi xuống 14px - 16px trung tính.
  - *Hoặc:* Một Canvas 3D / SVG Shader sống động làm trung tâm sân khấu (chiếm 60% không gian), toàn bộ danh sách chức năng phụ rút gọn vào sidebar bán trong suốt.

### Kỹ Thuật 3: Chọn Từ Bộ Tuyển Sẵn (Curated Presets, No Guessing)
- Tuyệt đối không để AI tự đoán màu hay tự nội suy font.
- Sử dụng cú pháp chỉ định: `+style`, `+palette`, `+font`:
  - **Styles:** Apple Bento Grid, Glassmorphism, Neo-Brutalism, Minimalist Luxury.
  - **Palettes:** Wabi-Sabi Zen, Cyber Obsidian, Nordic Sage, Kinfolk Warm Paper.
  - **Fonts:** `Syne` + `Plus Jakarta Sans`, `Space Grotesk` + `Outfit`, `Cinzel` + `Newsreader`.

### Kỹ Thuật 4: Quy Định Hệ Thống Không Gian & Nhịp Điệu (Spatial Rhythm)
- 80% cảm xúc của giao diện đến từ khoảng cách, đường căn và nhịp thở.
- Nhịp cơ sở: Bội số của `8px` (`8px`, `16px`, `24px`, `32px`, `48px`, `64px`).
- Dùng đường viền mảnh `1px solid rgba(255, 255, 255, 0.08)` (dark mode) hoặc `1px solid rgba(0, 0, 0, 0.08)` (light mode) thay cho bóng đổ mờ.
- Khuyến khích bố cục bất đối xứng (Asymmetry) có chủ đích thay vì luôn căn giữa (center align).

### Kỹ Thuật 5: Xác Lập Giọng Nói Trước Khi Dàn Trang (Voice First)
- Xác định tông giọng của sản phẩm trước khi viết mã:
  - *"Trầm tĩnh, thiền tịnh, kỷ luật thiền môn."*
  - *"Lạnh lùng, chính xác, data-driven."*
  - *"Nghịch ngợm, tự trào, cá tính độc bản."*
- Viết tiêu đề và thông điệp bằng giọng nói đó trước, sau đó layout mới được sinh ra để tôn vinh thông điệp.

### Kỹ Thuật 6: Tinh Chỉnh Bằng Cách XÓA (Subtractive Design)
- Khi lặp lại (iteration) giao diện, **hãy XÓA trước khi THÊM**:
  - Nhặt ra 3 thứ hét lên "AI làm cái này" (gradient thừa, viền bo tròn thừa, badge trang trí vô nghĩa) và xóa bỏ chúng.
  - Châm ngôn gốc: *"Mọi thứ bạn xóa đi mà không thấy nhớ — vốn dĩ là AI slop ngay từ đầu."*

### Kỹ Thuật 7: Đa Bảng Màu Thời Gian Thực (Dynamic Palette Switching)
- Thay vì ép buộc người dùng vào một gam màu duy nhất, cung cấp bộ chuyển đổi nhanh giữa ít nhất 2 đến 4 bảng màu (Palettes) thông qua CSS Variables để đáp ứng mọi môi trường làm việc (Ban ngày, Ban đêm, Thiền định, Công nghệ).

---

## 📋 3. Checklist Pre-Flight Trước Khi Bàn Giao Mã Nguồn

- [ ] 1. Giao diện có bị rơi vào chữ ký tím/chàm vô hồn không?
- [ ] 2. Font tiêu đề đã dùng font cá tính (`Outfit`, `Syne`, `Space Grotesk`) chưa?
- [ ] 3. Đâu là phần tử "to nhất trong phòng" trên màn hình này? Có bị tranh chấp thị giác không?
- [ ] 4. Layout có bị 3 thẻ ngang bằng nhau trên nền trắng không? Đã đổi sang Bento Grid bất đối xứng chưa?
- [ ] 5. Đã loại bỏ soft shadow mờ nhạt và thay bằng viền mảnh 1px tinh tế chưa?
- [ ] 6. Bảng màu đã được neo vào một theme thực tế chưa?
- [ ] 7. Đã thực hiện bước "tỉa bớt chi tiết thừa" chưa?
