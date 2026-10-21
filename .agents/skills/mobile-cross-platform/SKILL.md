---
name: mobile-cross-platform
description: Phát triển ứng dụng di động đa nền tảng (iOS & Android) bằng React Native Expo hoặc Flutter, tối ưu hóa giao diện di động (Touch Gestures, Safe Area, Camera, Offline Storage).
---

# Kỹ Năng: Mobile Cross-Platform Development (React Native & Flutter)

Kỹ năng này chuẩn hóa quy trình phát triển ứng dụng di động có thể chạy trên cả iOS và Android từ một cơ sở mã nguồn duy nhất.

---

## 1. Quy Trình Chuẩn (SOP)

### Bước 1: Lựa Chọn Công Nghệ Phù Hợp
- **React Native + Expo:** Lựa chọn số 1 cho người đã biết Web/JavaScript, cần phát triển cực nhanh và xem trước tức thì qua app Expo Go trên điện thoại thật.
- **Flutter (Dart):** Lựa chọn ưu tiên cho các ứng dụng yêu cầu hiệu năng đồ họa cao, animation phức tạp 60fps đồng nhất trên mọi dòng máy.

### Bước 2: Nguyên Tắc Thiết Kế Cho Thiết Bị Di Động
- **Safe Area:** Luôn bọc giao diện trong `<SafeAreaView>` để tránh bị tai thỏ (Notch) hoặc thanh điều hướng che khuất nội dung.
- **Vùng chạm cảm ứng (Touch Target):** Kích thước nút bấm tối thiểu là 44x44 points.
- **Xử lý bàn phím:** Dùng `KeyboardAvoidingView` để khi bàn phím ảo bật lên không che mất ô nhập dữ liệu.

### Bước 3: Đóng Gói & Xuất Bản (Build & Publishing)
- Sử dụng Expo EAS Build (`eas build -p android` / `eas build -p ios`) để tự động tạo file `.apk`, `.aab`, `.ipa` trên cloud mà không cần máy Mac mạnh.

---

## 2. Hướng Dẫn Tối Ưu Cho Từng Dòng Model

### 🌟 Dành cho mọi AI Model / IDE
- **Prompt mẫu:**
  ```text
  Theo skill `mobile-cross-platform`:
  Hãy tạo màn hình danh sách sản phẩm bằng React Native Expo:
  - Có FlatList hỗ trợ kéo để làm mới (Pull-to-refresh).
  - Sử dụng SafeAreaView.
  - Giao diện dạng 2 cột thẻ sản phẩm đẹp mắt.
  ```
