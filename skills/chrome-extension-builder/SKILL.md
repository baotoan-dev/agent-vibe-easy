---
name: chrome-extension-builder
description: Xây dựng tiện ích mở rộng trình duyệt (Chrome/Edge Extension) sử dụng Manifest V3, Service Workers, Content Scripts và Popup UI.
---

# Kỹ Năng: Chrome Extension Builder (Manifest V3)

Kỹ năng này chuẩn hóa quy trình phát triển tiện ích mở rộng hiện đại cho trình duyệt Google Chrome và Microsoft Edge.

---

## 1. Cấu Trúc Dự Án Chuẩn (Manifest V3)

Mọi extension hiện đại bắt buộc phải tuân theo cấu trúc sau:
```
my-extension/
├── manifest.json       # Tệp cấu hình trung tâm (Manifest V3)
├── background.js       # Service worker chạy nền xử lý sự kiện
├── content.js          # Script can thiệp và đọc DOM trang web
├── popup/
│   ├── popup.html      # Giao diện người dùng khi click icon
│   ├── popup.css       # Phong cách giao diện
│   └── popup.js        # Logic điều khiển popup
└── icons/              # Bộ icon kích cỡ 16, 48, 128px
```

### Bước 1: Khai Báo `manifest.json` Chuẩn
- Bắt buộc `"manifest_version": 3`.
- Chỉ xin quyền (`permissions`) tối thiểu cần thiết (ví dụ: `activeTab`, `storage`, `scripting`).
- Tránh xin quyền bừa bãi như `<all_urls>` để dễ vượt qua vòng kiểm duyệt Chrome Web Store.

### Bước 2: Phân Biệt Luồng Xử Lý
1. **Content Script (`content.js`):** Chạy trong ngữ cảnh trang web người dùng đang xem, dùng để đọc nội dung bài viết, bôi đen từ khóa, chèn nút AI tóm tắt.
2. **Service Worker (`background.js`):** Xử lý tác vụ nền, gọi API bên ngoài, lưu trữ dữ liệu an toàn.
3. **Popup / Side Panel:** Giao diện điều khiển nhanh.

### Bước 3: Giao Tiếp Bằng Message Passing
- Kết nối giữa Popup và Content Script bằng API tin nhắn:
  ```javascript
  // Từ Popup gửi đến tab hiện tại
  chrome.tabs.query({ active: true, currentWindow: true }, (tabs) => {
    chrome.tabs.sendMessage(tabs[0].id, { action: "SUMMARIZE_PAGE" }, (response) => {
      console.log(response);
    });
  });
  ```

---

## 2. Hướng Dẫn Tối Ưu Cho Từng Dòng Model

### 🌟 Dành cho Claude / GPT-4o / Gemini
- **Prompt mẫu:**
  ```text
  Theo skill `chrome-extension-builder`:
  Hãy tạo trọn bộ mã nguồn tiện ích mở rộng Chrome Manifest V3:
  - Tính năng: Khi người dùng bôi đen văn bản trên bất kỳ trang web nào, một popup nhỏ hiện ra dịch văn bản đó sang tiếng Việt bằng AI.
  - Bao gồm: manifest.json, content.js, style.css, và background.js.
  ```
