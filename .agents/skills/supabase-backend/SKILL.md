---
name: supabase-backend
description: Thiết kế cơ sở dữ liệu Supabase, viết câu lệnh SQL Migration, thiết lập bảo mật Row Level Security (RLS) và tích hợp API Supabase Client chuẩn xác.
---

# Kỹ Năng: Supabase Backend & Database Architecture

Kỹ năng này chuẩn hóa quy trình thiết kế cơ sở dữ liệu đám mây, bảo mật dữ liệu và tích hợp API Supabase vào dự án web/app.

---

## 1. Quy Trình 4 Bước Chuẩn (SOP)

### Bước 1: Thiết Kế Schema Dữ Liệu Quan Hệ (Database Modeling)
- Phân tích thực thể, mối quan hệ 1-1, 1-nhiều, nhiều-nhiều.
- Luôn sử dụng kiểu dữ liệu chuẩn PostgreSQL: `UUID` làm khóa chính (`gen_random_uuid()`), `TIMESTAMPTZ` cho thời gian (`now()`).
- Tự động tạo trường `created_at` và `updated_at`.
- Đảm bảo các khóa ngoại (`FOREIGN KEY`) liên kết đến bảng `auth.users(id)` có ràng buộc `ON DELETE CASCADE`.

### Bước 2: Bắt Buộc Kích Hoạt Row Level Security (RLS)
Mọi bảng mới tạo bắt buộc phải bật RLS để ngăn chặn rò rỉ dữ liệu qua Client API:
```sql
ALTER TABLE table_name ENABLE ROW LEVEL SECURITY;
```
Thiết lập 4 Policies cơ bản:
1. **SELECT:** Người dùng chỉ đọc dữ liệu của chính mình (`auth.uid() = user_id`) hoặc dữ liệu công khai (`is_public = true`).
2. **INSERT:** Gán `user_id` tự động bằng `auth.uid()`.
3. **UPDATE:** Chỉ cho phép sửa khi `auth.uid() = user_id`.
4. **DELETE:** Chỉ cho phép xóa khi `auth.uid() = user_id`.

### Bước 3: Tích Hợp Supabase Client An Toàn
- Sử dụng biến môi trường: `NEXT_PUBLIC_SUPABASE_URL` và `NEXT_PUBLIC_SUPABASE_ANON_KEY`.
- **TUYỆT ĐỐI KHÔNG** để lộ `SERVICE_ROLE_KEY` ở phía Frontend/Client.
- Khởi tạo client dùng chung (Singleton pattern) và tạo TypeScript Types tự động từ schema.

### Bước 4: Xử Lý Realtime & Storage
- Kích hoạt Supabase Realtime cho bảng nếu ứng dụng cần chat, thông báo tức thì.
- Phân quyền Storage Bucket cho file tải lên (avatar, tài liệu) kèm RLS tương ứng.

---

## 2. Hướng Dẫn Tối Ưu Cho Từng Dòng Model

### 🌟 Dành cho Gemini 2.0 / GPT-4o
- **Yêu cầu thế mạnh:** Thiết kế nhanh schema quan hệ và tạo migration SQL đầy đủ kèm chú thích tiếng Việt.
- **Prompt mẫu:**
  ```text
  Theo skill `supabase-backend`:
  Tôi cần tạo database cho tính năng [Mô tả tính năng].
  Hãy viết script SQL đầy đủ: tạo bảng, khóa ngoại nối auth.users, bật RLS và viết đầy đủ các policies SELECT/INSERT/UPDATE/DELETE.
  ```

### 🧠 Dành cho Claude 3.7 / 3.5 Sonnet
- **Yêu cầu thế mạnh:** Viết code TypeScript tích hợp client, xử lý Auth hook, server-side fetching an toàn và type definitions.
- **Prompt mẫu:**
  ```text
  Theo skill `supabase-backend`:
  Hãy viết code tích hợp Supabase phía client cho bảng [Tên bảng]:
  - Định nghĩa TypeScript Interface cho Record.
  - Viết custom hook hoặc service functions: getList, createItem, updateItem, deleteItem.
  - Xử lý bắt lỗi (error handling) và trạng thái loading chuẩn chỉ.
  ```
