# QUY TẮC DI CHUYỂN DỮ LIỆU CSDL (DATABASE MIGRATION RULES)

## 1. Nguyên Tắc An Toàn Dữ Liệu
1. **Không Bao Giờ Xóa Cột Đang Sử Dụng (Zero-Downtime Rule)**:
   - Thay vì `DROP COLUMN`, hãy đánh dấu deprecate trước, sau đó xóa ở bản release tiếp theo sau khi code mới đã chạy ổn định.
2. **Luôn Kèm Theo Script Rollback (Reversible Migrations)**:
   - Mọi migration tiến (`UP`) bắt buộc phải có migration lùi (`DOWN`) tương ứng.
3. **Thao Tác Thêm Cột Mới**:
   - Khi thêm cột mới, luôn đặt giá trị mặc định (`DEFAULT`) hoặc cho phép `NULL` để không làm đứt gãy các bản ghi hiện hữu.
4. **Tạo Chỉ Mục Không Khóa (Non-blocking Index Creation)**:
   - Với PostgreSQL, luôn sử dụng cú pháp `CREATE INDEX CONCURRENTLY` trên bảng lớn để tránh lock bảng sản xuất.
5. **Kiểm Tra Quyền RLS (Row Level Security)**:
   - Bất kỳ bảng mới nào tạo ra trong Supabase / PostgreSQL đều phải kích hoạt `ALTER TABLE ... ENABLE ROW LEVEL SECURITY;` và có tối thiểu một chính sách truy cập.
