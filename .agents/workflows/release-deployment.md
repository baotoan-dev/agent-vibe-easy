# QUY TRÌNH PHÁT HÀNH & TRIỂN KHAI (RELEASE & DEPLOYMENT WORKFLOW)

Quy trình này hướng dẫn các bước đóng gói phiên bản mới, kiểm tra điều kiện phát hành và triển khai lên môi trường Production.

---

## Bước 1: Kiểm Tra Điều Kiện Phát Hành (Pre-Release Checklist)
- [ ] Toàn bộ test suite vượt qua 100% (`npm test` hoặc `npm run build`).
- [ ] Không còn lỗi lint hoặc typescript compilation error (`npm run type-check`).
- [ ] Các bí mật môi trường (`.env.production`) đã được cấu hình đầy đủ trên Dashboard của nền tảng (Vercel/Zeabur).

## Bước 2: Sinh Nhật Ký Thay Đổi & Gắn Nhãn Phiên Bản (Changelog & Semantic Tag)
- Tổng hợp commit theo chuẩn Conventional Commits (`feat:`, `fix:`, `perf:`).
- Cập nhật số phiên bản trong `package.json` theo Semantic Versioning (`MAJOR.MINOR.PATCH`).
- Tạo Git tag: `git tag -a v1.2.0 -m "Release version 1.2.0"`.

## Bước 3: Đẩy Lên Nhánh Phát Hành (Trigger CI/CD)
- Đẩy tag lên kho lưu trữ từ xa: `git push origin v1.2.0`.
- GitHub Actions tự động kích hoạt pipeline build, test và deploy.

## Bước 4: Kiểm Thử Khói Trên Môi Trường Trực Tiếp (Smoke Testing)
- Kiểm tra các endpoint trọng yếu: `/health`, `/api/auth/session`.
- Xác minh tài nguyên tĩnh (CSS, JS) tải đúng và không bị lỗi 404 cache cũ.
- Nếu phát hiện sự cố nghiêm trọng, lập tức kích hoạt quy trình Rollback về phiên bản trước.
