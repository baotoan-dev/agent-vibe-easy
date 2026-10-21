---
name: cloud-deployment-devops
description: Triển khai ứng dụng lên các nền tảng đám mây (Vercel, Zeabur, Docker, Nginx), cấu hình biến môi trường Production, Custom Domain và CI/CD.
---

# Kỹ Năng: Cloud Deployment & DevOps for AI Products

Kỹ năng này chuẩn hóa cách đưa sản phẩm từ máy cá nhân (localhost) lên Internet toàn cầu cho người dùng thực tế truy cập.

---

## 1. Quy Trình Triển Khai Chuẩn

### Bước 1: Chuẩn Bị Môi Trường & Build Verification
Trước khi deploy, chạy thử bản build cục bộ để đảm bảo không dính lỗi TypeScript/Lint:
```bash
npm run build
```
Nếu có lỗi build, bắt buộc sửa triệt để trước khi đẩy lên nền tảng đám mây.

### Bước 2: Thiết Lập Biến Môi Trường (Environment Variables)
- **Tuyệt đối không đẩy file `.env` lên GitHub.**
- Tạo file `.env.example` liệt kê đầy đủ các key cần thiết.
- Khai báo các key tương ứng trên bảng điều khiển Vercel / Zeabur:
  - `DATABASE_URL`
  - `SUPABASE_SERVICE_ROLE_KEY`
  - `STRIPE_SECRET_KEY`
  - `OPENAI_API_KEY` / `GEMINI_API_KEY`

### Bước 3: Cấu Hình Triển Khai Tương Thích Nền Tảng
1. **Frontend / VitePress / Next.js:** Dùng `vercel.json` để định tuyến và cache tài sản tĩnh:
   ```json
   {
     "framework": "vitepress",
     "buildCommand": "npm run build",
     "outputDirectory": "docs/.vitepress/dist"
   }
   ```
2. **Full-stack / Container:** Dùng `Dockerfile` đa tầng (Multi-stage build) để giảm kích thước image.

### Bước 4: Kiểm Tra Health Check & Custom Domain
- Cấu hình bản ghi DNS (CNAME, A record) trỏ về máy chủ đám mây.
- Kích hoạt chứng chỉ SSL tự động (HTTPS).
- Kiểm tra lại các webhook URL trên Stripe / Supabase để chuyển từ `localhost` sang domain production chính thức.

---

## 2. Hướng Dẫn Tối Ưu Cho Từng Dòng Model

### 🌟 Dành cho mọi AI Model / IDE
- **Prompt mẫu:**
  ```text
  Theo skill `cloud-deployment-devops`:
  Tôi muốn deploy dự án này lên Vercel. Hãy kiểm tra các file cấu hình hiện tại, viết file vercel.json phù hợp và liệt kê danh sách các biến môi trường tôi cần điền vào Dashboard.
  ```
