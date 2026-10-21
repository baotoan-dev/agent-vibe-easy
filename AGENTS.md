# Repository Guidelines

## Project Structure & Module Organization

- `docs/`: VitePress site source (Markdown content, sidebar/nav, assets referenced by docs).
- `docs/.vitepress/theme/`: custom theme, global component registration in `index.js`, shared styles in `style.css`, layout in `Layout.vue`.
- `docs/.vitepress/theme/components/appendix/*/`: interactive Vue demos used inside appendix pages (e.g. `web-basics/`, `deployment/`).
- `assets/`: repo-level images/media (if referenced, prefer linking/copying into `docs/public/` or a doc-local folder when appropriate).
- `scripts/`, `tools/`, `update_readmes.cjs`: utility scripts for maintaining docs.

## Build, Test, and Development Commands

This repo is a VitePress (Vue 3) documentation project. Requires Node.js **>= 18**.

```bash
npm install
npm run dev      # start local docs server (hot reload)
npm run build    # production build (use as CI-style check)
npm run preview  # preview the built site locally
npm run format   # run Prettier on the whole repo
```

## Coding Style & Naming Conventions

- Formatting: Prettier (`npm run format`). Keep diffs small and avoid reformatting unrelated files.
- Vue components: Vue 3 SFCs with `<script setup>`, PascalCase filenames (e.g. `SemanticTagsDemo.vue`).
- CSS: prefer VitePress theme variables (`var(--vp-c-*)`) and keep components responsive (`@media (max-width: 720px)` when needed).
- Docs: use clear headings and short paragraphs; components are referenced in Markdown as `<ComponentName />`.

## Testing Guidelines

There is no dedicated test framework in this repo. Use `npm run build` as the primary correctness check, and manually verify interactive components in `npm run dev`.

## Commit & Pull Request Guidelines

- Commits follow a Conventional Commits style seen in history: `feat: ...`, `fix: ...`, `docs: ...` (optionally scoped like `feat(docs): ...`).
- PRs should include: a short description, screenshots/GIFs for UI or component changes, and any relevant paths touched (e.g. `docs/zh-cn/appendix/...`, `docs/.vitepress/theme/...`).

## Configuration & Deployment Notes

- `vercel.json` is present; keep builds reproducible and avoid relying on local-only assets.

## AI Skill Auto-Routing Protocol (Bắt Buộc)

Mỗi khi người dùng đưa ra một yêu cầu (dự án mới, tính năng, gỡ lỗi, tái cấu trúc), AI **bắt buộc** phải tự động ánh xạ (map) kỹ năng từ `.agents/skills/` và xuất **Bảng Điều Phối Kỹ Năng (Skill Routing Matrix)** trước khi viết mã:
1. **Phân tích yêu cầu:** Bóc tách các mảng UI/UX, logic, database, security.
2. **Ánh xạ kỹ năng:** Khớp các skill liên quan (ví dụ: `ui-ux-pro-max`, `frontend-design-mastery`, `spec-driven-coding`, `security-audit-owasp`, `ai-debugging-loop`).
3. **Hiển thị cam kết chất lượng:** Nêu rõ các nguyên tắc kỹ thuật sẽ tuân thủ.
4. **Tuyệt đối không làm tắt:** Đọc file `SKILL.md` tương ứng để áp dụng đầy đủ checklist.

## Anti-AI-Slop Design Protocol (Bắt Buộc Cho Mọi Giao Diện)

Mọi tác vụ liên quan đến UI/UX, Frontend, Web App hoặc CSS bắt buộc phải tuân thủ nghiêm ngặt **7 Điều Luật Chống AI Slop** tại `.agents/rules/anti-ai-slop-rules.md`:
1. **Neo vào tham chiếu cụ thể:** Cấm dùng chữ "làm hiện đại", phải neo vào một thương hiệu / trường phái cụ thể (Linear, Kinfolk, Apple Bento Grid, Wabi-Sabi).
2. **Danh sách cấm (Negative Blacklist):** Cấm dùng `Inter`/`Roboto` làm font tiêu đề chính; cấm gradient tím sang chàm; cấm layout 3 thẻ ngang bằng nhau trên nền trắng; cấm soft drop shadow mờ nhạt.
3. **Chỉ chọn từ bộ tuyển sẵn:** Áp dụng bộ preset `+style`, `+palette`, `+font` từ `ui-ux-pro-max`.
4. **Một quyết định thị giác áp đảo:** Mỗi màn hình phải có một "yếu tố to nhất phòng" chiếm ưu thế thị giác; các phần tử khác lùi xuống làm nền.
5. **Hệ thống không gian:** Bội số 8px, viền mảnh 1px tinh tế, khuyến khích bất đối xứng.
6. **Giọng nói đi trước layout:** Xác định tone of voice trước khi viết copy và dựng layout.
7. **Tinh chỉnh bằng cách XÓA:** Khi tối ưu, hãy xóa bớt yếu tố thừa trước khi thêm thắt hiệu ứng.
8. **Cấm fix cứng pixel:** Tuyệt đối không hardcode px ("magic numbers" như 300px, 385px). Bắt buộc dùng kích thước nội tại max-content, min-content, hàm clamp(), min(), đơn vị ch, rem, % và flexbox tự động co giãn.


