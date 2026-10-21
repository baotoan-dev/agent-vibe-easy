---
name: skill-creator
description: Kỹ năng tạo ra kỹ năng mới (Meta-Skill: anthropics/skills@skill-creator). Tự động phân tích yêu cầu chuyên môn và đóng gói thành một file SKILL.md chuẩn hóa theo cấu trúc của Antigravity/Claude Code.
---

# Kỹ Năng: Skill Creator (Công Cụ Tạo Kỹ Năng Tự Động)

Kỹ năng này bắt nguồn từ `anthropics/skills@skill-creator`, cho phép bạn biến bất kỳ kiến thức, quy trình hoặc checklist nội bộ nào thành một Skill chính thức cho AI.

---

## 1. Quy Trình Tạo Một Skill Mới

Khi bạn yêu cầu: *"Hãy tạo một skill mới về [Chủ đề X]"*, AI sẽ thực hiện:

### Bước 1: Khai Báo Frontmatter Bắt Buộc
- `name`: Tên kỹ năng dạng kebab-case (chữ thường, nối dấu gạch ngang, ví dụ: `my-custom-skill`).
- `description`: Mô tả súc tích phạm vi, mục đích và điều kiện kích hoạt để AI tự biết khi nào cần nạp skill này.

### Bước 2: Thiết Kế Quy Trình Vận Hành Chuẩn (SOP)
- Phân rã kỹ năng thành 3-5 bước tuần tự.
- Đặt ra các nguyên tắc bắt buộc (Must-do) và các lỗi cấm kỵ (Don't).

### Bước 3: Cung Cấp Mẫu Câu Lệnh (Prompt Templates)
- Đưa ra mẫu câu prompt tối ưu cho từng trường hợp sử dụng.
- Thêm các ví dụ input và output mong đợi.

### Bước 4: Lưu File Vào Đúng Thư Mục Chuẩn
- Tạo thư mục `.agents/skills/<tên-kỹ-năng>/`
- Tạo tệp `SKILL.md` bên trong.

---

## 2. Hướng Dẫn Sử Dụng

### 🌟 Cách ra lệnh:
```text
Áp dụng skill `skill-creator`:
Tôi muốn tạo một kỹ năng mới tên là [Tên kỹ năng]. Kỹ năng này dùng để [Mô tả việc cần làm]. Hãy tạo file SKILL.md chuẩn hóa lưu vào thư mục .agents/skills/ cho tôi.
```
