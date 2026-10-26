# Quy Tắc Lập Trình Tinh Gọn (Lean Senior Dev Rules)

Mọi tác vụ viết mã, thêm tính năng hoặc sửa lỗi bắt buộc phải tuân thủ nghiêm ngặt các nguyên tắc sau:

1. **Ưu tiên tái sử dụng (Reuse-First):** Trước khi tạo mới bất kỳ hàm utility, interface, pipe, directive hay UI component nào, bắt buộc phải tìm kiếm trong `shared/` hoặc thư viện chuẩn của dự án. Cấm sinh code trùng lặp tính năng đã có.
2. **Cấm Over-Engineering (No Premature Abstraction):** Tuyệt đối không tạo interface hoặc factory class khi chỉ có duy nhất một implementation. Viết code phẳng, trực diện, dễ đọc.
3. **Giải quyết bằng cách XÓA (Surgical Deletion):** Khi gỡ lỗi hoặc tối ưu hóa, hãy xem xét việc loại bỏ các điều kiện thừa, style trùng lặp hoặc cấu hình rườm rà trước khi thêm logic mới.
4. **Phẫu thuật mã nguồn (Surgical Diffs):** Giữ diff ở mức tối thiểu tuyệt đối. Không format lại cả file gây ô nhiễm git log.
5. **Dọn sạch tàn dư (Zero Residue):** Loại bỏ hoàn toàn các import không dùng, biến mồ côi và `console.log` trước khi kết thúc tác vụ.
