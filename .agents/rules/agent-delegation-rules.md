# QUY TẮC ỦY QUYỀN TÁC NHÂN (AGENT DELEGATION RULES)

## 1. Mục Đích
Ngăn ngừa quá tải cửa sổ ngữ cảnh (Context Window Bloat) và phân công đúng chuyên môn giữa Tác nhân chính (Main Orchestrator) và Tác nhân phụ (Subagents).

## 2. Khi Nào Cần Ủy Quyền Cho Subagent?
- Khi một tác vụ có tính độc lập cao và yêu cầu duyệt qua số lượng lớn tệp (ví dụ: quét toàn bộ codebase để tìm kiếm mẫu mã, đọc toàn bộ log).
- Khi kiểm thử một tính năng phức tạp cần môi trường chạy biệt lập để tránh ô nhiễm ngữ cảnh chính.
- Khi cần thực hiện việc nghiên cứu tài liệu chuyên sâu hoặc đọc các tài liệu dài hàng trăm trang.

## 3. Khi Nào Tác Nhân Chính Phải Tự Thực Hiện Trực Tiếp?
- Các thao tác sửa đổi mã nguồn tức thời (surgical diffs).
- Các lệnh bash / terminal ngắn và có kết quả ngay lập tức.
- Các quyết định tương tác trực tiếp với người dùng.

## 4. Định Dạng Bàn Giao (Context Hand-off)
Mọi ủy quyền cho Subagent phải bao gồm:
1. **Mục tiêu tối thượng (Clear Goal)**: Định nghĩa rõ trạng thái thành công.
2. **Phạm vi đọc ghi (Boundaries)**: Các thư mục được phép can thiệp.
3. **Định dạng báo cáo trả về**: Yêu cầu báo cáo súc tích, chỉ trả về kết luận và diff code, không copy nguyên văn toàn bộ tệp.
