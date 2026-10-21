---
name: i18n-localization
description: "Quy trình quốc tế hóa và bản địa hóa đa ngôn ngữ (i18n / l10n) cho ứng dụng web và tài liệu, bảo toàn thuật ngữ chuyên môn và cấu trúc Markdown."
---

# Kỹ Năng Quốc Tế Hóa & Bản Địa Hóa (i18n & Localization Pipeline)

Kỹ năng này hướng dẫn AI agent thiết lập kiến trúc đa ngôn ngữ (Internationalization - i18n) và thực thi quy trình dịch thuật bản địa hóa (Localization - l10n) chính xác, bảo vệ toàn vẹn cú pháp mã nguồn, tham chiếu link và thuật ngữ chuyên ngành.

---

## 1. Nguyên Tắc Cốt Lõi Khi Bản Địa Hóa

1. **Bảo tồn Tuyệt đối Cấu trúc Markdown & Code**:
   - Không dịch nội dung bên trong khối code (`` `code` ``, ` ```typescript `, ` ```bash `).
   - Không dịch cú pháp đường dẫn: `[Tên hiển thị](file:///path/to/file)`.
   - Giữ nguyên các định danh YAML Frontmatter, tag HTML tự tạo hoặc VitePress component (`<Badge />`, `<DemoComponent />`).
2. **Quản lý Thuật Ngữ Nhất Quán (Glossary First)**:
   - Thống nhất các thuật ngữ công nghệ trước khi dịch (ví dụ: *Prompt*, *Agent*, *Vibe Coding*, *Branch*, *Commit*).
   - Tránh dịch máy ngô nghê (ví dụ: không dịch "Fork repo" thành "Cái nĩa kho chứa").
3. **Phân tách Khóa dịch thuật (Externalized Strings)**:
   - Tách toàn bộ chuỗi ký tự cứng (hardcoded strings) khỏi giao diện sang các tệp từ điển (`locales/en.json`, `locales/vi.json`, `locales/zh-cn.json`).

---

## 2. Thiết Lập Kiến Trúc i18n Chuẩn

### A. Đối với VitePress Documentation (Cấu trúc tương tự Easy-Vibe)
```
docs/
├── .vitepress/
│   └── config/
│       ├── shared.ts
│       ├── en.ts
│       ├── zh-cn.ts
│       └── vi.ts
├── en/
│   ├── index.md
│   └── stage-1/
├── zh-cn/
│   ├── index.md
│   └── stage-1/
└── vi/
    ├── index.md
    └── stage-1/
```

### B. Đối với Ứng Dụng Vue / React
Sử dụng tiêu chuẩn Key-Value lồng nhau có phân cấp:
```json
{
  "common": {
    "save": "Lưu thay đổi",
    "cancel": "Hủy bỏ",
    "confirm": "Xác nhận",
    "loading": "Đang tải dữ liệu..."
  },
  "auth": {
    "loginTitle": "Đăng nhập vào hệ thống",
    "emailPlaceholder": "Nhập địa chỉ email của bạn"
  }
}
```

---

## 3. Quy Trình Dịch Thuật Tự Động Hóa (AI Batch Translation Pipeline)

Khi nhận lệnh dịch thuật tài liệu hoặc locale file:
1. **Quét Khóa & File nguồn**: Đọc file gốc và lập chỉ mục các chuỗi cần dịch.
2. **Kiểm tra Khóa thiếu (Missing Keys Audit)**: So sánh cấu trúc JSON giữa ngôn ngữ nguồn và đích.
3. **Áp dụng Bảng Thuật Ngữ (Context Injection)**:
   | Thuật ngữ gốc | Tiếng Việt chuẩn | Ghi chú |
   |---------------|------------------|---------|
   | Vibe Coding | Vibe Coding | Giữ nguyên khái niệm |
   | Context Window | Cửa sổ ngữ cảnh | Chuẩn NLP/LLM |
   | Hallucination | Ảo giác AI | Hiện tượng suy luận sai |
   | Subagent | Tác nhân phụ / Subagent | Tác nhân con được ủy quyền |
   | Zero-shot | Zero-shot | Giữ nguyên thuật ngữ học máy |
4. **Xác thực Cú pháp (Linter & Build Validation)**:
   - Chạy lệnh kiểm tra tính hợp lệ của JSON (`JSON.parse`).
   - Kiểm tra liên kết tương đối không bị hỏng trong Markdown.
