---
name: seo-performance-optimization
description: Tối ưu hóa SEO toàn diện (Meta Tags, Open Graph, Sitemap, Schema.org JSON-LD, Semantic Hierarchy) và tăng tốc hiệu năng web (Core Web Vitals, Lazy Loading, Image Compression, Caching).
---

# Kỹ Năng: SEO & Web Performance Optimization

Kỹ năng này đảm bảo website của bạn vừa đạt thứ hạng cao trên các công cụ tìm kiếm (Google, Bing) vừa tải nhanh dưới 1 giây.

---

## 1. Danh Mục Tối Ưu SEO Bắt Buộc (SEO Checklist)

### 1. Thẻ Meta & Open Graph (Hiển thị đẹp khi chia sẻ link Facebook/Zalo/X)
```html
<title>Tiêu đề trang chứa từ khóa chính (Dưới 60 ký tự) | Tên Thương Hiệu</title>
<meta name="description" content="Mô tả tóm tắt nội dung hấp dẫn, thúc đẩy click (140-160 ký tự).">
<link rel="canonical" href="https://example.com/duong-dan-chuan">

<!-- Open Graph / Social Media -->
<meta property="og:type" content="website">
<meta property="og:title" content="Tiêu đề hiển thị mạng xã hội">
<meta property="og:description" content="Mô tả hấp dẫn">
<meta property="og:image" content="https://example.com/assets/og-banner.png">
<meta property="og:url" content="https://example.com/duong-dan">
<meta name="twitter:card" content="summary_large_image">
```

### 2. Phân Cấp Thẻ Ngữ Nghĩa (Semantic Heading Hierarchy)
- **Mỗi trang CHỈ CÓ DUY NHẤT MỘT thẻ `<h1>`** đại diện cho chủ đề chính của trang.
- Các mục con tuân theo thứ tự phân cấp nghiêm ngặt: `<h2>` ➔ `<h3>` ➔ `<h4>`. Cấm nhảy cóc từ `<h1>` xuống thẳng `<h3>`.
- Tất cả hình ảnh `<img>` bắt buộc phải có thuộc tính `alt` mô tả ngữ cảnh ảnh.

### 3. Dữ Liệu Có Cấu Trúc (Structured Data - Schema.org)
Nhúng JSON-LD để Google hiển thị Rich Snippets (ngôi sao đánh giá, giá tiền, câu hỏi thường gặp FAQ):
```html
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "SoftwareApplication",
  "name": "Tên Ứng Dụng",
  "operatingSystem": "Web, iOS, Android",
  "applicationCategory": "ProductivityApplication"
}
</script>
```

---

## 2. Tối Ưu Hiệu Năng & Core Web Vitals

1. **LCP (Largest Contentful Paint < 2.5s):**
   - Nén ảnh sang định dạng hiện đại (`.webp` hoặc `.avif`).
   - Thêm `loading="lazy"` cho tất cả ảnh nằm ngoài màn hình đầu tiên (Below-the-fold).
   - Thêm `fetchpriority="high"` cho ảnh Banner/Hero trên cùng.
2. **CLS (Cumulative Layout Shift < 0.1):**
   - Luôn khai báo trước thuộc tính `width` và `height` cho ảnh để trình duyệt dành sẵn khung diện tích, tránh bị giật bố cục khi ảnh tải xong.
3. **INP (Interaction to Next Paint < 200ms):**
   - Tránh các hàm JavaScript nặng chạy liên tục làm đơ luồng giao diện chính (Main thread).

---

## 3. Hướng Dẫn Tối Ưu Cho Từng Dòng Model

### 🌟 Dành cho mọi AI Model / IDE
- **Prompt mẫu:**
  ```text
  Theo skill `seo-performance-optimization`:
  Hãy tối ưu SEO toàn diện cho trang [Tên trang]: Thêm đầy đủ thẻ Meta, Open Graph, Twitter card, Schema.org JSON-LD và kiểm tra phân cấp heading h1-h3.
  ```
