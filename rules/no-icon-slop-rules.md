# Kỷ Luật Cấm Tự Sinh Icon & Emoji Vô Tội Vạ (Zero-Icon & Zero-Emoji Slop Protocol)

Quy tắc này là **luật bắt buộc tuyệt đối** áp dụng cho mọi phản hồi hội thoại, tài liệu Markdown, và mã nguồn giao diện UI/UX của AI.

---

## 1. Lý Do & Thực Trạng (The "Icon & Emoji Slop" Problem)

Một trong những dấu hiệu nhận diện "AI viết" rõ ràng và gây khó chịu nhất cho lập trình viên và nhà thiết kế chuyên nghiệp là:
- **Lạm dụng Emoji trong văn bản:** AI tự ý gắn các emoji sến sẩm (✨, 🚀, 🔥, ⚡, 💡, 🌟, 📖, 🎙️, 🗂️, ✍️, 👉, ✅, ❌) vào trước mọi tiêu đề, đầu dòng danh sách, bảng biểu và nút bấm. Điều này làm cho tài liệu kỹ thuật trông giống bài quảng cáo bán hàng giá rẻ hoặc nội dung cho trẻ em.
- **Lạm dụng Icon trong giao diện UI:** Gắn icon vector vào trước mọi nhãn nút (Nút "Tìm kiếm" thì phải nhét icon kính lúp, nút "Lưu" thì nhét icon đĩa mềm, nút "Xóa" thì nhét icon thùng rác, tab nào cũng có icon). Điều này làm giao diện bị rối mắt, vụn vặt và mất đi sự sang trọng, tinh tế của trường phái thiết kế cao cấp (như Stripe, Linear, Apple, Vercel).

---

## 2. Kỷ Luật Trong Phản Hồi Hội Thoại & Tài Liệu Markdown

1. **Tuyệt đối CẤM Emoji làm vật trang trí:**
   - CẤM gắn emoji vào đầu các tiêu đề `<h1>`, `<h2>`, `<h3>`, `<h4>` (Ví dụ: CẤM `### 1. 📖 Tra Cứu`, CẤM `### 2. 🗂️ Flashcard`).
   - CẤM chèn emoji vào danh sách tính năng, gạch đầu dòng, các cột bảng biểu (Ví dụ: CẤM `🔥 3 ngày`, `⚡ 120 XP`, `🚀 Bắt đầu`).
   - Thay thế bằng: Đánh số thứ tự phân cấp rõ ràng (`1.`, `2.`, `3.`), gạch đầu dòng chuẩn mực (`-`), và từ ngữ cô đọng, sắc bén.
2. **Chuẩn mực Báo Cáo Kỹ Thuật (Technical Whitepaper Standard):**
   - Định dạng văn bản bằng chữ in đậm (`**...**`), khối mã lệnh (code blocks), hoặc thẻ badge dạng text thuần túy.
   - Thể hiện sự chuyên nghiệp, điềm tĩnh, súc tích và tôn trọng thị giác của người dùng.

---

## 3. Kỷ Luật Trong Thiết Kế Giao Diện UI & Mã Nguồn Frontend

1. **Nguyên lý: "Typography Là Giao Diện" (Typography is the UI):**
   - Phân cấp kích thước font chữ, độ đậm (font-weight), màu sắc tương phản và khoảng thở (whitespace) là đủ để định hướng người dùng. Không cần dùng icon để giải thích lại những gì chữ đã nói.
2. **Quy tắc 3 CẤM về Icon trong UI:**
   - **CẤM 1:** Cấm gắn icon vào trước tiêu đề các thẻ Card, Modal Header, hoặc Section Heading (Ví dụ: Thẻ "Mạng Lưới Từ Đồng Nghĩa" thì để chữ trần, CẤM nhét icon ngôi sao hay cuốn sách vào trước).
   - **CẤM 2:** Cấm gắn icon vào trước nhãn nút bấm khi nút đã có chữ rõ ràng (Ví dụ: Nút "Tra cứu", "Lưu thẻ", "Sao chép", "Đăng ký" -> Để chữ trần, không nhét icon kính lúp hay đĩa mềm vào cạnh chữ).
   - **CẤM 3:** Cấm dùng emoji hệ điều hành để làm icon trong giao diện web (Ví dụ: Cấm nhét ký tự `🔴`, `🟢`, `💡` vào HTML).
3. **Khi nào MỚI ĐƯỢC dùng Icon?**
   - Chỉ dùng icon khi nó là **Nút bấm biểu tượng độc lập (Icon-only Button)** không có chữ đi kèm (Ví dụ: Nút đóng `X` ở góc modal, nút điều khiển Play/Pause/Mute trên thanh phát audio, nút mũi tên lật trang `<` `>`).
   - Chỉ dùng icon khi người dùng **yêu cầu rõ ràng** trong câu lệnh (Ví dụ: *"Hãy thêm icon cho nút này"*).
   - Khi bắt buộc dùng icon, phải dùng icon vector mảnh (stroke-width 1.5px), đơn sắc, tinh tế.

---

## 4. Checklist Tự Kiểm Tra Trước Khi Trả Lời (Zero-Icon Pre-Flight)

Trước khi xuất bất kỳ câu trả lời hoặc đoạn mã nào, AI phải tự hỏi:
- [ ] 1. Trong câu trả lời của tôi có emoji trang trí nào ở tiêu đề hoặc đầu dòng không? (Nếu có -> Xóa sạch ngay).
- [ ] 2. Trong các nút bấm và tiêu đề component tôi vừa viết, có icon thừa thãi nào đi kèm với chữ không? (Nếu có -> Bỏ icon, giữ lại chữ trần).
- [ ] 3. Giao diện này có thể đứng vững và trông sang trọng chỉ bằng Typography và viền 1px không?
