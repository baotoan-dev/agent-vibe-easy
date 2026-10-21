---
name: web-scraping-crawler
description: Thu thập và trích xuất dữ liệu web tự động (Web Scraping & Crawling) bằng Puppeteer, Playwright hoặc Cheerio để cấp dữ liệu cho mô hình AI và pipeline RAG.
---

# Kỹ Năng: Web Scraping & Intelligent Data Crawler

Kỹ năng này chuẩn hóa cách thu thập dữ liệu từ các trang web (tin tức, tài liệu, giá sản phẩm) sạch sẽ và tuân thủ đạo đức mạng.

---

## 1. Quy Trình 3 Bước Thu Thập Dữ Liệu

### Bước 1: Lựa Chọn Công Cụ Theo Loại Trang Web
- **Trang tĩnh (Server-rendered HTML):** Dùng `Cheerio` + `fetch` để cào siêu nhanh, tốn ít RAM.
- **Trang động (Single Page App React/Vue):** Dùng `Puppeteer` hoặc `Playwright` để đợi JavaScript render xong, xử lý cuộn trang (Infinite scroll).

### Bước 2: Làm Sạch Dữ Liệu (Content Cleaning)
- Loại bỏ toàn bộ các thẻ rác: `<script>`, `<style>`, `<nav>`, `<footer>`, quảng cáo và banner pop-up.
- Trích xuất nội dung bài viết chính thành văn bản thuần hoặc Markdown có cấu trúc.

### Bước 3: Đạo Đức Thu Thập (Scraping Ethics & Rate Limit)
- Luôn kiểm tra file `robots.txt` của website mục tiêu.
- Thêm độ trễ ngẫu nhiên giữa các request (1-3 giây) để không làm quá tải máy chủ của trang đích.

---

## 2. Hướng Dẫn Sử Dụng
```text
Áp dụng skill `web-scraping-crawler`:
Hãy viết script Node.js dùng Puppeteer để cào danh sách tiêu đề và link của 10 bài viết mới nhất trên trang [URL] và xuất ra file JSON.
```
