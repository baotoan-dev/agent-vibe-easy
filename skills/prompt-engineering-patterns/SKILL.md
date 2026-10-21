---
name: prompt-engineering-patterns
description: "Bộ mẫu kỹ nghệ câu lệnh cao cấp (Few-Shot, Chain-of-Thought, ReAct, Structured Output) tối ưu hóa độ chính xác và kiểm soát hành vi mô hình ngôn ngữ lớn."
---

# Kỹ Nghệ Câu Lệnh Chuyên Sâu (Prompt Engineering Patterns)

Kỹ năng này cung cấp các mẫu thiết kế prompt tiêu chuẩn công nghiệp nhằm tối ưu hiệu năng suy luận, ngăn chặn ảo giác (hallucination) và đảm bảo định dạng đầu ra chuẩn xác cho LLM.

---

## 1. Cấu Trúc Khung Prompt Chuẩn (CRISPE Framework)

Một prompt chuyên nghiệp dành cho AI Coding Agent cần tuân thủ 5 thành phần cốt lõi:

```markdown
# 1. CAPACITY & ROLE (Vai trò)
Bạn là Kỹ sư Trưởng Fullstack chuyên về Vue 3, Vite và TypeScript.

# 2. CONTEXT (Bối cảnh dự án)
Dự án Easy-Vibe hiện sử dụng VitePress, Node >= 18, không cài sẵn TailwindCSS.

# 3. INSTRUCTION (Chỉ thị hành động cụ thể)
Tạo một component Vue 3 tương tác minh họa thuật toán BFS/DFS.

# 4. SPECIFICATION & CONSTRAINTS (Ràng buộc kỹ thuật)
- Sử dụng <script setup lang="ts">.
- Dùng CSS thuần (Vanilla CSS) với biến theme var(--vp-c-*).
- Responsive dưới 720px.
- Không cài thêm package bên ngoài.

# 5. EXPECTED OUTPUT FORMAT (Định dạng kết quả)
Đưa ra duy nhất mã nguồn tệp SFC hoàn chỉnh trong khối code ```vue.
```

---

## 2. Các Kỹ Thuật Suy Luận Nâng Cao

### A. Chain-of-Thought (CoT - Chuỗi suy luận)
Yêu cầu mô hình "suy nghĩ từng bước" trước khi đưa ra kết luận:
```markdown
Hãy phân tích sự cố theo 4 bước sau:
1. Xác định triệu chứng lỗi từ thông điệp Stack Trace.
2. Liệt kê 3 giả thuyết về nguyên nhân gốc rễ (Root Cause).
3. Đưa ra phương án kiểm chứng từng giả thuyết.
4. Đề xuất bản vá tối thiểu (Surgical Patch).
```

### B. Few-Shot In-Context Learning (Học qua ví dụ mẫu)
Cung cấp từ 2-3 cặp Input/Output mẫu để định hình tuyệt đối quy cách phản hồi:
```markdown
Ví dụ 1:
Input: "feat: add user login"
Output: "feat(auth): thêm cơ chế đăng nhập JWT với bảo mật refresh token"

Ví dụ 2:
Input: "fix: button overflow"
Output: "fix(ui): sửa lỗi tràn viền nút bấm trên màn hình di động < 400px"
```

### C. ReAct Pattern (Reasoning + Acting)
Kết hợp suy luận nội tâm với gọi công cụ (Tool Calling):
- **Thought**: Đánh giá tình trạng hiện tại và mục tiêu cần đạt.
- **Action**: Gọi công cụ kiểm tra (grep_search, view_file, run_command).
- **Observation**: Phân tích kết quả trả về từ công cụ.
- **Reflection**: Điều chỉnh hành động kế tiếp.

### D. Enforced Structured Output (XML / JSON Schema)
Ngăn chặn mô hình trò chuyện lan man bằng cách bao bọc kết quả trong thẻ XML phân định rõ ràng:
```markdown
Hãy đưa ra câu trả lời nằm trong các thẻ:
<analysis>
...phân tích kiến trúc...
</analysis>
<implementation>
...mã nguồn...
</implementation>
<verification>
...lệnh kiểm thử...
</verification>
```
