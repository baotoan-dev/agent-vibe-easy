---
name: remotion-video
description: Tạo video đồ họa chuyển động, hoạt ảnh chữ, biểu đồ dữ liệu và video demo sản phẩm bằng mã nguồn React và Remotion (remotion-dev/skills).
---

# Kỹ Năng: Remotion Video Creation (Tạo Video Bằng Code)

Kỹ năng này bắt nguồn từ `remotion-dev/skills`, biến AI thành một "nhà dựng phim đồ họa" tạo ra video chất lượng 4K/60fps từ mã nguồn React.

---

## 1. Cấu Trúc Dự Án Remotion Chuẩn

```
my-video/
├── src/
│   ├── Root.tsx         # Định nghĩa các Composition (kích cỡ, FPS, thời lượng)
│   ├── Composition.tsx  # Cảnh quay chính và timeline
│   └── components/      # Các thành phần hoạt ảnh độc lập
└── package.json
```

### Các Khái Niệm Cốt Lõi Trong Remotion
1. **`useCurrentFrame()`:** Lấy số khung hình hiện tại trong timeline (ví dụ: ở 30fps, giây thứ 2 là frame 60).
2. **`interpolate()`:** Hàm biến thiên tuyến tính/mượt mà để dịch chuyển vị trí, độ mờ (opacity), góc xoay (rotation) từ frame A đến frame B.
3. **`spring()`:** Hàm tạo chuyển động vật lý nảy (bouncy), mượt tự nhiên không bị giật.
4. **`Sequence`:** Phân đoạn từng cảnh (Scene 1: frame 0-60, Scene 2: frame 60-150).

---

## 2. Hướng Dẫn Tối Ưu Cho Từng Dòng Model

### 🌟 Dành cho mọi AI Model / IDE
- **Prompt mẫu:**
  ```text
  Áp dụng skill `remotion-video`:
  Hãy viết code component Remotion dài 10 giây (30fps, 1920x1080):
  - 3 giây đầu: Dòng chữ [Tiêu đề] trượt từ dưới lên kèm hiệu ứng spring nảy nhẹ.
  - 4 giây tiếp theo: Một biểu đồ cột tăng dần từ 0 đến 100%.
  - 3 giây cuối: Logo và nút CTA xuất hiện mờ dần (fade-in).
  ```
