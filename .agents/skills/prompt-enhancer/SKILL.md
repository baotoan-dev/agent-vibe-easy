---
name: prompt-enhancer
description: Tự động biên dịch câu văn thông thường thành câu prompt mỏ neo (Anchor Prompting) chuẩn xác, tích hợp đầy đủ cờ tham số Graphify, Ponytail, UI/UX Pro Max, và Verification Gate.
---

# Kỹ Năng Nâng Cấp Câu Lệnh (Prompt Enhancer)

Biến các câu yêu cầu tự nhiên bằng tiếng Việt thông thường thành các câu lệnh mỏ neo có cấu trúc chuẩn xác cấp doanh nghiệp dành cho AI Coding Agent.

---

## 1. Mục Đích & Khi Nào Sử Dụng

Sử dụng khi bạn muốn:
* Gõ một câu ngắn gọn và yêu cầu AI xuất ra câu prompt tối ưu hoàn chỉnh.
* Sử dụng qua lệnh gạch chéo `/enhance [câu văn của bạn]`.

---

## 2. Quy Trình Chuyển Đổi

Khi nhận một câu văn như:
> *"Làm trang thống kê đơn hàng và xuất excel"*

Prompt Enhancer sẽ phân tích cú pháp và tự động xuất ra:
```text
Thực hiện tính năng thống kê đơn hàng và xuất Excel tại [Đường dẫn file].
+graph: graph.json
+rule: ponytail
+style: Linear Minimalist
+rule: no-icon
+audit: cloudflare
Yêu cầu:
1. Tra cứu graph.json để tái sử dụng toàn bộ TableComponent, ButtonComponent và ExcelExporterService trong shared/.
2. Cấm viết hàm trùng lặp; cấm over-engineering; giữ diff phẫu thuật tối thiểu.
3. Không chèn icon/emoji rác trên bảng hay tiêu đề.
4. Chạy terminal build kiểm chứng bảo đảm exit code == 0 trước khi bàn giao.
```
