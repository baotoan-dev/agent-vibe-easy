---
name: interactive-tutorial-authoring
description: "Biên soạn tài liệu và bài giảng công nghệ có tính tương tác cao (Interactive Tutorials) theo mô hình xoắn ốc (Spiral Narrative) và nhúng Vue 3 components."
---

# Kỹ Năng Biên Soạn Hướng Dẫn Tương Tác (Interactive Tutorial Authoring)

Kỹ năng này hướng dẫn AI agent thiết kế bài giảng, tài liệu hướng dẫn kỹ thuật áp dụng triệt để phương pháp sư phạm hiện đại: **"Trải nghiệm trước -> Lý thuyết sau"** kết hợp component Vue 3 tương tác.

---

## 1. Mô Hình Tự Sự Xoắn Ốc (Spiral Narrative)

Mỗi khái niệm phức tạp đều phải đi qua 5 chặng nhận thức:
```
[1. Trải nghiệm cụ thể] ──► [2. Khái niệm trừu tượng] ──► [3. So sánh lịch sử]
                                                                  │
[5. Tầm nhìn tương lai] ◄── [4. Bản chất cốt lõi] ◄───────────────┘
```

1. **Trải nghiệm cụ thể**: Mở đầu bài học bằng một mini-demo tương tác để người học bấm, thử nghiệm và thấy kết quả ngay lập tức (ví dụ: `<TokenizationDemo />`).
2. **Khái niệm trừu tượng**: Sau khi người học đã tò mò, mới giải thích định nghĩa toán học hoặc kiến trúc phần mềm.
3. **So sánh phương án cũ vs mới**: Nêu rõ vì sao cách làm ngây thơ (Naive approach) bị đào thải và phương án mới ưu việt ở điểm nào.
4. **Bản chất cốt lõi**: Phân tích sâu dưới góc độ phần cứng hoặc thuật toán.
5. **Mở rộng tương lai**: Gợi ý các hướng phát triển hoặc bài tập ứng dụng thực tế.

---

## 2. Tiêu Chuẩn Component Nhúng (Interactive Vue Component Specs)

- **Độc lập và tự chứa**: Component không phụ thuộc vào trạng thái toàn cục của các trang khác.
- **Phản hồi tức thì**: Mọi thao tác trượt slider, gõ input text đều phải cập nhật visual canvas ngay lập tức (< 16ms).
- **Thân thiện di động**: Co giãn mượt mà trên màn hình cảm ứng điện thoại, hỗ trợ touch gestures.
