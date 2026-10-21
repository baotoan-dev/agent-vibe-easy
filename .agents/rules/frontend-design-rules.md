# Quy Tắc Thiết Kế Frontend Hiện Đại (Frontend Design & Aesthetics Rules)

Quy tắc này đảm bảo mọi sản phẩm web do AI tạo ra đều mang vẻ đẹp cao cấp, sống động, đạt chuẩn sản xuất và **tuân thủ 100% Bộ Quy Tắc Chống Lối Mòn AI** tại `anti-ai-slop-rules.md`.

---

## 1. Tuân Thủ Tuyệt Đối 7 Điều Luật Chống AI Slop (Anti-AI-Slop Protocol)
Mọi tác nhân AI khi thiết kế giao diện phải đối chiếu trực tiếp với [anti-ai-slop-rules.md](file:///c:/Projects/easy-vibe/.agents/rules/anti-ai-slop-rules.md):
- **Tham chiếu cụ thể:** Neo vào một trường phái thực tế (Linear 2024, Apple Bento Grid, Kinfolk Editorial, Wabi-Sabi Kyoto), cấm dùng từ chung chung *"làm hiện đại"*.
- **Danh sách cấm (Blacklist):** Cấm font `Inter`/`Roboto` làm font tiêu đề; cấm gradient tím sến lặp đi lặp lại; cấm layout 3 thẻ ngang bằng nhau trên nền trắng; cấm soft drop shadow nhòe nhoẹt.
- **Typography độc bản:** Sử dụng font có độ nhận diện cao từ Google Fonts (`Plus Jakarta Sans`, `Outfit`, `Syne`, `Space Grotesk`, `Clash Display`, `Cinzel`, `Newsreader`).
- **Khoảng cách & Nhịp điệu:** Bội số 8px, padding/margin thoáng đãng (24px - 48px), dùng viền 1px tinh tế thay cho bóng đổ mờ.
- **Thiết kế loại trừ (Subtractive Design):** Luôn tỉa bớt chi tiết thừa thãi trước khi thêm thắt hiệu ứng.

---

## 2. Bắt Buộc Hỗ Trợ Đa Thiết Bị (Responsive Mobile-First & Zero-Clipping)
- Mọi trang web phải hiển thị hoàn hảo trên cả màn hình điện thoại (dưới 768px), máy tính bảng và desktop.
- **Kỷ luật chống cắt cụt (Zero-Clipping):** Mọi card và modal dialog phải có `min-height: fit-content; overflow: visible;` hoặc thanh cuộn nội bộ có chủ đích (`overflow-y: auto; max-height: calc(88vh - 85px);`).
- Sử dụng Media Query chuẩn:
  ```css
  @media (max-width: 768px) {
    /* Điều chỉnh grid thành 1 cột, giảm font size, hiển thị mobile menu */
  }
  ```
- Không bao giờ để trang web bị tràn chiều ngang (Horizontal overflow scrollbar) trên thiết bị di động.

---

## 3. Trải Nghiệm Tương Tác Sống Động (Micro-Animations & Accessibility)
- Mọi phần tử có thể bấm (Nút, Liên kết, Thẻ card) bắt buộc phải có hiệu ứng `:hover`, `:active`, `:focus` mượt mà (`transition: all 0.25s cubic-bezier(0.16, 1, 0.3, 1)`).
- Tất cả các nút bấm, input, modal phải có **`id` định danh duy nhất và có ý nghĩa** (ví dụ: `id="btn-checkout"`, `id="input-user-email"`) để phục vụ kiểm thử tự động.
- Sử dụng đúng thẻ ngữ nghĩa HTML5 (`<header>`, `<main>`, `<section>`, `<article>`, `<button>`).
- Cung cấp ít nhất 2 đến 4 bảng màu (Palettes) chuyển đổi linh hoạt qua CSS Variables khi dự án yêu cầu trải nghiệm đa dạng.
