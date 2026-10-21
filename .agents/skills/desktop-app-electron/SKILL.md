---
name: desktop-app-electron
description: Đóng gói và phát triển ứng dụng máy tính đa nền tảng (Windows, macOS, Linux) bằng Electron hoặc Tauri, tích hợp các tính năng hệ thống (Khay hệ thống Tray, Phím tắt toàn cục, Đọc ghi file cục bộ).
---

# Kỹ Năng: Desktop App Development (Electron & Tauri)

Kỹ năng này chuẩn hóa cách biến một ứng dụng web thành phần mềm cài đặt chạy trực tiếp trên máy tính cá nhân.

---

## 1. Cấu Trúc Kiến Trúc Chuẩn (Process Model)

Electron vận hành theo mô hình 2 tiến trình:
1. **Main Process (`main.js`):** Chạy trên Node.js, quản lý vòng đời ứng dụng, tạo cửa sổ `BrowserWindow`, giao tiếp với hệ điều hành (menu, khay hệ thống, file system).
2. **Renderer Process (`renderer.js`):** Giao diện web hiển thị cho người dùng (HTML/CSS/JS).
3. **Preload Script (`preload.js`):** Cầu nối an toàn duy nhất giữa Main và Renderer thông qua `contextBridge.exposeInMainWorld`.

### Nguyên Tắc Bảo Mật Tuyệt Đối (Security Defaults)
- Bắt buộc tắt `nodeIntegration: false`.
- Bắt buộc bật `contextIsolation: true`.
- Giao tiếp dữ liệu giữa 2 tiến trình bằng kênh IPC bất đồng bộ (`ipcMain.handle` và `ipcRenderer.invoke`).

---

## 2. Hướng Dẫn Tối Ưu Cho Từng Dòng Model

### 🌟 Dành cho mọi AI Model / IDE
- **Prompt mẫu:**
  ```text
  Theo skill `desktop-app-electron`:
  Hãy tạo cấu trúc khung Electron an toàn gồm main.js, preload.js và index.html:
  - Cửa sổ ứng dụng kích thước 1000x700, không viền (frameless).
  - Có tính năng click nút để lưu nội dung text vào một file trên máy tính thông qua IPC an toàn.
  ```
