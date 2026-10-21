---
name: mcp-builder-integrator
description: Cấu hình, kết nối và xây dựng các máy chủ Model Context Protocol (MCP) để AI giao tiếp trực tiếp với môi trường ngoài (Database, GitHub, Filesystem, Browser, API).
---

# Kỹ Năng: Model Context Protocol (MCP) Integration

Kỹ năng này chuẩn hóa cách mở rộng khả năng của AI thông qua giao thức mở MCP do Anthropic phát triển.

---

## 1. Quy Trình Cấu Hình MCP Server Chuẩn

### Bước 1: Cấu hình `mcp_config.json` hoặc File Cài Đặt MCP
Khai báo các Server chuẩn kết nối với môi trường:
```json
{
  "mcpServers": {
    "postgres": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-postgres", "postgresql://user:pass@localhost:5432/mydb"]
    },
    "filesystem": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-filesystem", "C:/Projects/easy-vibe"]
    },
    "github": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-github"],
      "env": {
        "GITHUB_PERSONAL_ACCESS_TOKEN": "ghp_xxxx"
      }
    },
    "puppeteer": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-puppeteer"]
    }
  }
}
```

### Bước 2: Nguyên Tắc Tương Tác với MCP Tools
1. **Phân biệt 3 thành phần MCP:**
   - **Tools:** Các hàm có thể gọi (Call function, query database, click button).
   - **Resources:** Dữ liệu tĩnh như file, tài liệu đọc được.
   - **Prompts:** Các template prompt định nghĩa sẵn trên server.
2. **Nguyên tắc an toàn:**
   - Chỉ cấp quyền đọc (Read-only) với môi trường Production.
   - Thao tác ghi dữ liệu (Drop table, Commit code, Delete file) luôn yêu cầu xác nhận.

---

## 2. Hướng Dẫn Tối Ưu Cho Từng Dòng Model

### 🌟 Dành cho Claude / Antigravity / Cursor
- **Prompt mẫu:**
  ```text
  Theo skill `mcp-builder-integrator`:
  Hãy giúp tôi cấu hình MCP server để AI có thể tự động đọc schema của database PostgreSQL đang chạy và kiểm tra các bảng hiện có.
  ```
