# Quy Tắc Thiết Kế Frontend Hiện Đại (Frontend Design & Aesthetics Rules)

Quy tắc này đảm bảo mọi sản phẩm web do AI tạo ra đều mang vẻ đẹp cao cấp, sống động và đạt chuẩn sản xuất.

---

## 1. Tránh Lối Mòn Thẩm Mỹ AI (Anti-AI-Slop Standard)
- **Màu sắc:** Tuyệt đối không dùng các màu cơ bản mặc định (đỏ tươi `#ff0000`, xanh lá cờ `#00ff00`) hay gradient tím sến generic. Luôn dùng bảng màu đã được tinh chỉnh (Tailored HSL, Dark luxury, Pastel nhẹ mắt).
- **Typography:** Tránh dùng font mặc định trình duyệt (Times New Roman, Arial). Sử dụng các font hiện đại từ Google Fonts (như `Plus Jakarta Sans`, `Outfit`, `Syne`, `Space Grotesk`, `Inter`).
- **Khoảng cách:** Không nhồi nhét nội dung dính chùm; các thành phần phải có khoảng cách đệm (padding/margin) thoáng đãng, tối thiểu 16px - 32px.

---

## 2. Bắt Buộc Hỗ Trợ Đa Thiết Bị (Responsive Mobile-First)
- Mọi trang web phải hiển thị hoàn hảo trên cả màn hình điện thoại (dưới 768px), máy tính bảng và desktop.
- Sử dụng Media Query chuẩn:
  ```css
  @media (max-width: 768px) {
    /* Điều chỉnh grid thành 1 cột, giảm font size, hiển thị mobile menu */
  }
  ```
- Không bao giờ để trang web bị tràn chiều ngang (Horizontal overflow scrollbar) trên thiết bị di động.

---

## 3. Trải Nghiệm Tương Tác Sống Động (Micro-Animations & Accessibility)
- Mọi phần tử có thể bấm (Nút, Liên kết, Thẻ card) bắt buộc phải có hiệu ứng `:hover`, `:active`, `:focus` mượt mà (`transition: all 0.2s ease`).
- Tất cả các nút bấm, input, modal phải có **`id` định danh duy nhất và có ý nghĩa** (ví dụ: `id="btn-checkout"`, `id="input-user-email"`) để phục vụ kiểm thử tự động.
- Sử dụng đúng thẻ ngữ nghĩa HTML5 (`<header>`, `<main>`, `<section>`, `<article>`, `<button>`).
