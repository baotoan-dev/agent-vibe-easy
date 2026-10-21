---
name: to-spec
description: Chuyển đổi toàn bộ kết quả thảo luận từ grill-with-docs thành tài liệu đặc tả kỹ thuật chi tiết (Matt Pocock Skills - mattpocock/skills).
---

# Kỹ Năng: To-Spec (Tạo Tài Liệu Đặc Tả Kỹ Thuật)

Kỹ năng này là bước thứ hai trong chuỗi quy trình làm việc chuẩn của Matt Pocock: biến các câu trả lời phỏng vấn thành tài liệu kiến trúc kỹ thuật không thể hiểu nhầm.

---

## 1. Cấu Trúc Đặc Tả Đầu Ra Bắt Buộc

1. **Khung Quyết Định (Decisions Framework):** Tóm tắt các quyết định đã chốt trong buổi phỏng vấn.
2. **Mô Hình Dữ Liệu (Domain Models):**
   - Khai báo các Entity, Fields, Types, và Constraints.
3. **Các Thành Phần Cốt Lõi (Core Components):**
   - Bóc tách thành các module độc lập.
4. **Chiến Lược Kiểm Thử (Testing Strategy):**
   - Định nghĩa trước các bài kiểm thử tự động cần viết để nghiệm thu kết quả.

---

## 2. Hướng Dẫn Sử Dụng
```text
/to-spec
Dựa trên những gì chúng ta vừa thống nhất qua grill-with-docs, hãy tạo file SPEC.md hoàn chỉnh cho dự án.
```
