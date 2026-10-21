---
name: wechat-miniprogram
description: "Phát triển ứng dụng WeChat Mini-Program (Tiểu chương trình WeChat) sử dụng WXML, WXSS, JavaScript/TypeScript và WeChat CloudBase."
---

# Kỹ Năng Lập Trình WeChat Mini-Program (WeChat Mini-Program Mastery)

Kỹ năng này hướng dẫn AI agent thiết kế giao diện di động nhẹ, tương tác mượt mà và tích hợp hệ thống thanh toán WeChat Pay, xác thực người dùng và Cloud Functions.

---

## 1. Cấu Trúc Bốn Tệp Cốt Lõi Của Mỗi Trang

Mỗi trang trong Mini-Program bao gồm 4 tệp cùng tên:
1. `index.wxml`: Cấu trúc thẻ giao diện tương tự HTML (`<view>`, `<text>`, `<image>`, `<button>`).
2. `index.wxss`: Phong cách CSS hỗ trợ đơn vị responsive `rpx` (750rpx = toàn màn hình).
3. `index.json`: Khai báo cấu hình trang, tiêu đề thanh điều hướng và component phụ thuộc.
4. `index.js` / `index.ts`: Quản lý dữ liệu `data` và hàm sự kiện (`Page({})`).

---

## 2. Kỷ Luật Cập Nhật Trạng Thái với `this.setData`

- **Không gán trực tiếp**: Tuyệt đối không viết `this.data.count = 5` vì không kích hoạt cập nhật giao diện.
- **Tối ưu tần suất gọi**: Gom nhóm các biến cần cập nhật vào một lượt gọi `this.setData({})` duy nhất.
- **Tránh truyền khối dữ liệu quá lớn**: Không truyền đối tượng mảng vượt quá giới hạn 1MB vào `setData`.

```javascript
Page({
  data: {
    userInfo: null,
    hasUserInfo: false,
  },
  onLoad() {
    // Khởi tạo trang
  },
  handleLogin(e) {
    this.setData({
      userInfo: e.detail.userInfo,
      hasUserInfo: true
    });
  }
});
```
