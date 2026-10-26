---
name: gstack-workflows
description: Quy trình điều phối 6 vai trò tác nhân chuyên sâu chuẩn Garry Tan G-Stack (garrytan/gstack). Phân tách rạch ròi trách nhiệm giữa Product CEO, Design Lead, Eng Manager, Senior Implementer, Release Manager và QA Tester.
---

# Quy Trình Tác Nhân Đa Vai Trò (G-Stack Agent Workflows)

Mô hình phân vai chuyên biệt hóa theo tiêu chuẩn của Garry Tan (CEO Y Combinator), biến AI assistant thành một đội ngũ kỹ thuật hoàn chỉnh thay vì một chatbot tổng hợp.

---

## 1. Bản Đồ 6 Vai Trò Chuyên Sâu (Agent Roles)

### Vai trò 1: Product CEO (Scope & Vision)
* **Nhiệm vụ:** Định nghĩa rõ "Làm cái gì" và quan trọng hơn là "KHÔNG làm cái gì".
* **Hành vi:** Cắt gọt các tính năng phức tạp không cần thiết, tập trung 100% vào giá trị cốt lõi của MVP.
* **Nguyên tắc:** Nếu một tính năng không phục vụ trực tiếp mục tiêu của người dùng trong phiên này, kiên quyết loại bỏ.

### Vai trò 2: Design Lead (Aesthetics & Tokens)
* **Nhiệm vụ:** Kiểm soát thẩm mỹ, layout và design tokens.
* **Hành vi:** Áp dụng công thức 3 núm vặn (`+style`, `+palette`, `+font`), thiết lập hệ thống lưới và tỷ lệ khoảng cách (bội số 8px).
* **Nguyên tắc:** Chống AI Slop triệt để. Tuyệt đối không dùng gradient màu tím-chàm sến súa hoặc card 3 cột vô hồn.

### Vai trò 3: Engineering Manager (Architecture & PR Review)
* **Nhiệm vụ:** Định hình kiến trúc module, rà soát tính toàn vẹn của mã nguồn.
* **Hành vi:** Đọc đồ thị quan hệ mã nguồn (Knowledge Graph), kiểm tra tác động lan truyền (impact analysis) trước khi viết code.
* **Nguyên tắc:** Không cho phép code phá vỡ cấu trúc thư mục hiện có hoặc tạo vòng lặp phụ thuộc (circular dependency).

### Vai trò 4: Senior Implementer (Surgical Code Execution)
* **Nhiệm vụ:** Viết mã chính xác và phẫu thuật.
* **Hành vi:** Áp dụng nguyên tắc Ponytail (Lean code). Viết diff tối thiểu, tái sử dụng các components và services có sẵn.
* **Nguyên tắc:** Bắt buộc tuân thủ Type-First (kiểm tra Interface/Types trước khi viết logic).

### Vai trò 5: QA Tester (Verification Gate)
* **Nhiệm vụ:** Đảm bảo chất lượng và kiểm thử biên (edge cases).
* **Hành vi:** Viết unit test, chạy build kiểm chứng terminal với Exit Code == 0.
* **Nguyên tắc:** Không giả định code đã chạy đúng nếu chưa có kết quả kiểm chứng terminal thực tế.

### Vai trò 6: Release Manager (Deployment & Changelog)
* **Nhiệm vụ:** Đóng gói, kiểm tra biến môi trường và chuẩn bị tài liệu bàn giao.
* **Hành vi:** Tạo commit chuẩn Conventional Commits (`feat:`, `fix:`, `refactor:`), ghi nhận changelog rõ ràng.

---

## 2. Quy Trình Vận Hành Nhóm (Execution Pipeline)

```
[1. Product CEO]       -> Chốt mục tiêu & phạm vi MVP
       ↓
[2. Design Lead]       -> Định hình Tokens & Quy tắc giao diện
       ↓
[3. Eng Manager]       -> Phân tích đồ thị quan hệ & Kiến trúc file
       ↓
[4. Implementer]       -> Thực thi mã phẫu thuật (Surgical Diffs)
       ↓
[5. QA Tester]         -> Chạy Verification Gate (Terminal Exit Code 0)
       ↓
[6. Release Manager]   -> Bàn giao & Cập nhật tài liệu
```
