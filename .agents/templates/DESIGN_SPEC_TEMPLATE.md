# BẢN ĐẶC TẢ THIẾT KẾ GIAO DIỆN & TRẢI NGHIỆM (DESIGN SPECIFICATION)

## 1. Định Hướng Phong Cách (Aesthetic Direction)
- **Phong cách thị giác chính**: [Glassmorphism / Bento Grid / Neubrutalism / Minimalist]
- **Cảm xúc mang lại (Emotional Tone)**: [Hiện đại, Chuyên nghiệp, Táo bạo, Ấm áp]
- **Sản phẩm tham chiếu (Inspiration References)**: [Apple, Stripe, Linear, Vercel]

---

## 2. Hệ Thống Màu Sắc (Color Tokens)
- `--color-primary`: `#[HEX]` (Màu chủ đạo, nhận diện thương hiệu)
- `--color-primary-hover`: `#[HEX]`
- `--color-accent`: `#[HEX]` (Màu điểm nhấn cho Call-To-Action)
- `--color-bg-base`: `#[HEX]` (Màu nền chính)
- `--color-bg-surface`: `#[HEX]` (Màu nền card / modal)
- `--color-text-main`: `#[HEX]` (Màu chữ tiêu đề và văn bản chính)
- `--color-text-muted`: `#[HEX]` (Màu chữ phụ trợ, placeholder)
- `--color-border`: `#[HEX]` (Màu đường viền phân cách)

---

## 3. Hệ Thống Font Chữ (Typography Scale)
- **Font tiêu đề (Display/Heading Font)**: [Ví dụ: Outfit, Space Grotesk, Inter Tight]
  - `H1`: 48px / Bold (700) / Line-height 1.2
  - `H2`: 36px / SemiBold (600) / Line-height 1.25
  - `H3`: 24px / SemiBold (600) / Line-height 1.3
- **Font nội dung (Body Font)**: [Ví dụ: Inter, Plus Jakarta Sans, Be Vietnam Pro]
  - `Body Regular`: 16px / Regular (400) / Line-height 1.5
  - `Body Small`: 14px / Regular (400) / Line-height 1.4
  - `Caption`: 12px / Medium (500) / Line-height 1.3

---

## 4. Hệ Thống Khoảng Cách & Bo Góc (Spacing & Elevation)
- **Hệ số khoảng cách**: Bội số của 4px (`4px`, `8px`, `12px`, `16px`, `24px`, `32px`, `48px`, `64px`)
- **Bán kính bo tròn (Border Radius)**:
  - Nút bấm & Ô nhập (`Input/Button`): `8px`
  - Thẻ (`Card`): `16px`
  - Hộp thoại (`Modal/Dialog`): `24px`
- **Bóng đổ (Box Shadow)**:
  - Nhẹ: `0 2px 8px rgba(0, 0, 0, 0.06)`
  - Nổi: `0 12px 32px rgba(0, 0, 0, 0.12)`
