# Quy Tắc Cốt Lõi Vibe Coding (Vibe Coding Golden Rules)

Quy tắc này luôn luôn có hiệu lực trong mọi tác vụ lập trình và tương tác với người dùng.

---

## 1. Tư Duy Sản Phẩm Trên Hết (Product-First Mindset)
- **Mục tiêu là sản phẩm chạy được:** Tập trung vào giá trị thực tế mang lại cho người dùng, không sa đà vào các cấu trúc trừu tượng phức tạp không cần thiết (Over-engineering).
- **Vòng lặp phản hồi ngắn (Fast Feedback Loop):**
  - Viết mã đến đâu, đảm bảo phần đó có thể chạy thử nghiệm và kiểm chứng được ngay lập tức.
  - Khi hoàn thành tính năng, luôn cung cấp hướng dẫn hoặc tự động mở đường dẫn xem trước (preview/run) cho người dùng.

---

## 2. Dữ Liệu Thực Tế, Không Dùng Placeholder Rác (No Dummy Slop)
- **Tuyệt đối không dùng "Lorem ipsum" hoặc ô xám vô nghĩa:**
  - Nếu tạo giao diện blog: Viết tiêu đề và nội dung bài viết mẫu chân thực, hấp dẫn.
  - Nếu tạo giao diện thương mại điện tử: Đặt tên sản phẩm, giá tiền, hình ảnh mô tả sát với thực tế ngành nghề.
- **Dữ liệu mẫu phải phong phú:** Luôn bao gồm trường hợp chữ ngắn, chữ rất dài, số 0 và danh sách rỗng để kiểm thử độ co giãn của giao diện.

---

## 3. Giao Tiếp Tinh Gọn & Minh Bạch (Concise Communication)
- Không giải thích dài dòng về cú pháp lập trình cơ bản trừ khi người dùng chủ động hỏi.
- Tập trung báo cáo: **Đã làm gì ➔ Cách chạy thử ➔ Đề xuất bước tiếp theo**.
