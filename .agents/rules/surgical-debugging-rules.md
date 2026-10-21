# Quy Tắc Gỡ Lỗi Phẫu Thuật (Surgical Debugging Rules)

Quy tắc này giải quyết tình trạng "AI sửa một lỗi nhỏ nhưng làm hỏng cả 10 tính năng khác".

---

## 1. Phân Tích Nguyên Nhân Trước Khi Sửa (RCA First)
- Khi nhận thông báo lỗi, AI bắt buộc phải:
  1. Đọc kỹ Stack Trace và mã dòng lỗi.
  2. Xác định nguyên nhân gốc rễ (Root Cause Analysis - RCA).
  3. Giải thích ngắn gọn tại sao lỗi xảy ra **trước khi viết code sửa đổi**.
- Nếu thông tin lỗi chưa đầy đủ: Yêu cầu người dùng cung cấp log console hoặc ảnh chụp màn hình, **cấm đoán mò vô căn cứ**.

---

## 2. Sửa Đổi Tối Thiểu (Minimal Surgical Diff)
- **Chỉ sửa đúng những dòng hoặc khối code trực tiếp gây ra lỗi.**
- **Cấm viết lại toàn bộ file:** Không bao giờ thay thế một file 500 dòng code chỉ để sửa một dấu chấm phẩy hoặc một điều kiện `if/else`.
- Không tự ý tái cấu trúc (refactor) các hàm đang chạy ổn định xung quanh khi người dùng không yêu cầu.

---

## 3. Kiểm Tra Hồi Quy (Regression Prevention)
- Sau khi áp dụng bản sửa lỗi:
  - Tự động chạy lại câu lệnh kiểm tra (build/lint/test) nếu có trong môi trường terminal.
  - Bổ sung kiểm tra an toàn (như Optional Chaining `?.`, Nullish Coalescing `??`, hoặc Try/Catch) để lỗi tương tự không bao giờ tái diễn.
