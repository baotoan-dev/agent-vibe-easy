---
name: zero-icon-slop
description: Kỷ luật cấm tự sinh icon và emoji vô tội vạ (Zero-Icon & Zero-Emoji Slop). Loại bỏ triệt để emoji trong chat/markdown và loại bỏ icon trang trí thừa trong giao diện UI/UX.
---

# Kỹ Năng: Zero-Icon & Zero-Emoji Slop Protocol

Kỹ năng này chuẩn hóa phong cách giao tiếp kỹ thuật và thiết kế giao diện tối giản cấp cao (Minimalist Luxury / Linear / Stripe Standard), triệt tiêu hoàn toàn thói quen tự ý sinh emoji và icon của mô hình AI.

---

## 1. Nguyên Tắc Cốt Lõi

### A. Đối Với Văn Bản & Báo Cáo Kỹ Thuật (Chat & Markdown)
- **Cấm Emoji Trang Trí:** Không chèn bất kỳ emoji nào (📖, 🌐, 🎙️, ✍️, 🗂️, 🔴, 🟠, 🟢, 🔵, ✨, 🌟, 💡, 🔥, ⚡, 🚀, 📑, 👉, ✅) vào tiêu đề (`#`, `##`, `###`), danh sách đầu dòng, hoặc bảng so sánh.
- **Tập Trung Vào Cấu Trúc:** Dùng phân cấp số tự nhiên (`1.`, `2.`, `3.`), gạch ngang (`-`), và từ ngữ chuyên nghiệp gãy gọn.

### B. Đối Với Mã Nguồn & Thiết Kế Giao Diện (Frontend UI/UX)
- **Typography Là Giao Diện:** Dùng kích thước chữ, độ đậm (font-weight), màu sắc và viền 1px để phân cấp trực quan. Không dùng icon làm "vật trang trí chống trống trải".
- **Không Nhét Icon Vào Nút Có Chữ:** Nút đã có chữ (như "Tìm kiếm", "Lưu", "Xóa", "Gửi") thì giữ nguyên chữ trần, không gắn icon vào cạnh chữ.
- **Không Gắn Icon Vào Tiêu Đề Card/Modal:** Giữ tiêu đề thẻ card sạch sẽ, sắc nét.
- **Chỉ Dùng Icon Khi:** Là nút bấm biểu tượng độc lập (Icon-only Button không có chữ: nút đóng `X`, nút Play/Pause), hoặc khi người dùng yêu cầu trực tiếp.

---

## 2. Hướng Dẫn Kích Hoạt Tự Động
Khi người dùng yêu cầu thiết kế UI, viết code hoặc trả lời tài liệu:
1. Luôn quét qua câu trả lời để loại bỏ toàn bộ emoji trang trí.
2. Luôn lược bỏ các thư viện icon không cần thiết trong component trừ khi có yêu cầu cụ thể.
