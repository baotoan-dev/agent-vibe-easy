# Quy Chuẩn Kiến Trúc Lập Trình Tác Nhân (Agentic Coding Architecture Protocol)

Quy chuẩn này được đúc kết từ nghiên cứu kỹ thuật đảo ngược (reverse-engineering) các hệ thống prompt và kiến trúc điều phối hàng đầu: **Cursor, Windsurf (Cascade), Claude Code (Anthropic), và v0 (Vercel)**.

Mọi tác nhân AI khi làm việc trong workspace bắt buộc phải tuân thủ nghiêm ngặt 5 nguyên tắc sau:

---

## 1. Cổng Kiểm Chứng Nghiêm Ngặt (Verification Gate - Zero Assumption)

- **Cấm đoán mò:** Tuyệt đối không bao giờ tuyên bố "Đã sửa xong hoàn hảo" nếu chưa thực hiện ít nhất một lệnh kiểm chứng thực tế trong terminal.
- **Tiêu chuẩn Exit Code 0:** Sau khi sửa đổi code, bắt buộc phải chạy lệnh kiểm tra cú pháp và build (ví dụ: `npm run build`, `npx tsc --noEmit`, `cargo check`, hoặc lệnh test tương ứng).
- Chỉ được báo cáo thành công khi đầu ra dòng lệnh xác nhận `0 errors`.

---

## 2. Kỷ Luật Phẫu Thuật Mã Nguồn (Surgical Diffs & Anti-Git-Pollution)

- **Cấm viết lại toàn bộ file:** Không bao giờ ghi đè toàn bộ một file hàng trăm dòng code chỉ để thay đổi một hàm hoặc một điều kiện `if/else`.
- **Chống ô nhiễm Git Diff:** Tuyệt đối không tự ý format lại mã nguồn, thụt đầu dòng hay đổi tên các biến/hàm ở những vùng code không liên quan. Điều này làm loãng lịch sử commit và gây khó khăn cho việc Review code của con người.
- Luôn sử dụng thao tác thay thế phẫu thuật (Surgical text replacement) đúng chính xác các dòng mã mục tiêu.

---

## 3. Khảo Sát Ngữ Cảnh Theo Tầng Kiểu Dữ Liệu (Type-First Context Slicing)

- **Ưu tiên cấu trúc dữ liệu:** Khi tiếp cận một bài toán mới hoặc gỡ lỗi, bước đầu tiên luôn là đọc các file định nghĩa kiểu dữ liệu (`types/`, `schema.ts`, interface DTOs, hoặc model cơ sở dữ liệu). Khung xương dữ liệu quyết định 80% logic nghiệp vụ.
- **Lần theo chuỗi Import:** Không nạp bừa bãi mã nguồn cả thư mục vào ngữ cảnh. Đi theo chuỗi `import / export` từ file đầu vào đến file xử lý để giữ bộ nhớ ngữ cảnh luôn tinh gọn và sắc bén.

---

## 4. Vòng Tự Khắc Phục Lỗi Có Chủ Đích (Autonomous Self-Correction Loop)

Khi một lệnh thực thi trong terminal gặp thất bại (`exit code != 0`):
- **Cấm xin lỗi sáo rỗng.**
- **Cấm chạy lại y hệt câu lệnh cũ** mà không có bất kỳ sự thay đổi mã nguồn nào.
- **Quy trình bắt buộc 4 bước:**
  1. Phân tích trực tiếp luồng lỗi `stderr` và mã lỗi trả về.
  2. Xác định chính xác tệp tin và số dòng gây ra ngoại lệ (Exception / Compile error).
  3. Mở đúng phạm vi dòng đó và áp dụng bản vá phẫu thuật tối thiểu.
  4. Chạy lại lệnh kiểm chứng để đảm bảo lỗi đã được giải quyết dứt điểm.

---

## 5. Giới Hạn Không Gian Giải Pháp (Constrained Solution Space)

- Luôn ưu tiên tái sử dụng các tiện ích, component, API client và Design Tokens đã có sẵn trong dự án.
- Tuyệt đối không tự ý cài đặt thêm các thư viện bên ngoài (`npm install`) trừ khi người dùng yêu cầu rõ ràng hoặc giải pháp hiện tại không thể đáp ứng.
