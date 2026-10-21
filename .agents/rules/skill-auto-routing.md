# Quy Tắc Tự Động Định Tuyến & Khớp Kỹ Năng (Skill Auto-Routing Rules)

Quy tắc này giải quyết triệt để vấn đề: Người dùng không cần phải ghi nhớ tên của hơn 48 kỹ năng trong `.agents/skills/`. AI có trách nhiệm tự động phân tích yêu cầu tự nhiên của người dùng, ánh xạ (map) vào các kỹ năng chuyên môn phù hợp nhất và tuân thủ kỷ luật thực thi.

---

## 1. Nguyên Tắc Cốt Lõi: "Map Skill Trước — Viết Mã Sau" (Map Before Code)

Khi nhận bất kỳ yêu cầu nào từ người dùng (dù là câu ngắn gọn như *"Tạo web...", "Fix lỗi này...", "Thêm đăng nhập..."*), AI **BẮT BUỘC** phải thực hiện 3 bước tự động:

1. **Phân Tích Ý Định (Intent Analysis):** Bóc tách bài toán thành các mảng kỹ thuật (Giao diện, Kiến trúc, Logic, Bảo mật, Triển khai).
2. **Ánh Xạ Kỹ Năng Tự Động (Auto Skill Mapping):** Lựa chọn 2 - 4 kỹ năng trong `.agents/skills/` tương ứng.
3. **Hiển Thị Bảng Điều Phối Kỹ Năng (Skill Routing Matrix):** Xuất bảng tóm tắt ngắn gọn ở đầu phản hồi để người dùng nắm rõ các tiêu chuẩn chất lượng AI cam kết tuân thủ.
4. **Đọc và Tuân Thủ Nghiêm Ngặt:** AI phải nạp hướng dẫn từ các file `SKILL.md` đã chọn, không được sinh mã tùy tiện hoặc làm tắt.

---

## 2. Ma Trận Ánh Xạ Kỹ Năng Mặc Định (Mapping Directory)

| Lĩnh vực yêu cầu | Kỹ năng tự động kích hoạt | Tiêu chuẩn chất lượng bắt buộc |
| :--- | :--- | :--- |
| **Giao diện Web, Landing Page, Dashboard** | `ui-ux-pro-max`<br>`frontend-design-mastery` | Bố cục Bento Grid/Glassmorphism; Zero-Clipping (không cắt chữ/thẻ); typography Outfit + Plus Jakarta Sans; tương tác hover mượt mà; cấm gradient tím sến. |
| **Bản vẽ thiết kế, Ảnh chụp màn hình, Mockup** | `design-to-code`<br>`figma-tokens-designer` | Chuyển đổi chính xác 1:1, bóc tách CSS tokens màu sắc, bo góc, khoảng cách chuẩn. |
| **Làm rõ yêu cầu, Ý tưởng lớn, Lập PRD** | `grill-with-docs`<br>`spec-driven-coding`<br>`wayfinder` | Đặt câu hỏi chất vấn làm rõ phạm vi LÀM và KHÔNG LÀM; lập tài liệu SPEC trước khi code. |
| **Gỡ lỗi, Sửa lỗi giao diện, Fix crash** | `ai-debugging-loop`<br>`surgical-debugging-rules` | Phân tích nguyên nhân gốc rễ (Root Cause); sửa tối thiểu (Surgical Diff); cấm đập đi xây lại code đang chạy tốt. |
| **Cơ sở dữ liệu, Xác thực, Backend** | `supabase-backend`<br>`api-design-restful` | Thiết kế schema CSDL chuẩn hóa; SQL Migration; bảo mật Row Level Security (RLS); mã lỗi RESTful nhất quán. |
| **Bảo mật, Kiểm toán an toàn** | `security-audit-owasp`<br>`api-security-rules` | Rà soát OWASP Top 10; mã hóa dữ liệu nhạy cảm; Rate limiting; chống XSS/SQL Injection. |
| **Tối ưu SEO & Tốc độ tải trang** | `seo-performance-optimization` | Thẻ Meta Open Graph đầy đủ; semantic HTML5; lazy loading; Core Web Vitals xanh. |
| **Quy trình nhiều tác nhân (Dự án lớn)** | `agent-teams-workflow`<br>`long-running-tasks` | Phân vai Planner ➔ Coder ➔ Reviewer ➔ Tester; ghi checkpoint liên tục. |
| **Docker, Đám mây, CI/CD** | `docker-containerization`<br>`zeabur-cloud-deployment`<br>`cloud-deployment-devops` | Multi-stage Dockerfile tối ưu dung lượng; biến môi trường an toàn; healthcheck endpoint. |
| **Ứng dụng Di động / Desktop / Tiện ích** | `mobile-cross-platform`<br>`desktop-app-electron`<br>`chrome-extension-builder` | Tuân thủ Manifest V3 / Safe Area di động / Khay hệ thống máy tính. |

---

## 3. Cấu Trúc Khối Báo Cáo Kỹ Năng (Skill Matrix Template)

Đầu mỗi tác vụ thực thi, AI trình bày khối báo cáo theo định dạng:

```markdown
🎯 **Kế hoạch Điều Phối Kỹ Năng (Skill Routing Matrix):**
- 🎨 **Giao diện & Trải nghiệm:** `ui-ux-pro-max` + `frontend-design-mastery` ➔ *(Cam kết: Glassmorphism cao cấp, không clipping, typography đồng bộ)*
- ⚙️ **Kiến trúc & Chống gian lận:** `spec-driven-coding` ➔ *(Cam kết: Logic Pomodoro & Checklist hoàn chỉnh)*
- 🛡️ **Kiểm thử & Ổn định:** `testing-verification-rules` ➔ *(Cam kết: Kiểm tra HTTP 200 trước khi bàn giao)*
```

---

## 4. Cách Người Dùng Tương Tác Nhanh (Fast Shortcuts)

Người dùng chỉ cần đưa yêu cầu theo các cách tự nhiên sau:
- **Cách tự nhiên:** *"Tôi muốn làm [ý tưởng], hãy map skill và triển khai cho tôi"*
- **Dùng lệnh tắt:** `/plan [ý tưởng]` ➔ AI sẽ tự động kích hoạt bảng map skill và phân rã các bước thực hiện.
- **Yêu cầu review chất lượng:** *"Kiểm tra lại giao diện theo skill frontend-design-mastery"* ➔ AI sẽ rà soát lại toàn bộ CSS/HTML theo checklist chống AI Slop.
