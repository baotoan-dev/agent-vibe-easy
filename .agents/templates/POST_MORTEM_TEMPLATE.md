# BIÊN BẢN PHÂN TÍCH NGUYÊN NHÂN GỐC RỄ SỰ CỐ (INCIDENT POST-MORTEM)

## 1. Tóm Tắt Sự Cố (Executive Summary)
- **Ngày giờ xảy ra**: [YYYY-MM-DD HH:MM UTC]
- **Thời gian gián đoạn (Downtime)**: [X giờ Y phút]
- **Mức độ nghiêm trọng**: [P1 - Khẩn cấp / P2 - Cao / P3 - Trung bình]
- **Mô tả ngắn gọn**: [Mô tả triệu chứng và tác động đối với người dùng]

---

## 2. Dòng Thời Gian Chi Tiết (Incident Timeline)
- `HH:MM`: Hệ thống giám sát kích hoạt cảnh báo lỗi 500 tăng đột biến.
- `HH:MM`: Kỹ sư nhận thông báo và bắt đầu điều tra log.
- `HH:MM`: Xác định nguyên nhân do migration CSDL khóa bảng chính.
- `HH:MM`: Thực hiện rollback về phiên bản trước.
- `HH:MM`: Dịch vụ hồi phục hoàn toàn, lưu lượng truy cập ổn định.

---

## 3. Phân Tích Nguyên Nhân Gốc Rễ (Root Cause Analysis - 5 Whys)
1. *Tại sao API bị sập?* -> CSDL PostgreSQL không phản hồi truy vấn.
2. *Tại sao CSDL không phản hồi?* -> Lệnh ALTER TABLE khóa bảng `users`.
3. *Tại sao lệnh ALTER TABLE khóa bảng?* -> Câu lệnh thêm cột không sử dụng thuộc tính NULL hoặc CONCURRENTLY.
4. *Tại sao lỗi này không được phát hiện trước?* -> Môi trường Staging có lượng dữ liệu quá nhỏ (10 dòng) nên migration hoàn thành tức thì.
5. *Tại sao quy trình kiểm duyệt bỏ sót?* -> Thiếu quy tắc rà soát Database Migration trong CI/CD.

---

## 4. Biện Pháp Khắc Phục & Ngăn Ngừa (Action Items)
| Hành động cụ thể | Người phụ trách | Hạn chót | Trạng thái |
|---|---|---|---|
| Bổ sung quy tắc linter migration vào CI | DevOps / Backend | [Ngày] | [Chưa làm] |
| Tăng khối lượng dữ liệu mẫu trên môi trường Staging | QA / Tester | [Ngày] | [Chưa làm] |
| Cập nhật tài liệu quy chuẩn DB Migration | Tech Lead | [Ngày] | [Hoàn thành] |
