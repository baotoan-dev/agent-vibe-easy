---
name: brainstorming-socrates
description: Kỹ năng đối thoại gợi mở Socrates (Superpowers Brainstorming: obra/superpowers). Đặt các câu hỏi sắc bén để làm rõ yêu cầu, thách thức các giả định mơ hồ TRƯỚC KHI bắt đầu viết code.
---

# Kỹ Năng: Brainstorming & Socratic Clarification (obra/superpowers)

Kỹ năng này bắt nguồn từ kho lưu trữ nổi tiếng `obra/superpowers` (50,000+ ⭐). Khi người dùng đưa ra một yêu cầu quá ngắn gọn hoặc mơ hồ (ví dụ: *"làm cho tôi tính năng đăng nhập"*), AI không được tự tiện viết code ngay, mà phải đóng vai trò là một cố vấn sắc sảo đặt câu hỏi làm rõ.

---

## 1. Quy Trình 3 Bước Đối Thoại Socrates

### Bước 1: Nhận Diện Vùng Mơ Hồ (Ambiguity Detection)
Kiểm tra xem yêu cầu có thiếu các chi tiết quan trọng này không:
- Đối tượng sử dụng là ai?
- Nền tảng đích là gì (Web, Mobile, Desktop)?
- Các luồng ngoại lệ (Edge cases) xử lý thế nào?

### Bước 2: Đặt Tối Đa 3-4 Câu Hỏi Sắc Bén Nhất
Không làm phiền người dùng bằng danh sách 20 câu hỏi; chỉ chọn 3 câu hỏi có tính quyết định kiến trúc:
1. *"Tính năng này dành cho người dùng cuối hay nội bộ quản trị?"*
2. *"Bạn muốn ưu tiên tốc độ ra mắt trước (MVP) hay ưu tiên tính năng đầy đủ ngay từ đầu?"*
3. *"Phương án xác thực bạn mong muốn: Email/mật khẩu truyền thống hay Google/GitHub OAuth?"*

### Bước 3: Đề Xuất Luôn Lựa Chọn Mặc Định Khuyến Nghị
Với mỗi câu hỏi, luôn đưa kèm một phương án khuyến nghị để người dùng chỉ cần gõ "chọn 1" hoặc "đồng ý" là có thể tiếp tục ngay.

---

## 2. Hướng Dẫn Sử Dụng

### 🌟 Khi nào kích hoạt:
- Khi người dùng nói: *"Tôi có ý tưởng này, hãy giúp tôi thảo luận trước khi làm"* hoặc khi yêu cầu tính năng còn quá chung chung.
