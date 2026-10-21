---
name: spec-driven-coding
description: Lập trình dựa trên đặc tả (Spec-Driven Coding). Viết tài liệu yêu cầu (PRD), tài liệu kiến trúc kỹ thuật và quy tắc AI (.cursorrules / AGENTS.md) để AI thực hiện các dự án lớn tự động và chính xác.
---

# Kỹ Năng: Spec-Driven Coding (Lập Trình Dựa Trên Đặc Tả)

Kỹ năng này giải quyết vấn đề lớn nhất khi làm việc với AI: "Dự án càng lớn thì AI càng dễ quên ngữ cảnh và sinh code rác". Phương pháp này buộc AI phải tuân thủ tài liệu đặc tả (Spec) trước khi gõ code.

---

## 1. Quy Trình 3 Bước Chuẩn (SOP)

### Bước 1: Tạo Bộ 3 File Đặc Tả (The Triple-Spec)
Trước khi viết mã dự án mới, tạo 3 file tài liệu trong thư mục dự án:
1. **`PRD.md` (Product Requirements Document):**
   - Vấn đề cần giải quyết & Đối tượng người dùng mục tiêu.
   - User Stories theo format: *"Là một [người dùng], tôi muốn [hành động] để [lợi ích]"*.
   - Tiêu chí chấp nhận (Acceptance Criteria) rõ ràng cho từng tính năng.
2. **`ARCHITECTURE.md` (Technical Architecture):**
   - Lựa chọn công nghệ (Tech Stack) và lý do chọn.
   - Sơ đồ thư mục dự án.
   - Thiết kế cơ sở dữ liệu & API Contracts (Request/Response schemas).
3. **`TASKS.md` (Checklist thực hiện):**
   - Chia nhỏ toàn bộ dự án thành các nhiệm vụ độc lập, đánh dấu `[ ]` chưa làm và `[x]` đã xong.
   - Mỗi nhiệm vụ chỉ can thiệp vào một phạm vi nhỏ.

### Bước 2: Thiết Lập File Quy Tắc Hệ Thống (`AGENTS.md` / `.cursorrules`)
Định hình phong cách làm việc cho AI:
- Quy định ngôn ngữ sử dụng, thư viện cấm/ưu tiên dùng.
- Phong cách code (Functional components, TypeScript strict, CSS module).
- Quy chuẩn commit và cách chạy test.

### Bước 3: Vòng Lặp Thực Hiện Từng Task (One Task at a Time)
- AI chỉ thực hiện duy nhất 1 task trong `TASKS.md` tại một thời điểm.
- Sau khi viết code xong task đó:
  1. Tự chạy lệnh kiểm tra lỗi (build/lint/test).
  2. Đánh dấu `[x]` vào `TASKS.md`.
  3. Báo cáo ngắn gọn cho người dùng và chờ lệnh trước khi chuyển sang task tiếp theo.

---

## 2. Hướng Dẫn Tối Ưu Cho Từng Dòng Model

### 🌟 Dành cho Gemini 2.0 / GPT-4o
- **Yêu cầu thế mạnh:** Phân tích ý tưởng ban đầu của người dùng để sinh ra file `PRD.md` và bảng danh sách công việc `TASKS.md` bài bản.
- **Prompt mẫu:**
  ```text
  Theo skill `spec-driven-coding`:
  Tôi muốn làm một ứng dụng [Mô tả ý tưởng]. Hãy giúp tôi soạn thảo PRD.md và TASKS.md chi tiết chia theo từng bước nhỏ. Đừng viết code vội.
  ```

### 🧠 Dành cho Claude 3.7 / 3.5 Sonnet / Antigravity / Cursor
- **Yêu cầu thế mạnh:** Tuân thủ kỷ luật spec, đọc tài liệu kiến trúc và thực hiện chuẩn xác từng bước trong checklist mà không làm hỏng các phần khác.
- **Prompt mẫu:**
  ```text
  Áp dụng skill `spec-driven-coding`:
  Đọc file ARCHITECTURE.md và TASKS.md. Hãy thực hiện task tiếp theo đang ở trạng thái [ ]. Sau khi làm xong, chạy build kiểm tra và cập nhật file TASKS.md.
  ```
