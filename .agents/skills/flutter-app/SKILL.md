---
name: flutter-app
description: "Phát triển ứng dụng di động đa nền tảng (iOS, Android, Web, Desktop) hiệu năng cao bằng Flutter và ngôn ngữ Dart."
---

# Kỹ Năng Phát Triển Ứng Dụng Flutter (Flutter & Dart Mastery)

Kỹ năng này hướng dẫn AI agent thiết kế, xây dựng và tối ưu hóa ứng dụng di động hiệu năng cao đạt chuẩn 60-120fps bằng Flutter framework và Dart.

---

## 1. Nguyên Tắc Kiến Trúc Flutter Chuẩn

1. **Quản Lý Trạng Thái (State Management)**:
   - Ưu tiên **Riverpod** (khuyến nghị cho dự án hiện đại) hoặc **Bloc/Cubit** (cho dự án doanh nghiệp lớn).
   - Tránh lạm dụng `setState` tràn lan ở tầng root widget gây render lại toàn bộ cây widget.
2. **Cấu Trúc Thư Mục Tính Năng (Feature-First Architecture)**:
   ```
   lib/
   ├── core/                  # Theme, utils, network client, constants
   ├── features/
   │   ├── auth/
   │   │   ├── data/          # Repositories, data sources, DTOs
   │   │   ├── domain/        # Entities, use cases
   │   │   └── presentation/  # Screens, widgets, state providers
   │   └── dashboard/
   └── main.dart
   ```
3. **Widget Reusability & Const Constructors**:
   - Luôn sử dụng từ khóa `const` trước các Widget tĩnh để Flutter engine bỏ qua việc build lại.
   - Tách nhỏ các widget phức tạp thành các Widget chuyên biệt thay vì viết một hàm helper trả về `Widget`.

---

## 2. Quy Trình Xây Dựng UI & Tương Tác

- **Responsive & Adaptive**: Dùng `LayoutBuilder`, `MediaQuery` và component thích ứng theo hệ điều hành (`Cupertino` cho iOS, `Material 3` cho Android).
- **Network & Caching**: Sử dụng thư viện `dio` kết hợp `cached_network_image`.
- **Platform Channels**: Giao tiếp với mã nguồn Native (Kotlin/Swift) khi cần truy cập tính năng phần cứng chuyên sâu.
