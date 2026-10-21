---
name: git-workflow-collab
description: Quy trình làm việc và cộng tác mã nguồn với Git/GitHub chuẩn mực (Conventional Commits, Feature Branching, Pull Request, giải quyết xung đột Merge Conflict).
---

# Kỹ Năng: Git Workflow & GitHub Iterative Collaboration

Kỹ năng này chuẩn hóa cách quản lý mã nguồn, viết commit có ý nghĩa và cộng tác qua GitHub mà không sợ mất code.

---

## 1. Quy Trình 4 Bước Chuẩn (SOP)

### Bước 1: Quy Chuẩn Nhánh (Branching Strategy)
- Không bao giờ commit trực tiếp code thử nghiệm lên nhánh `main`.
- Tạo nhánh tính năng theo cấu trúc:
  - `feat/ten-tinh-nang`
  - `fix/ten-loi`
  - `docs/cap-nhat-tai-lieu`

### Bước 2: Chuẩn Commit Thông Minh (Conventional Commits)
- Sử dụng cú pháp: `<type>(<scope>): <mô tả ngắn bằng mệnh lệnh>`
  - `feat`: Tính năng mới cho người dùng.
  - `fix`: Sửa lỗi chương trình.
  - `docs`: Cập nhật tài liệu, README.
  - `refactor`: Tối ưu hóa code nhưng không đổi tính năng.
  - `style`: Định dạng code, dấu cách, prettier.
  - `test`: Bổ sung kiểm thử tự động.
- Ví dụ: `feat(auth): integrate Supabase social login with Google`

### Bước 3: Kiểm Tra Thay Đổi Trước Khi Push
Trước khi commit, luôn chạy:
```bash
git status
git diff
```
Đảm bảo không commit nhầm các file bí mật: `.env`, `node_modules/`, credentials API.

### Bước 4: Tạo Pull Request & Giải Quyết Xung Đột
- Luôn pull code mới nhất từ nhánh chính về trước khi merge:
  ```bash
  git checkout main
  git pull origin main
  git checkout feat/my-feature
  git merge main
  ```
- Nếu có xung đột (Conflict), đọc kỹ các dấu `<<<<<<< HEAD` và `>>>>>>>`, giữ lại phần code đúng và chạy test trước khi hoàn tất commit merge.

---

## 2. Hướng Dẫn Tối Ưu Cho Từng Dòng Model

### 🌟 Dành cho mọi AI Model / IDE
- **Prompt mẫu:**
  ```text
  Theo skill `git-workflow-collab`:
  Tôi vừa hoàn thành việc [mô tả việc vừa làm]. Hãy kiểm tra git diff và đề xuất cho tôi một commit message chuẩn Conventional Commits ngắn gọn, súc tích.
  ```
