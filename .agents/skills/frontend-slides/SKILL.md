---
name: frontend-slides
description: Tạo bài thuyết trình HTML / Slide tương tác trực quan bằng Reveal.js hoặc TailwindCSS với các phong cách nghệ thuật độc đáo (Neon Cyber, Minimalist, Paper & Ink).
---

# Kỹ Năng: Frontend Slides (Tạo Bản Thuyết Trình HTML Tương Tác)

Kỹ năng này chuẩn hóa cách tạo các slide thuyết trình hiện đại dạng web (chạy trực tiếp trên trình duyệt, có hoạt ảnh, phím tắt chuyển trang, và responsive).

---

## 1. Quy Trình 3 Bước Chuẩn (SOP)

### Bước 1: Thu Thập & Định Hình Cấu Trúc Nội Dung
- Xác định mục tiêu: Pitching khởi nghiệp, Báo cáo kỹ thuật, hay Bài giảng giáo dục.
- Chia bài thuyết trình thành cấu trúc chuẩn 10-15 slides:
  - Slide 1: Bìa (Title & Subtitle).
  - Slide 2: Nỗi đau & Bối cảnh (Problem).
  - Slide 3: Giải pháp đề xuất (Solution).
  - Slide 4-7: Kiến trúc & Chi tiết tính năng (Architecture & Features).
  - Slide 8: Kế hoạch triển khai (Roadmap).
  - Slide 9: Kết luận & Kêu gọi hành động (CTA).

### Bước 2: Lựa Chọn Visual Style (Đề Xuất 3 Phong Cách)
Không tạo slide đơn điệu nền trắng chữ đen; cho phép người dùng chọn 1 trong 3 phong cách:
1. **Neon Cyber:** Nền tối `#0a0b1e`, viền neon cyan/magenta phát sáng, font `Orbitron`/`Outfit`, hiệu ứng hạt.
2. **Swiss Minimalist:** Nền sáng tối giản, typography đậm nét phân cấp mạnh, layout lưới chuẩn xác, không chi tiết thừa.
3. **Paper & Ink:** Phong cách tạp chí cổ điển, font có chân (Serif), màu kem ngà nhẹ mắt, viền vẽ tay.

### Bước 3: Xuất File HTML Độc Lập (Self-Contained)
- Sử dụng Reveal.js hoặc Vanilla HTML/CSS/JS nhúng trực tiếp.
- Hỗ trợ đầy đủ phím tắt: Mũi tên `←` `→` hoặc `Space` chuyển slide, phím `F` bật toàn màn hình (Fullscreen).
- Tích hợp thanh tiến trình đọc (Progress bar).

---

## 2. Hướng Dẫn Tối Ưu Cho Từng Dòng Model

### 🌟 Dành cho mọi AI Model / IDE
- **Prompt mẫu:**
  ```text
  Theo skill `frontend-slides`:
  Hãy tạo cho tôi một bài thuyết trình HTML 8 slides về chủ đề [Chủ đề của bạn] theo phong cách Neon Cyber. Xuất ra 1 file HTML hoàn chỉnh có thể mở ngay trên trình duyệt.
  ```
