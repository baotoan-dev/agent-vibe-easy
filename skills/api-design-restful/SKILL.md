---
name: api-design-restful
description: Thiết kế API RESTful chuẩn mực cấp doanh nghiệp (HTTP Verbs, Mã trạng thái HTTP, Cấu trúc JSON Error nhất quán, Phân trang Cursor/Offset, Rate Limiting, OpenAPI/Swagger).
---

# Kỹ Năng: Enterprise RESTful API Design

Kỹ năng này chuẩn hóa cách thiết kế và xây dựng các giao diện lập trình ứng dụng (API) rõ ràng, dễ hiểu, bảo mật và tương thích lâu dài.

---

## 1. Quy Chuẩn Đặt Tên & Phương Thức HTTP

### Danh Từ Số Nhiều (Plural Nouns)
- `GET /api/v1/courses`: Lấy danh sách khóa học.
- `GET /api/v1/courses/:id`: Lấy chi tiết một khóa học.
- `POST /api/v1/courses`: Tạo khóa học mới.
- `PUT /api/v1/courses/:id`: Thay thế toàn bộ bản ghi khóa học.
- `PATCH /api/v1/courses/:id`: Cập nhật một phần trường của khóa học.
- `DELETE /api/v1/courses/:id`: Xóa khóa học.
- **Tài nguyên lồng nhau (Sub-resources):** `GET /api/v1/courses/:id/lessons` (danh sách bài học trong khóa).

### Chuẩn Mã Trạng Thái HTTP (Status Codes)
- `200 OK`: Thành công (GET, PUT, PATCH).
- `201 Created`: Tạo mới thành công (POST).
- `204 No Content`: Xóa thành công, không có body trả về (DELETE).
- `400 Bad Request`: Dữ liệu đầu vào không hợp lệ (Validation failed).
- `401 Unauthorized`: Chưa đăng nhập hoặc token hết hạn.
- `403 Forbidden`: Đã đăng nhập nhưng không có quyền truy cập.
- `404 Not Found`: Không tìm thấy tài nguyên.
- `429 Too Many Requests`: Vượt quá giới hạn gọi API (Rate limit exceeded).
- `500 Internal Server Error`: Lỗi sập hệ thống không mong muốn từ máy chủ.

---

## 2. Định Dạng Phản Hồi Chuẩn (Envelope & Error Schema)

### Phản Hồi Thành Công
```json
{
  "success": true,
  "data": { ... },
  "pagination": {
    "page": 1,
    "limit": 20,
    "total": 150,
    "has_next": true
  }
}
```

### Phản Hồi Thất Bại Thống Nhất
```json
{
  "success": false,
  "error": {
    "code": "INVALID_INPUT",
    "message": "Trường email không đúng định dạng.",
    "details": [
      { "field": "email", "issue": "Must be a valid email address" }
    ]
  }
}
```

---

## 3. Hướng Dẫn Tối Ưu Cho Từng Dòng Model

### 🌟 Dành cho mọi AI Model / IDE
- **Prompt mẫu:**
  ```text
  Theo skill `api-design-restful`:
  Hãy thiết kế toàn bộ các endpoint API cho module [Tên module]:
  - Liệt kê đầy đủ method, endpoint, request body, query params và response mẫu.
  - Xử lý mã trạng thái HTTP chuẩn và cấu trúc phản hồi lỗi đồng nhất.
  ```
