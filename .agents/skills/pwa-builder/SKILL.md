---
name: pwa-builder
description: "Chuyển đổi và xây dựng ứng dụng web thành Progressive Web App (PWA) hỗ trợ cài đặt trực tiếp, hoạt động ngoại tuyến (Offline) và Push Notifications."
---

# Kỹ Năng Xây Dựng Ứng Dụng Web Lũy Tiến (PWA Builder)

Kỹ năng này hướng dẫn AI agent nâng cấp website thành ứng dụng có khả năng cài đặt lên màn hình chính (A2HS - Add to Home Screen), chạy mượt khi mất kết nối mạng và đồng bộ nền.

---

## 1. Ba Trụ Cột Kỹ Thuật PWA

1. **Giao thức HTTPS**: Bắt buộc để trình duyệt cấp phép chạy Service Worker và Notification API.
2. **Web App Manifest (`manifest.webmanifest`)**:
   - Định nghĩa tên app, biểu tượng (`icons` 192x192, 512x512, maskable), màu chủ đạo (`theme_color`), chế độ hiển thị (`display: "standalone"`).
3. **Service Worker (`sw.js`)**:
   - Chạy ở luồng nền (background thread) độc lập với DOM.
   - Chặn và điều hướng các yêu cầu mạng (`fetch`).

---

## 2. Chiến Lược Lưu Bộ Nhớ Đệm (Caching Strategies)

- **Cache First (Ưu tiên bộ nhớ đệm)**: Dùng cho tài nguyên tĩnh (fonts, ảnh logo, CSS, JS bundle). Nếu có trong cache thì trả về ngay, không gửi request mạng.
- **Network First (Ưu tiên mạng)**: Dùng cho dữ liệu động API, bài viết mới. Thử gọi mạng trước; nếu offline thì fallback về cache cũ nhất.
- **Stale-While-Revalidate**: Trả về dữ liệu trong cache ngay lập tức để người dùng không phải chờ, đồng thời âm thầm gọi mạng tải phiên bản mới và cập nhật cache cho lần sau.

```javascript
// Chiến lược Stale-While-Revalidate trong Service Worker
self.addEventListener('fetch', (event) => {
  event.respondWith(
    caches.open('dynamic-v1').then((cache) => {
      return cache.match(event.request).then((cachedResponse) => {
        const fetchPromise = fetch(event.request).then((networkResponse) => {
          cache.put(event.request, networkResponse.clone());
          return networkResponse;
        });
        return cachedResponse || fetchPromise;
      });
    })
  );
});
```
