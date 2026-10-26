# Giao Thức Tự Động Nâng Cấp Câu Lệnh (Implicit Prompt Enhancer Protocol)

Mọi yêu cầu lập trình bằng ngôn ngữ tự nhiên từ người dùng (dù là câu văn ngắn, văn nói thông thường hay mô tả sơ sài) đều **bắt buộc** phải được AI tự động biên dịch và nâng cấp lên chuẩn kỹ thuật cao nhất theo quy trình dưới đây trước khi viết mã:

---

## 1. Cơ Chế Nhận Diện Ý Định Tự Động (Intent Auto-Routing)

Khi nhận diện được các từ khóa nghiệp vụ trong câu văn của người dùng, AI phải tự động gán các cờ mỏ neo và tiêu chuẩn kỹ thuật tương ứng:

| Từ Khóa Trong Câu Nói Của Người Dùng | Mỏ Neo Tự Động Gán | Tiêu Chuẩn Kỹ Thuật Bắt Buộc Áp Dụng |
| :--- | :--- | :--- |
| Giao diện, form, trang, màn hình, UI, button, modal, card, menu, layout | `+style: Linear Minimalist`<br>`+palette: Cyber Obsidian`<br>`+rule: no-icon` | Kích hoạt `ui-ux-pro-max` & `frontend-design-mastery`. Cấm dùng font Inter/Roboto mặc định; cấm icon/emoji trang trí rác; cấm hardcode px (phải dùng `clamp()`, `rem`, `max-content`). |
| Viết logic, tính năng, thêm hàm, tính toán, xử lý form, thêm nút, sửa code | `+graph: graph.json`<br>`+rule: ponytail` | Kích hoạt `graphify` và `ponytail-lean-code`. Bắt buộc tra cứu `graphify-out/graph.json` để tái sử dụng toàn bộ component, directive và helper có sẵn; cấm tạo hàm trùng lặp; cấm over-engineering; giữ diff tối thiểu. |
| Lỗi, bug, vỡ giao diện, không chạy, crash, console báo lỗi, không validate | `+rule: ponytail`<br>`+loop: ai-debugging` | Kích hoạt `ai-debugging-loop`. Phân tích nguyên nhân gốc rễ (Root Cause Analysis), phẫu thuật đúng dòng lỗi (Surgical Diff), cấm viết lại cả file. |
| Bảo mật, an toàn, token, secret, đăng nhập, phân quyền, api, owasp | `+audit: cloudflare` | Kích hoạt `security-audit-cloudflare`. Quét rò rỉ secret, CORS, input sanitization, và xuất bảng báo cáo kiểm chứng. |
| Làm tính năng lớn, quy hoạch module, tái cấu trúc toàn diện, epic | `+workflow: gstack`<br>`+mode: plan` | Kích hoạt `gstack-workflows` và chế độ lập kế hoạch `/plan`. Phân tách rạch ròi 6 vai trò: CEO chốt scope, Design Lead, Tech Lead duyệt kiến trúc, Implementer viết code, QA kiểm thử. |

---

## 2. Quy Trình Phản Hồi Khi Nhận Câu Lệnh Thông Thường

Khi người dùng đưa ra một câu lệnh thô (ví dụ: *"làm cái form đặt hàng ở order-create"*), AI thực hiện theo 3 bước:

1. **Xuất Bảng Điều Phối Kỹ Năng (Skill Routing Matrix):**
   * Tóm tắt ý định người dùng bằng 1 câu ngắn gọn.
   * Liệt kê các kỹ năng ngầm đã được kích hoạt tự động.
   * Liệt kê các ràng buộc kỹ thuật (Graphify tra cứu, Ponytail tinh gọn, Zero-Icon, Verification Gate).
2. **Thực thi phẫu thuật mã nguồn (Surgical Execution):**
   * Đọc `graphify-out/graph.json` để lấy các thành phần tái sử dụng.
   * Chỉ sửa đổi đúng phạm vi tệp được yêu cầu, giữ nguyên vẹn toàn bộ các phần khác.
3. **Cổng kiểm chứng nghiêm ngặt (Verification Gate):**
   * Bắt buộc chạy lệnh terminal (build/test) để kiểm tra tính đúng đắn của mã nguồn.
   * Chỉ xác nhận hoàn thành khi terminal trả về `exit code == 0`.
