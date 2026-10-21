---
name: grill-with-docs
description: Chất vấn và làm rõ yêu cầu dự án (Matt Pocock Skills - mattpocock/skills). Phỏng vấn chuyên sâu qua nhiều vòng để xác định phạm vi làm và KHÔNG làm, thống nhất thuật ngữ trước khi viết spec.
---

# Kỹ Năng: Grill With Docs (Chất Vấn Yêu Cầu Chuyên Sâu)

Kỹ năng này bắt nguồn từ `mattpocock/skills`. Thay vì vội vã viết code ngay sau một câu mô tả ngắn của người dùng, AI sẽ đóng vai trò Product & Tech Partner để "chất vấn" làm rõ mọi ngóc ngách của dự án.

---

## 1. Quy Trình Phỏng Vấn Thu Hẹp Yêu Cầu

### Bước 1: Xác Định 3 Khía Cạnh Quyết Định
1. **Phạm vi tính năng (Scope):** Tính năng tối thiểu để tạo thành một vòng khép kín (Minimum Viable Loop) là gì?
2. **Danh sách KHÔNG LÀM (Out-of-Scope):** Những tính năng nào nhất quyết KHÔNG làm ở phiên bản v1 để tránh phình to dự án?
3. **Lưu trữ & Dữ liệu (Data Boundary):** Dữ liệu lưu cục bộ (Local JSON) hay trên Cloud? Có cần tài khoản đăng nhập hay không?

### Bước 2: Đồng Bộ Thuật Ngữ Dự Án (Project Language / CONTEXT.md)
Làm rõ các từ khóa dễ gây nhầm lẫn:
- Ví dụ: `Interaction` là bản ghi giao tiếp có ngày tháng, không dùng từ `Event` hay `Activity`.
- Tránh việc AI trong các bước sau tự ý đổi tên thực thể trong code.

### Bước 3: Ghi Nhận Quyết Định Kiến Trúc Quan Trọng (ADR)
Chỉ ghi nhận những quyết định khó đảo ngược (ví dụ: Local-first vs Cloud-first, Native vs Webview) thành file ADR.

### Bước 4: Yêu Cầu Xác Nhận Trước Khi Chuyển Sang `to-spec`
Chỉ khi người dùng nói *"Đồng ý phạm vi này"* thì mới kết thúc bước phỏng vấn.

---

## 2. Hướng Dẫn Sử Dụng
```text
/grill-with-docs
Tôi muốn làm một ứng dụng [Mô tả ngắn gọn ý tưởng của bạn].
```
