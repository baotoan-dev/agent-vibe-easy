# QUY TRÌNH TỐI ƯU HÓA HIỆU NĂNG (PERFORMANCE OPTIMIZATION WORKFLOW)

Quy trình này hướng dẫn các bước phân tích và cải thiện hiệu năng tải trang và thời gian đáp ứng API.

```
+------------------+     +-------------------+     +--------------------+     +-------------------+
| 1. PROFILE &     | --> | 2. BOTTLENECK     | --> | 3. SURGICAL        | --> | 4. BENCHMARK &    |
| MEASURE          |     | IDENTIFICATION    |     | OPTIMIZATION       |     | VERIFY            |
+------------------+     +-------------------+     +--------------------+     +-------------------+
```

---

## Bước 1: Đo Lường Hiện Trạng (Baseline Profile)
- Frontend: Chạy Lighthouse Audit để ghi nhận các chỉ số LCP, FID/INP, CLS, TBT.
- Bundle: Chạy công cụ phân tích kích thước bundle (`rollup-plugin-visualizer` hoặc `webpack-bundle-analyzer`).
- Backend: Đo thời gian phản hồi p50, p95, p99 của API qua logging.

## Bước 2: Xác Định Điểm Nghẽn (Bottlenecks)
- Hình ảnh chưa được nén hoặc chưa dùng định dạng WebP/AVIF.
- Các component nặng được tải ngay từ đầu thay vì tải lười (Code-splitting / Dynamic import).
- Cơ sở dữ liệu thiếu chỉ mục (missing index) hoặc truy vấn N+1.

## Bước 3: Tối Ưu Hóa Phẫu Thuật
- Áp dụng `v-lazy`, `loading="lazy"` cho media.
- Chia nhỏ chunk bundle qua Vite config `manualChunks`.
- Thêm tầng cache Redis hoặc HTTP Caching (`Cache-Control: public, max-age=31536000, immutable`).

## Bước 4: Kiểm Chứng Lại (Verify & Benchmark)
- Đo lường lại sau khi tối ưu.
- Đảm bảo điểm số Lighthouse đạt >= 90 và không gây lỗi hồi quy logic.
