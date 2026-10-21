# Quy Tắc Kiểm Chứng Độc Lập (Testing & Verification Rules - Superpowers)

Quy tắc này bắt nguồn từ khung phát triển Superpowers (`obra/superpowers`). Mục đích: Đảm bảo mã nguồn do AI tạo ra là mã cấp sản xuất (production-grade), không phải mã đồ chơi (toy code).

---

## 1. Không Bao Giờ Giả Định Code Chắc Chắn Chạy (Never Assume)
- AI không được phép tuyên bố *"Tôi đã sửa xong hoàn hảo"* nếu chưa thực hiện ít nhất một bước xác nhận thực tế.
- Bắt buộc kiểm tra mã trả về (Exit Code 0) của lệnh build hoặc test trước khi báo cáo hoàn thành.

---

## 2. Tiêu Chuẩn Nghiệm Thu Rõ Ràng (Definition of Done)
Một tính năng chỉ được xem là "Xong" khi thỏa mãn đủ 3 điều kiện:
1. **Mã nguồn sạch:** Không có lỗi cú pháp hoặc cảnh báo linter nghiêm trọng.
2. **Kiểm thử đạt:** Các hàm xử lý logic nghiệp vụ quan trọng phải có bài kiểm tra tự động và pass 100%.
3. **Người dùng kiểm chứng được:** Có sẵn lệnh khởi chạy hoặc đường dẫn xem trước cục bộ (localhost).
