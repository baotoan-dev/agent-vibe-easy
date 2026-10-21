---
name: docker-containerization
description: "Đóng gói ứng dụng vào Docker Container, tối ưu hóa kích thước Image qua Multi-stage build và điều phối đa dịch vụ bằng Docker Compose."
---

# Kỹ Năng Đóng Gói Ứng Dụng Bằng Docker (Docker & Containerization Mastery)

Kỹ năng này hướng dẫn AI agent viết Dockerfile chuẩn công nghiệp, tối ưu hóa layer caching, bảo mật container (Non-root user) và thiết lập môi trường phát triển đồng nhất.

---

## 1. Mẫu Dockerfile Tối Ưu Cho Node.js / Vite / VitePress (Multi-Stage Build)

```dockerfile
# Stage 1: Build dependencies & assets
FROM node:20-alpine AS builder
WORKDIR /app

# Tận dụng cache layer của Docker bằng cách copy package files trước
COPY package*.json ./
RUN npm ci

# Copy toàn bộ mã nguồn và thực hiện build
COPY . .
RUN npm run build

# Stage 2: Production runtime siêu nhẹ bằng Nginx
FROM nginx:alpine AS runner
COPY --from=builder /app/docs/.vitepress/dist /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
```

---

## 2. Quản Trị Đa Dịch Vụ Với `docker-compose.yml`

```yaml
version: '3.8'

services:
  web:
    build: .
    ports:
      - "80:80"
    environment:
      - NODE_ENV=production
    restart: unless-stopped
    depends_on:
      - redis

  redis:
    image: redis:7-alpine
    ports:
      - "6379:6379"
    volumes:
      - redis_data:/data
    restart: always

volumes:
  redis_data:
```

---

## 3. Quy Tắc Vàng Khi Đóng Gói Docker

1. Luôn khai báo `.dockerignore` để loại trừ `node_modules/`, `.git/`, `.env`, build artifacts tạm thời.
2. Không bao giờ chạy container dưới quyền `root` trên môi trường sản xuất; luôn tạo `USER node` hoặc tương đương.
3. Ghim cố định phiên bản tag của Base Image (ví dụ: `node:20.11-alpine` thay vì `node:latest`).
