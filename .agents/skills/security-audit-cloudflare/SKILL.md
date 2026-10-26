---
name: security-audit-cloudflare
description: Kỹ năng kiểm toán bảo mật mã nguồn đa tầng theo tiêu chuẩn Cloudflare (cloudflare/security-audit-skill). Tự động phát hiện lỗ hổng OWASP, rò rỉ secret, cấu hình sai CORS/Auth, và xuất báo cáo kiểm chứng độc lập kèm giải pháp phẫu thuật vá lỗi.
---

# Kỹ Năng Kiểm Toán Bảo Mật Đa Tầng (Cloudflare Security Audit)

Quy trình chuẩn mực để quét, rà soát và khắc phục các lỗ hổng an ninh mạng trong ứng dụng theo phương pháp luận của Cloudflare.

---

## 1. Các Tầng Kiểm Toán Bảo Mật (Audit Pillars)

1. **Phát hiện bí mật (Secret & Credential Leakage):**
   * Quét tìm hardcoded API keys, JWT secret, database credentials, private keys (`.pem`, `.key`).
   * Kiểm tra tệp `.env` có bị vô tình đưa vào git history hoặc bundle client-side không.

2. **Rà soát cấu hình mạng & máy chủ (CORS, Headers, SSL):**
   * Kiểm tra cấu hình CORS (`Access-Control-Allow-Origin: *` với thông tin nhạy cảm).
   * Kiểm tra các HTTP Security Headers thiết yếu: `Content-Security-Policy`, `X-Content-Type-Options: nosniff`, `X-Frame-Options: DENY`, `Strict-Transport-Security`.

3. **Lỗ hổng tiêm mã & đầu vào (Injection & Input Sanitization):**
   * SQL Injection / NoSQL Injection trong các tầng ORM/query builder.
   * Cross-Site Scripting (XSS) qua `innerHTML`, `v-html`, `[innerHTML]`, `dangerouslySetInnerHTML`.
   * SSRF (Server-Side Request Forgery) khi ứng dụng tải tài nguyên từ URL do người dùng cung cấp.

4. **Ủy quyền & Xác thực (Broken Authentication & Access Control):**
   * IDOR (Insecure Direct Object References) khi truy cập tài nguyên theo ID mà không kiểm tra quyền sở hữu.
   * JWT validation: kiểm tra thuật toán `none`, hết hạn token (`exp`), chữ ký an toàn.

---

## 2. Quy Trình Thực Hiện Kiểm Toán

### Bước 1: Quét thụ động (Static Discovery)
Phân tích tĩnh các tệp cấu hình, router, endpoints, và các điểm chạm dữ liệu bên ngoài (external inputs).

### Bước 2: Phân loại rủi ro (Risk Scoring)
Đánh giá mức độ nghiêm trọng theo thang điểm chuẩn:
* **CRITICAL:** Khai thác tức thì dẫn đến chiếm quyền hoặc rò rỉ toàn bộ cơ sở dữ liệu.
* **HIGH:** Vượt qua xác thực, leo thang đặc quyền, đánh cắp phiên người dùng.
* **MEDIUM:** CORS misconfiguration, thiếu bảo vệ CSRF trên endpoint nhạy cảm.
* **LOW / INFO:** Thiếu security headers, lộ phiên bản phần mềm.

### Bước 3: Xuất báo cáo kiểm chứng (Machine-Readable Findings)
Mỗi lỗ hổng được ghi lại theo cấu trúc:
* **Vulnerability:** Tên lỗ hổng (kèm mã CWE / OWASP)
* **Location:** Đường dẫn file và dòng code chính xác
* **Proof of Concept / Impact:** Cách thức khai thác và thiệt hại
* **Remediation:** Khuyến nghị sửa đổi phẫu thuật cụ thể

### Bước 4: Vá lỗi có kiểm chứng (Surgical Patching)
Chỉ sửa đổi đúng dòng code gây ra lỗ hổng, chạy lại kiểm tra xác nhận lỗ hổng đã được khắc phục hoàn toàn mà không làm gãy logic nghiệp vụ.
