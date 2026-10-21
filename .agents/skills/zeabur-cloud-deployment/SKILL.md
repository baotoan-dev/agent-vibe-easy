---
name: zeabur-cloud-deployment
description: "Triển khai ứng dụng Fullstack, Container và Cơ sở dữ liệu lên nền tảng đám mây Zeabur chỉ bằng một click hoặc Git webhook."
---

# Kỹ Năng Triển Khai Ứng Dụng Lên Nền Tảng Đám Mây Zeabur (Zeabur Cloud Deployment)

Kỹ năng này hướng dẫn AI agent cấu hình và triển khai các dự án Fullstack đa thành phần (Next.js/Vite + Node.js/Python API + PostgreSQL/Redis) lên Zeabur mà không cần bận tâm về quản trị hạ tầng phức tạp.

---

## 1. Ưu Điểm & Tính Năng Của Nền Tảng Zeabur

- **Tự động nhận diện Framework**: Zeabur tự động quét mã nguồn và chọn môi trường chạy phù hợp (Vite, Next.js, FastAPI, Flask, Go, Rust, Docker).
- **Cơ sở dữ liệu tích hợp sẵn chỉ với 1 click**: Khởi tạo PostgreSQL, MySQL, Redis, MongoDB có sẵn kết nối nội bộ riêng tư (Private Networking) siêu tốc.
- **Tự động cấp chứng chỉ SSL & Tên miền**: Hỗ trợ tên miền phụ `*.zeabur.app` miễn phí và gán Custom Domain tự động qua DNS CNAME.
- **Tính toán chi phí theo tài nguyên thực tế (Pay-as-you-go)**: Tiết kiệm chi phí tối đa cho cá nhân và nhóm phát triển khởi nghiệp.

---

## 2. Cấu Hình Tệp `zbpack.json` Chuẩn Cho Dự Án

Nếu dự án có yêu cầu cài đặt đặc biệt hoặc biến môi trường build:
```json
{
  "build_command": "npm run build",
  "start_command": "npm run preview -- --port 8080 --host 0.0.0.0",
  "output_directory": "docs/.vitepress/dist"
}
```

---

## 3. Quản Lý Biến Môi Trường (Environment Variables)

- Biến môi trường hệ thống được cấu hình trong mục Settings của từng dịch vụ trên Zeabur Dashboard.
- Sử dụng biến động tham chiếu liên dịch vụ (ví dụ: `${POSTGRES_CONNECTION_STRING}`) để kết nối backend với database an toàn mà không lộ mật khẩu.
