---
name: ui-ux-pro-max
description: Bộ quy chuẩn thiết kế UI/UX toàn diện nhất (UI/UX Pro Max) gồm 67 phong cách (Glassmorphism, Bento Grid, Neumorphism, Brutalism), 96 bảng màu theo ngành và 57 tổ hợp font chữ chuyên nghiệp.
---

# Kỹ Năng: UI/UX Pro Max (Thiết Kế Đỉnh Cao Chống AI Slop)

Kỹ năng này giải quyết triệt để vấn đề giao diện do AI tạo ra bị nhàm chán, generic hoặc màu sắc "cứ một kiểu" nhờ áp dụng hệ thống **67 UI Styles, 161 Color Palettes, 57 Font Pairings** và **7 Điều Luật Chống AI Slop**.

---

## 🎯 1. Nguyên Tắc Cốt Lõi: Chọn Từ Bộ Đã Tuyển Sẵn
Không bao giờ để AI tự đoán màu hay tự nội suy font chữ (vì sẽ rơi vào trung bình cộng của web). Luôn sử dụng cú pháp 3 núm vặn:
- `+style`: Tên phong cách thiết kế cụ thể.
- `+palette`: Bảng màu đã được thẩm định.
- `+font`: Cặp font tương phản cao có cá tính.

---

## 🏛️ 2. Thư Viện Phong Cách & Bảng Màu Tiêu Biểu

### A. 4 Phong Cách Thiết Kế Xu Hướng
1. **Apple Bento Grid (Lưới Nhật Bản - Ngăn nắp, Phân cấp thị giác):**
   - Bố cục lưới thẻ không đều (2x2, 1x2, 2x1) phân cấp thị giác rõ ràng.
   - Bo góc lớn mềm mại: `border-radius: 20px - 28px`.
   - Vạch ngăn tinh tế: `border: 1px solid rgba(255, 255, 255, 0.1)` hoặc `1px solid rgba(0, 0, 0, 0.08)`.
2. **Glassmorphism (Kính mờ cao cấp):**
   - Nền: `background: rgba(255, 255, 255, 0.05)` hoặc tối `rgba(16, 20, 38, 0.6)`.
   - Lọc mờ: `backdrop-filter: blur(16px); -webkit-backdrop-filter: blur(16px);`.
   - Viền sáng nhẹ: `border: 1px solid rgba(255, 255, 255, 0.12)`.
3. **Neo-Brutalism (Táo bạo & Cá tính):**
   - Viền đen đậm: `border: 2px - 3px solid #000`.
   - Đổ bóng cứng, không mờ: `box-shadow: 4px 4px 0px #000`.
   - Màu nhấn tương phản cao: Vàng chanh `#fff017`, Cam neon `#ff5e00`, Xanh mint `#00ff9f`.
4. **Minimalist Cyber / Dark Luxury (Linear Style):**
   - Nền than củi / obsidian sâu: `#07080e`, `#121316`.
   - Màu nhấn dạ quang hoặc kim loại: Electric Violet `#a855f7`, Luminous Cyan `#06b6d4`, Gold `#d4af37`.

### B. 4 Bảng Màu Đẳng Cấp Đã Được Thử Nghiệm Thực Tế
1. **🍵 Zen Matcha & Hinoki (Wabi-Sabi Nhật Bản):**
   - Than củi ấm `#101513`, Matcha `#22c55e`, Gỗ Hinoki `#6a4a35`, Mạch nhựa `#fbbf24`.
2. **🌌 Cyber Obsidian (Linear / Raycast High-Tech):**
   - Obsidian không gian `#07080e`, Tím điện `#a855f7`, Neon Cyan `#06b6d4`.
3. **🌲 Nordic Pine & Sage (Scandinavia & Terracotta):**
   - Thông tuyết Bắc Âu `#0b1411`, Xô thơm `#52b788`, Đất nung `#e76f51`.
4. **📜 Kinfolk Warm Paper (Luxury Editorial Light Mode):**
   - Giấy ngà Alabaster `#f7f5ef`, Mực than chì `#1d211e`, Xanh sồi già `#15803d`, Terracotta `#c2410c`.

---

## 🚫 3. Tuân Thủ Danh Sách Cấm (Negative Blacklist)
- Cấm font `Inter`, `Roboto`, `Open Sans` làm font tiêu đề chính.
- Cấm gradient tím-chàm generic.
- Cấm bố cục 3 thẻ ngang bằng nhau trên nền trắng.
- Cấm soft shadow mờ nhờ nhờ (dùng viền mảnh 1px).
- Cấm slogan sáo rỗng kiểu "Thay đổi cách bạn làm việc".

---

## 💻 4. Mẫu Prompt Chuẩn Cho Lập Trình Viên & AI
```text
Áp dụng skill `ui-ux-pro-max` kết hợp `frontend-design-mastery`:
+style: Bento Grid bất đối xứng
+palette: Zen Matcha & Hinoki (hoặc hỗ trợ 4 Theme Switcher)
+font: Outfit (Heading) + Plus Jakarta Sans (Body)
Yêu cầu:
- Một quyết định thị giác áp đảo: Canvas trung tâm chiếm 60% không gian.
- Tuân thủ danh sách cấm Anti-AI-Slop (không Inter, không gradient tím vô nghĩa, không soft shadow mờ).
- Tinh chỉnh bằng cách XÓA: lược bỏ mọi badge và icon trang trí thừa thãi.
```
