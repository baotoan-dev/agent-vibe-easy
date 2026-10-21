# 🛸 AGENT VIBE EASY — MASTER AI AGENT TOOLKIT

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Skills: 54](https://img.shields.io/badge/Skills-54%20Battle--Tested-blue.svg)](./skills)
[![Rules: 10](https://img.shields.io/badge/Rules-10%20Immutable-red.svg)](./rules)
[![Workflows: 5](https://img.shields.io/badge/Workflows-5%20Standard%20SOP-green.svg)](./workflows)
[![Agents: 6](https://img.shields.io/badge/Personas-6%20Specialized-purple.svg)](./agents)
[![Templates: 7](https://img.shields.io/badge/Templates-7%20Production--Ready-orange.svg)](./templates)

Trung tâm điều khiển AI Agent toàn năng và đầy đủ nhất cho kỷ nguyên **Vibe Coding**, tích hợp 100% giáo trình **Easy-Vibe (Datawhale & ĐH Thanh Hoa)** kết hợp cùng các hệ sinh thái hàng đầu thế giới: **Matt Pocock (AI Hero)**, **Anthropic Skills**, **Vercel Agent Skills**, **Boris Cherny (Claude Code)**, **Jesse Vincent (Superpowers)**, **UI/UX Pro Max**, **LlamaIndex**, **Dify**, **Godot Engine**, **Docker** và **OWASP Top 10**.

---

## ⚡ CÀI ĐẶT NHANH (QUICK INSTALLATION)

### Cách 1: Clone trực tiếp làm thư mục `.agents` cho dự án của bạn (Khuyến nghị)
```bash
git clone https://github.com/baotoan-dev/agent-vibe-easy.git .agents
```

### Cách 2: Cài đặt qua trình quản lý kỹ năng Skills CLI
```bash
npx skills add baotoan-dev/agent-vibe-easy -y
```

### Cách 3: Sử dụng cho Claude Code (`~/.claude/skills/`)
```bash
# Windows PowerShell
git clone https://github.com/baotoan-dev/agent-vibe-easy.git "$HOME/.claude/skills/agent-vibe-easy"

# macOS / Linux
git clone https://github.com/baotoan-dev/agent-vibe-easy.git ~/.claude/skills/agent-vibe-easy
```

---

## 🏛️ SƠ ĐỒ TOÀN BỘ KIẾN TRÚC THƯ MỤC:

```
agent-vibe-easy/
│
├── 📜 README.md                 # Bảng điều khiển trung tâm (Master Dashboard)
├── ⚙️ hooks.json                # Vòng đời tự động hóa (Lifecycle Hooks: An toàn & Auto-Format)
├── 🔌 mcp_config.json           # Cấu hình máy chủ MCP (Filesystem, Postgres, GitHub, Puppeteer)
├── 📋 skills.json               # Khai báo đăng ký Skills
├── 🧩 plugins.json              # Khai báo đăng ký Plugins
│
├── 🛡️ rules/                    # 10 QUY TẮC BẤT BIẾN (Luật bảo vệ an toàn 24/7)
│   ├── vibe-coding-rules.md     # 6 kỷ luật lập trình tự do nhưng chuẩn xác
│   ├── code-quality-security.md # Tiêu chuẩn sạch mã và chống rò rỉ bí mật
│   ├── surgical-debugging-rules.md # Gỡ lỗi phẫu thuật, sửa tối thiểu, cấm đập đi xây lại
│   ├── frontend-design-rules.md # Chống lối mòn AI (AI Slop), màu sắc & typography độc bản
│   ├── git-collaboration-rules.md # Conventional commits, bảo vệ nhánh main
│   ├── context-management-rules.md # Tối ưu cửa sổ ngữ cảnh, phòng chống ảo giác
│   ├── testing-verification-rules.md # Kỷ luật kiểm thử trước khi bàn giao
│   ├── agent-delegation-rules.md # Quy tắc ủy quyền tác nhân con, tránh phình to context
│   ├── database-migration-rules.md # Quy tắc di chuyển CSDL không gián đoạn (Zero-downtime)
│   └── api-security-rules.md    # Quy tắc bảo mật API, rate limit & chống injection
│
├── 🔀 workflows/                # 5 QUY TRÌNH CHUẨN HOÁ (Standard Operating Procedures)
│   ├── feature-development.md   # Quy trình phát triển tính năng mới (5 bước)
│   ├── bug-fixing.md            # Quy trình sửa lỗi phẫu thuật (4 bước)
│   ├── refactoring.md           # Quy trình tái cấu trúc code an toàn
│   ├── performance-optimization.md # Quy trình tối ưu hiệu năng Lighthouse & Core Web Vitals
│   └── release-deployment.md    # Quy trình đóng gói phiên bản, tag release & deploy
│
├── 👥 agents/                   # 6 TÁC NHÂN CHUYÊN BIỆT (Specialized Subagent Personas)
│   ├── planner.md               # Kiến trúc sư: lên kế hoạch, bóc tách yêu cầu
│   ├── designer.md              # Chuyên gia UI/UX: bảng màu, typography, CSS tokens
│   ├── coder.md                 # Kỹ sư lập trình: viết mã sạch, minimal diff
│   ├── tester.md                # Kiểm thử viên: viết test suite, bắt lỗi hồi quy
│   ├── reviewer.md              # Trưởng nhóm kỹ thuật: duyệt commit, soát lỗ hổng
│   └── devops.md                # Kỹ sư hạ tầng: Docker, CI/CD, SSL, Cloud Deploy
│
├── 📝 templates/                # 7 BIỂU MẪU CHUẨN CHO DỰ ÁN
│   ├── PRD_TEMPLATE.md          # Mẫu đặc tả yêu cầu sản phẩm chuẩn
│   ├── ARCHITECTURE_TEMPLATE.md # Mẫu tài liệu thiết kế kiến trúc kỹ thuật
│   ├── TASKS_TEMPLATE.md        # Mẫu checklist nhiệm vụ tuần tự cho AI
│   ├── ADR_TEMPLATE.md          # Mẫu ghi nhận quyết định kiến trúc (ADR)
│   ├── CONTEXT_TEMPLATE.md      # Mẫu từ điển thuật ngữ dự án (Project Glossary)
│   ├── DESIGN_SPEC_TEMPLATE.md  # Mẫu đặc tả phong cách thiết kế & tokens
│   └── POST_MORTEM_TEMPLATE.md  # Mẫu phân tích nguyên nhân gốc rễ sự cố (RCA)
│
├── 📦 plugins/                  # THƯ MỤC PLUGINS ĐÓNG GÓI
│   └── vibe-suite/plugin.json   # Gói plugin phân phối dùng chung cho team
│
└── 🧰 skills/                   # 54 KỸ NĂNG THỰC CHIẾN ĐẦY ĐỦ NHẤT (MASTER SUITE)
    │
    ├── 💡 KHỞI TẠO, TƯ DUY & ĐẶC TẢ
    │   ├── grill-with-docs/     # Matt Pocock: Phỏng vấn chất vấn yêu cầu sâu
    │   ├── to-spec/             # Matt Pocock: Chuyển thảo luận thành SPEC.md
    │   ├── to-tickets/          # Matt Pocock: Phân rã thành GitHub Issues
    │   ├── implement/           # Matt Pocock: Thực thi mã phẫu thuật từ ticket
    │   ├── wayfinder/           # Matt Pocock: Định hướng kiến trúc dự án lớn
    │   ├── brainstorming-socrates/ # Superpowers: Đối thoại Socrates làm rõ ý tưởng
    │   ├── product-idea-validation/ # Thẩm định nhu cầu thị trường (The Mom Test, JTBD)
    │   ├── spec-driven-coding/  # Lập trình bằng bộ ba đặc tả (PRD + ARCH + RULES)
    │   └── prompt-engineering-patterns/ # Kỹ nghệ câu lệnh cao cấp (CoT, ReAct, Few-Shot)
    │
    ├── 🎨 GIAO DIỆN, THIẾT KẾ & ĐỒ HỌA
    │   ├── frontend-design-mastery/ # Anthropic: Thiết kế độc bản chống AI Slop
    │   ├── ui-ux-pro-max/       # Thư viện 67 style UI, 96 phối màu, 57 cặp font
    │   ├── design-to-code/      # Chuyển ảnh UI, Figma sang HTML/CSS/React
    │   ├── figma-tokens-designer/ # Trích xuất và đồng bộ Design Tokens từ Figma
    │   ├── component-library-shadcn/ # Xây dựng UI bằng shadcn/ui & Radix Primitives
    │   ├── brand-guidelines/    # Nhận diện thương hiệu & Token hệ thống
    │   ├── frontend-slides/     # Tạo slide thuyết trình HTML tương tác web
    │   └── remotion-video/      # Tạo video motion graphics bằng code React
    │
    ├── 💾 CƠ SỞ DỮ LIỆU, BACKEND & THANH TOÁN
    │   ├── api-design-restful/  # Thiết kế API RESTful chuẩn doanh nghiệp
    │   ├── supabase-backend/    # Database PostgreSQL, SQL migration, RLS
    │   ├── stripe-payment/      # Cổng thanh toán quốc tế Checkout & Webhook
    │   ├── rag-langgraph/       # Pipeline hỏi đáp RAG với LangGraph
    │   ├── llamaindex-knowledge-base/ # Quản trị tri thức doanh nghiệp với LlamaIndex
    │   ├── dify-workflow-agent/ # Thiết kế AI Workflow trực quan trên nền tảng Dify
    │   ├── pdf-processor/       # Trích xuất & xử lý văn bản, bảng tính từ file PDF
    │   └── web-scraping-crawler/ # Thu thập dữ liệu web tự động, bypass anti-bot
    │
    ├── 📱 ĐA NỀN TẢNG, GAME & MỞ RỘNG
    │   ├── mobile-cross-platform/ # App di động iOS/Android React Native Expo
    │   ├── flutter-app/         # Phát triển app Flutter & Dart hiệu năng cao
    │   ├── desktop-app-electron/ # Phần mềm máy tính PC/Mac với Electron
    │   ├── chrome-extension-builder/ # Tiện ích mở rộng Chrome Manifest V3
    │   ├── vscode-extension/    # Tiện ích mở rộng Visual Studio Code
    │   ├── wechat-miniprogram/  # Lập trình WeChat Mini-Program
    │   ├── pwa-builder/         # Progressive Web Apps chạy offline
    │   ├── godot-game-development/ # Lập trình game 2D/3D bằng Godot 4.x
    │   └── i18n-localization/   # Quốc tế hóa & bản địa hóa đa ngôn ngữ
    │
    ├── 🛡️ CHẤT LƯỢNG, BẢO MẬT & KIỂM THỬ
    │   ├── test-driven-development/ # Kỷ luật kiểm thử tự động TDD (Red-Green-Refactor)
    │   ├── ai-debugging-loop/   # Vòng lặp gỡ lỗi AI-native (RCA + Surgical Patch)
    │   ├── code-reviewer/       # Rà soát mã cấp Tech Lead
    │   ├── playwright-e2e-testing/ # Kiểm thử tự động E2E với Microsoft Playwright
    │   ├── security-audit-owasp/ # Quét bảo mật theo chuẩn OWASP Top 10
    │   └── seo-performance-optimization/ # Tối ưu SEO & Core Web Vitals
    │
    ├── 📖 TÀI LIỆU, TRI THỨC & SƯ PHẠM
    │   ├── vitepress-doc-beautifier/ # Mỹ hóa tài liệu VitePress bằng Element Plus
    │   ├── interactive-tutorial-authoring/ # Biên soạn hướng dẫn tương tác xoắn ốc
    │   ├── obsidian-knowledge-vault/ # Tích hợp kho tri thức cá nhân PKM Obsidian
    │   └── readme-documentation/ # Soạn README.md chuẩn chuyên nghiệp cho GitHub
    │
    └── 🚀 HẠ TẦNG, DEVOPS & ĐIỀU PHỐI
        ├── cloud-deployment-devops/ # Đưa web lên Internet (Vercel, Cloud, SSL)
        ├── zeabur-cloud-deployment/ # Triển khai Fullstack & Database lên Zeabur
        ├── docker-containerization/ # Đóng gói Docker container & Docker Compose
        ├── git-workflow-collab/ # Quản lý mã Git, giải quyết xung đột
        ├── agent-teams-workflow/ # Điều phối nhóm đa tác nhân (Agent Teams)
        ├── claude-agent-sdk/    # Lập trình tác nhân AI tự hành với Claude SDK
        ├── long-running-tasks/  # Điều phối tác vụ chạy qua đêm (/goal, Checkpoint)
        ├── mcp-builder-integrator/ # Cấu hình và tích hợp Model Context Protocol
        ├── find-skills/         # Tự động tìm kiếm & cài đặt kỹ năng từ skills.sh
        └── skill-creator/       # Meta-skill tự động sinh kỹ năng mới
```

---

## 📄 GIẤY PHÉP BẢN QUYỀN (LICENSE)

Dự án được phân phối dưới giấy phép [MIT License](LICENSE).
