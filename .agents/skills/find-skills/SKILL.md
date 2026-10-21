---
name: find-skills
description: "Tìm kiếm, khám phá và cài đặt tự động các kỹ năng AI Agent từ kho lưu trữ toàn cầu (skills.sh & vercel-labs/agent-skills)."
---

# Kỹ Năng Tìm Kiếm & Khám Phá Kỹ Năng Mới (find-skills Engine)

Kỹ năng này hoạt động như một "App Store Search Engine" dành riêng cho AI Agent, tự động tra cứu, đánh giá và cài đặt thêm các kỹ năng cần thiết từ cộng đồng mở `skills.sh`.

---

## 1. Cơ Chế Hoạt Động Của find-skills

Khi người dùng đưa ra một yêu cầu trừu tượng hoặc cần một công cụ mới chưa có trong hệ thống cục bộ:
1. **Phân Tích Nhu Cầu**: Trích xuất từ khóa mục tiêu (ví dụ: "Remotion video", "GraphQL generator", "Solidity audit").
2. **Truy Vấn Kho Kỹ Năng Toàn Cầu**:
   - Tra cứu trên `https://skills.sh`
   - Tìm kiếm qua API hoặc danh mục của `vercel-labs/agent-skills`
3. **Đánh Giá Tính Tương Thích**:
   - Kiểm tra xem skill có hỗ trợ môi trường hiện tại (Windows / macOS, Node.js / Python).
   - Đảm bảo skill có tệp `SKILL.md` hợp lệ với YAML frontmatter.
4. **Cài Đặt Một Bước**:
   ```bash
   npx skills add <author>/<skill-name> -y
   ```

---

## 2. Các Lệnh Thực Thi Tiêu Biểu

- Tra cứu kỹ năng liên quan:
  ```
  find-skills: "Tối ưu hóa hiệu năng React component"
  ```
- Liệt kê toàn bộ kỹ năng đã cài:
  ```bash
  npx skills list
  ```
- Kiểm tra cập nhật của các skills hiện tại:
  ```bash
  npx skills update
  ```
