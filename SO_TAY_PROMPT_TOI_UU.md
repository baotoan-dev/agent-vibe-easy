# SỔ TAY KỸ NGHỆ CÂU LỆNH TỐI ƯU (PROMPT MASTERY CHEATSHEET)
### Cẩm Nang Kích Hoạt 100% Sức Mạnh Kỹ Năng Cho AI Coding Agent

---

## 1. CÔNG THỨC PROMPT MỎ NEO (ANCHOR PROMPTING FORMULA)

Không cần viết giải thích dài dòng. Mọi prompt chất lượng cao đều tuân theo cấu trúc 3 thành phần:

```text
[1. Nghiệp vụ & Vị trí tệp] + [2. +Cờ kích hoạt kỹ năng / Núm vặn] + [3. Ràng buộc phẫu thuật & Kiểm chứng]
```

---

## 2. BẢNG TRA CỨU CỜ KÍCH HOẠT NHANH (+FLAGS)

Chèn trực tiếp các tiền tố `+` này vào prompt để AI tự động mở đúng tài liệu hướng dẫn chuyên sâu (`SKILL.md`):

| Cờ Tham Số | Kỹ Năng Tương Ứng | Tác Dụng Kiểm Soát Hành Vi |
| :--- | :--- | :--- |
| **`+rule: ponytail`** | `ponytail-lean-code` | Ép AI tư duy "Lazy Senior Dev": cấm over-engineering, cấm tạo abstractions thừa, bắt buộc tái sử dụng code có sẵn, ưu tiên xóa code cũ hơn viết mới. |
| **`+graph: graph.json`** | `graphify` | Ép AI đọc đồ thị quan hệ AST trước khi viết mã; nắm rõ toàn bộ component, service, interface và model liên quan; chống ảo giác kiến trúc. |
| **`+audit: cloudflare`** | `security-audit-cloudflare` | Quét bảo mật đa tầng chuẩn Cloudflare: rò rỉ secret, OWASP Top 10 (SQLi, XSS, SSRF), cấu hình sai CORS/Auth; xuất báo cáo có kiểm chứng. |
| **`+workflow: gstack`** | `gstack-workflows` | Kích hoạt quy trình 6 vai trò của Garry Tan (CEO chốt scope -> Design Lead -> Tech Lead rà soát -> Implementer phẫu thuật -> QA kiểm thử). |
| **`+style: [Tên]`** | `ui-ux-pro-max` | Định hình trường phái thị giác (Linear Minimalist, Apple Bento Grid, Cyberpunk, Swiss High-Tech). |
| **`+palette: [Bảng màu]`**| `ui-ux-pro-max` | Neo vào bảng màu tuyển sẵn (Cyber Obsidian, Electric Neon, Minimal Slate), cấm gradient tím-chàm ngẫu nhiên. |
| **`+font: [Cặp font]`** | `ui-ux-pro-max` | Chỉ định font tiêu đề và nội dung (Space Grotesk, Plus Jakarta Sans, Syne, JetBrains Mono), cấm font mặc định Inter/Roboto. |
| **`+rule: no-icon`** | `zero-icon-slop` | Triệt tiêu 100% emoji trong phản hồi và icon trang trí vô nghĩa trên tiêu đề card, tabs, buttons. |
| **`+verify: terminal`** | `agentic-coding-mastery` | Bắt buộc chạy lệnh kiểm tra terminal (build/test/lint), chỉ xác nhận hoàn thành khi `exit code == 0`. |

---

## 3. BỘ MẪU PROMPT COPY-PASTE THỰC CHIẾN

### Mẫu 1: Dựng Giao Diện Mới (Frontend / UI / Components)
Dùng khi tạo mới màn hình, trang quản trị hoặc khối giao diện phức tạp:

```text
Dựng giao diện cho [Tên Trang/Component] tại [Đường dẫn file].
+style: Linear Minimalist
+palette: Cyber Obsidian (#090a0f, viền kính 1px, dạ quang cyan #00f2fe)
+font: Space Grotesk (tiêu đề) + Plus Jakarta Sans (nội dung)
+rule: no-icon
Ràng buộc: Không hardcode pixel; dùng kích thước nội tại clamp(), min(), rem, %; tự động co giãn responsive; kiểm chứng terminal trước khi bàn giao.
```

---

### Mẫu 2: Viết Logic / Thêm Tính Năng Nghiệp Vụ Mới
Dùng khi cần bổ sung tính toán, validate dữ liệu, xử lý nghiệp vụ:

```text
Thực hiện tính năng [Tên tính năng] cho [Tên Service/Component] tại [Đường dẫn file].
+graph: graph.json
+rule: ponytail
Ràng buộc:
1. Tra cứu graph.json để tái sử dụng toàn bộ helper trong shared/utils và components trong shared/ui hiện có.
2. Không tự tạo hàm tiện ích mới nếu thư viện chuẩn hoặc mã nguồn dự án đã hỗ trợ.
3. Giữ diff phẫu thuật tối thiểu (Surgical Diffs), không format lan man.
```

---

### Mẫu 3: Tái Cấu Trúc Mã Nguồn (Refactoring & Xóa Code Rác)
Dùng khi mã nguồn bị phình to, lặp code hoặc chạy chậm:

```text
Tiến hành refactor và tối ưu hóa module [Tên Module] tại [Đường dẫn thư mục].
+graph: graph.json
+rule: ponytail
Yêu cầu:
1. Phân tích impact analysis qua graph.json để đảm bảo không làm gãy các service phụ thuộc.
2. Ưu tiên giải quyết bằng cách XÓA BỚT CODE THỪA và bỏ bớt các wrapper/interface rỗng không cần thiết.
3. Dọn sạch toàn bộ import mồ côi và biến không sử dụng.
4. Chạy kiểm chứng terminal build bảo đảm exit code 0.
```

---

### Mẫu 4: Gỡ Lỗi / Vá Bug (AI-Native Debugging)
Dùng khi gặp lỗi vỡ layout, crash runtime, form không validate hoặc lỗi console:

```text
Khắc phục lỗi [Mô tả hiện tượng lỗi / Dán thông điệp lỗi stderr] tại [Đường dẫn file].
+rule: ponytail
+verify: terminal
Yêu cầu:
1. Xác định chính xác nguyên nhân gốc rễ (Root Cause Analysis).
2. Sửa đổi phẫu thuật tối thiểu (Surgical Diff), cấm viết lại toàn bộ file.
3. Chạy lệnh terminal kiểm chứng thực tế và chỉ báo hoàn tất khi lỗi biến mất hoàn toàn.
```

---

### Mẫu 5: Kiểm Toán & Vá Lỗ Hổng Bảo Mật (Cloudflare Security Audit)
Dùng trước khi đưa code lên Production hoặc định kỳ rà soát an ninh:

```text
Thực hiện kiểm toán bảo mật toàn diện cho [Module/Đường dẫn thư mục].
+audit: cloudflare
Yêu cầu:
1. Quét tìm rò rỉ secret, hardcoded keys, và tệp .env client-side.
2. Rà soát cấu hình CORS, HTTP Security Headers, và các lỗ hổng OWASP Top 10 (Injection, XSS, SSRF).
3. Xuất bảng báo cáo phân cấp rủi ro (Critical, High, Medium, Low).
4. Đưa ra giải pháp vá lỗi phẫu thuật cho từng lỗ hổng phát hiện được.
```

---

### Mẫu 6: Thực Thi Dự Án Lớn Hoặc Tính Năng Phức Tạp
Dùng khi bắt đầu một Epic, module mới hoặc quy trình kéo dài:

```text
/plan Thực hiện triển khai tính năng [Tên tính năng lớn] cho dự án.
+workflow: gstack
+graph: graph.json
Yêu cầu:
1. Đóng vai Product CEO: Chốt rõ phạm vi làm và KHÔNG làm để bảo toàn cốt lõi MVP.
2. Đóng vai Tech Lead: Khảo sát graph.json để phân rã kiến trúc và các file cần tác động.
3. Đóng vai Senior Implementer: Viết mã theo nguyên tắc Ponytail (Lean code).
4. Đóng vai QA Tester: Chạy verification gate bằng terminal trước khi xác nhận.
```

---

## 4. BẢNG TỪ KHÓA TỰ ĐỘNG BẮT KỸ NĂNG (AUTO-ROUTING)

Nếu bạn không muốn gõ cờ tham số `+`, chỉ cần nhắc đến các từ khóa tự nhiên này trong câu nói, AI sẽ tự động kích hoạt bộ kỹ năng tương ứng:

* Khi nhắc đến: *"giao diện, css, màu sắc, font, layout, bento, thẩm mỹ"*
  -> Tự động kích hoạt: `ui-ux-pro-max`, `frontend-design-mastery`, `zero-icon-slop`.
* Khi nhắc đến: *"tối giản, dọn code, refactor, code thừa, bỏ bớt, cấm rườm rà"*
  -> Tự động kích hoạt: `ponytail-lean-code`.
* Khi nhắc đến: *"kiến trúc, cây quan hệ, phụ thuộc, module nào gọi, bản đồ code"*
  -> Tự động kích hoạt: `graphify` (tra cứu `graph.json`).
* Khi nhắc đến: *"bảo mật, audit, rò rỉ key, owasp, xss, injection, lỗ hổng"*
  -> Tự động kích hoạt: `security-audit-cloudflare`, `security-audit-owasp`.
* Khi nhắc đến: *"chia vai, quy trình nhóm, tech lead, review pr, tester, kế hoạch"*
  -> Tự động kích hoạt: `gstack-workflows`, `agent-teams-workflow`.

---

## 5. NGUYÊN TẮC BẤT DI BẤT DỊCH (THE GOLDEN RULES)

1. **Verification Gate là tối thượng:** Không bao giờ tin lời khẳng định *"Code đã chạy tốt"* nếu AI chưa đưa ra bằng chứng terminal với `exit code == 0`.
2. **Neo vào đồ thị:** Khi làm việc trong dự án có trên 30 files, luôn nhắc AI `tra graph.json` để triệt tiêu tình trạng "chế lại bánh xe".
3. **Diff tối thiểu (Surgical Diff):** Giữ cho mỗi lần sửa code chỉ chạm đúng vài dòng cần thiết, giữ sạch git log cho toàn đội ngũ.
