# Quy Trình Phát Triển Tính Năng Mới (Feature Development Workflow)

```mermaid
flowchart LR
    A["1. GRILL<br/>(Hỏi rõ nhu cầu)"] --> B["2. SPEC<br/>(Lập đặc tả)"]
    B --> C["3. TICKETS<br/>(Phân rã việc)"]
    C --> D["4. IMPLEMENT<br/>(TDD Coder)"]
    D --> E["5. REVIEW<br/>(Kiểm tra an toàn)"]
```

## Các Bước Triển Khai
1. **Khám phá:** Chạy `/grill-with-docs` hoặc `/brainstorming-socrates` để chốt phạm vi và danh sách "KHÔNG LÀM".
2. **Đặc tả:** Tạo file `SPEC.md` bằng `/to-spec`.
3. **Phân việc:** Tạo danh sách task bằng `/to-tickets`.
4. **Viết code:** Thực hiện từng task theo phương pháp TDD (`test-driven-development`).
5. **Nghiệm thu:** Rà soát lại qua `code-reviewer` trước khi commit.
