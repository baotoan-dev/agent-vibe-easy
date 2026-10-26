---
name: ponytail-lean-code
description: Kỹ năng lập trình tối giản chuẩn Senior Dev lười (DietrichGebert/ponytail). Ngăn chặn over-engineering, triệt tiêu code rác, bắt buộc tái sử dụng hàm/tiện ích có sẵn và giải quyết bài toán bằng ít dòng code nhất có thể.
---

# Kỹ Năng Lập Trình Tối Giản (Ponytail - Lean Senior Dev Protocol)

> **Triết lý cốt lõi:** *"Dòng code tốt nhất là dòng code không bao giờ phải viết."*
> (The best code is the code you never wrote.)

---

## 1. Nguyên Tắc Hoạt Động (The Lazy Senior Dev Mindset)

Mỗi khi nhận một yêu cầu lập trình hoặc sửa lỗi, AI **bắt buộc** phải tự vấn qua 5 bộ lọc trước khi gõ bất kỳ dòng code nào:

1. **Bộ lọc tồn tại:** Đoạn code, helper hay component này trong dự án đã có chưa?
2. **Bộ lọc ngôn ngữ:** Tính năng này có thể giải quyết bằng 1 hàm/method có sẵn của ngôn ngữ/framework (vd: JS Array methods, CSS Grid/Flexbox) không?
3. **Bộ lọc trừu tượng (No Premature Abstraction):** Có đang tự chế ra interface, factory, adapter hay wrapper rỗng chỉ để "chuẩn bị cho tương lai" không? Nếu chỉ dùng 1 lần, hãy giữ nó phẳng (flat & direct).
4. **Bộ lọc YAGNI (You Aren't Gonna Need It):** Đoạn mã này có thực sự phục vụ đúng yêu cầu hiện tại, hay đang giả định những trường hợp ngoài phạm vi?
5. **Bộ lọc phẫu thuật (Surgical Deletion):** Bài toán này có thể giải quyết bằng cách **XÓA BỚT CODE THỪA** hoặc bỏ cấu hình sai thay vì viết thêm 50 dòng logic mới không?

---

## 2. Quy Trình 3 Bước Thực Thi

### Bước 1: Khảo sát trước khi viết (Pre-flight Inspection)
* Quét thư mục `shared/`, `utils/`, `services/`, hoặc design tokens sẵn có.
* Nếu tìm thấy hàm tương đương (dù khác tên đôi chút), **bắt buộc tái sử dụng** thay vì viết hàm mới.

### Bước 2: Viết mã tinh gọn tối đa (Minimal Implementation)
* Giới hạn diff tối thiểu: Không chạm vào các dòng code không liên quan.
* Không tự ý cài đặt thêm thư viện npm ngoài khi framework/chuẩn web đã hỗ trợ.
* Không viết comment giải thích những điều hiển nhiên; code phải tự minh bạch.

### Bước 3: Rà soát tinh giản (Post-refactor Clean Up)
* Kiểm tra xem sau khi hoàn thành, có import nào thừa hay biến không dùng (unused variables) không.
* Dọn sạch toàn bộ log debug (`console.log`) tạm thời.

---

## 3. Danh Sách Các Lỗi Cấm Kỵ (Anti-Patterns Blacklist)

* CẤM tạo wrapper function chỉ để gọi lại một hàm có sẵn mà không thêm logic giá trị.
* CẤM viết helper tính toán toán học/string cơ bản khi standard library đã có sẵn.
* CẤM tạo file configuration mới khi có thể cấu hình trực tiếp trong cấu hình chính hiện tại.
* CẤM viết lại CSS components khi design system tokens của dự án đã định nghĩa.
