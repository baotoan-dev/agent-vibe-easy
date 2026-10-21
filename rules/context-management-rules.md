# Quy Tắc Quản Lý Ngữ Cảnh AI (Context Management Rules - Boris Cherny Best Practice)

Quy tắc này bắt nguồn từ hướng dẫn thực hành tốt nhất của Boris Cherny (Trưởng dự án Claude Code tại Anthropic). Mục đích: Giữ cho bộ nhớ ngữ cảnh của AI luôn sắc bén, tránh hiện tượng suy giảm trí tuệ do nhồi nhét dữ liệu rác.

---

## 1. Tìm Kiếm Trước Khi Đọc Toàn Bộ (Search Before Read)
- **Không đọc toàn bộ file lớn:** Nếu chỉ cần tìm một hàm hoặc biến, bắt buộc dùng công cụ tìm kiếm (Grep/Ripgrep) để định vị dòng cụ thể thay vì nạp cả file 2000 dòng vào ngữ cảnh.
- **Đọc có chọn lọc:** Chỉ đọc đúng phạm vi dòng cần can thiệp (ví dụ dòng 100-150).

---

## 2. Giữ Thư Mục Gọn Gàng & Bỏ Qua File Rác (Ignore Noise)
- Tuyệt đối cấm AI đọc các thư mục sau vào ngữ cảnh:
  - `node_modules/`, `dist/`, `.vitepress/dist/`, `.vitepress/cache/`, `build/`
  - File lock khổng lồ: `package-lock.json`, `pnpm-lock.yaml`, `yarn.lock`
  - File log, minified JS, file bundle nhị phân.

---

## 3. Quản Lý Tiến Trình Dự Án Dài Hạn (Compact & Reset)
- Khi hoàn thành một giai đoạn lớn (Milestone), tổng hợp lại tóm tắt ngắn gọn các quyết định kiến trúc vào file `TASKS.md` hoặc `ARCHITECTURE.md` để giải phóng bộ nhớ trao đổi cũ.
