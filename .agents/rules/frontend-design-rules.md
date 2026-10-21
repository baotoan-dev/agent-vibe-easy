# Quy Tắc Thiết Kế Frontend Hiện Đại (Frontend Design & Aesthetics Rules)

Quy tắc này đảm bảo mọi sản phẩm web do AI tạo ra đều mang vẻ đẹp cao cấp, sống động, đạt chuẩn sản xuất, **tuân thủ 100% Bộ Quy Tắc Chống Lối Mòn AI** (`anti-ai-slop-rules.md`) và **Kỷ Luật Cấm Fix Cứng Pixel**.

---

## 1. Tuân Thủ Tuyệt Đối 7 Điều Luật Chống AI Slop (Anti-AI-Slop Protocol)
Mọi tác nhân AI khi thiết kế giao diện phải đối chiếu trực tiếp với [anti-ai-slop-rules.md](file:///c:/Projects/easy-vibe/.agents/rules/anti-ai-slop-rules.md):
- **Tham chiếu cụ thể:** Neo vào một trường phái thực tế (Linear 2024, Apple Bento Grid, Kinfolk Editorial, Wabi-Sabi Kyoto), cấm dùng từ chung chung *"làm hiện đại"*.
- **Danh sách cấm (Blacklist):** Cấm font `Inter`/`Roboto` làm font tiêu đề; cấm gradient tím sến lặp đi lặp lại; cấm layout 3 thẻ ngang bằng nhau trên nền trắng; cấm soft drop shadow nhòe nhoẹt.
- **Typography độc bản:** Sử dụng font có độ nhận diện cao từ Google Fonts (`Plus Jakarta Sans`, `Outfit`, `Syne`, `Space Grotesk`, `Clash Display`, `Cinzel`, `Newsreader`).
- **Khoảng cách & Nhịp điệu:** Bội số 8px, padding/margin thoáng đãng (24px - 48px), dùng viền 1px tinh tế thay cho bóng đổ mờ.
- **Thiết kế loại trừ (Subtractive Design):** Luôn tỉa bớt chi tiết thừa thãi trước khi thêm thắt hiệu ứng.

---

## 2. 🚫 Kỷ Luật Cấm Fix Cứng Pixel (Anti-Fixed-Px & Fluid Intrinsic Sizing)
- ❌ **CẤM TUYỆT ĐỐI:** Cấm hardcode các con số pixel cố định ("magic numbers" như `width: 300px`, `width: 385px`, `min-width: 290px`, `flex: 0 1 320px`, `height: 450px`) cho các container chứa text, dropdowns, headers, cards và modals.
  * *Hậu quả:* Giao diện sẽ bị nát vụn ngay lập tức khi người dùng zoom trình duyệt, dùng màn hình tỉ lệ khác nhau (DPI 125%/150%), đổi ngôn ngữ dài ngắn khác nhau, hoặc co giãn cửa sổ.
- ✅ **BẮT BUỘC DÙNG KÍCH THƯỚC NỘI TẠI & CO GIÃN LINH HOẠT (Intrinsic & Fluid Units):**
  1. **Nội dung tự ôm vừa khít:** Dùng `width: max-content;` hoặc `width: fit-content;` để phần tử tự đo lường độ dài ký tự thực tế.
  2. **Biên độ an toàn chống tràn màn hình:** Luôn bọc trong hàm so sánh: `max-width: min(calc(100vw - 2rem), 26rem);` để vừa khít trên cả mobile lẫn màn hình lớn.
  3. **Đơn vị tương đối:** Ưu tiên `rem`, `em`, `ch` (độ rộng ký tự văn bản), `%`, `fr` thay cho `px`.
  4. **Hàm co giãn tự nhiên:** Dùng `clamp(min, preferred, max)` cho typography và spacing (ví dụ: `font-size: clamp(1.2rem, 2vw, 1.6rem);`, `gap: clamp(0.5rem, 1.5vw, 1.25rem);`).
  5. **Flexbox thông minh:** Dùng `flex: 1 1 auto; min-width: min-content;` hoặc `flex-shrink: 0; min-width: fit-content;` thay vì gán giá trị px chết.

---

## 3. Bắt Buộc Hỗ Trợ Đa Thiết Bị (Responsive Mobile-First & Zero-Clipping)
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

## 4. Trải Nghiệm Tương Tác Sống Động (Micro-Animations & Accessibility)
- Mọi phần tử có thể bấm (Nút, Liên kết, Thẻ card) bắt buộc phải có hiệu ứng `:hover`, `:active`, `:focus` mượt mà (`transition: all 0.25s cubic-bezier(0.16, 1, 0.3, 1)`).
- Tất cả các nút bấm, input, modal phải có **`id` định danh duy nhất và có ý nghĩa** (ví dụ: `id="btn-checkout"`, `id="input-user-email"`) để phục vụ kiểm thử tự động.
- Sử dụng đúng thẻ ngữ nghĩa HTML5 (`<header>`, `<main>`, `<section>`, `<article>`, `<button>`).
- Cung cấp ít nhất 2 đến 4 bảng màu (Palettes) chuyển đổi linh hoạt qua CSS Variables khi dự án yêu cầu trải nghiệm đa dạng.
