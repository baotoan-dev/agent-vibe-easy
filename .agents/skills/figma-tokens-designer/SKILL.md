---
name: figma-tokens-designer
description: "Trích xuất và đồng bộ Design Tokens (màu sắc, font chữ, khoảng cách, bo góc) từ Figma / MasterGo sang mã nguồn CSS / Tailwind / Style Dictionary."
---

# Kỹ Năng Trích Xuất & Quản Trị Design Tokens (Figma to Tokens Pipeline)

Kỹ năng này hướng dẫn AI agent kết nối cầu nối giữa nhà thiết kế UI (Figma/MasterGo) và kỹ sư lập trình, biến các biến thiết kế (Variables & Tokens) thành mã nguồn thực tế.

---

## 1. Cấu Trúc Phân Tầng Design Tokens

1. **Global Tokens (Căn bản)**: Giá trị màu sắc thô, không gắn liền ngữ cảnh.
   - `blue-500: #3b82f6`
   - `gray-900: #111827`
2. **Semantic / Alias Tokens (Ngữ nghĩa)**: Ánh xạ từ Global Token sang vai trò trong hệ thống.
   - `color-bg-primary: var(--blue-500)`
   - `color-text-body: var(--gray-900)`
   - `color-interactive-hover: var(--blue-600)`
3. **Component Tokens (Thành phần cụ thể)**: Áp dụng trực tiếp vào component.
   - `button-primary-bg: var(--color-bg-primary)`
   - `button-border-radius: 8px`

---

## 2. Quy Trình Tự Động Hóa Đồng Bộ

1. **Trích xuất JSON**: Đọc cấu trúc export từ Figma Tokens / Tokens Studio plugin.
2. **Chuyển đổi đa nền tảng bằng Style Dictionary**:
   - Web: Biến đổi thành file CSS Variables (`:root { --color-primary: ... }`).
   - Tailwind: Biến đổi thành `tailwind.config.js` theme extend.
   - Mobile: Biến đổi thành Dart class cho Flutter hoặc TypeScript object cho React Native.
3. **Bảo toàn Nhất quán**: Mọi sự thay đổi trên Figma chỉ cần chạy lại lệnh build để cập nhật toàn bộ giao diện sản phẩm mà không cần sửa code thủ công từng tệp.
