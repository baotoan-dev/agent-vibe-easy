---
name: claude-agent-sdk
description: "Xây dựng các tác nhân AI độc lập (Autonomous Agents) tùy biến sử dụng Anthropic Claude Agent SDK, định nghĩa công cụ tùy biến (Custom Tools) và vòng lặp tự hành."
---

# Kỹ Năng Lập Trình Tác Nhân AI Bằng Claude Agent SDK

Kỹ năng này hướng dẫn AI agent lập trình các hệ thống Agent tự hành dựa trên SDK của Anthropic, quản lý vòng lặp Tool Calling, Computer Use và phòng chống vòng lặp vô tận (Infinite Tool Loops).

---

## 1. Vòng Lặp Tự Hành Cốt Lõi (Agent Autonomous Loop)

Một Agent chuẩn tuân theo mô hình chu kỳ:
1. **Lắng nghe & Quan sát (Observation)**: Đọc trạng thái môi trường hoặc yêu cầu từ người dùng.
2. **Suy luận & Lựa chọn công cụ (Tool Call Generation)**: LLM quyết định xem cần gọi công cụ nào và chuẩn bị tham số JSON Schema.
3. **Thực thi an toàn (Tool Execution)**: Môi trường chạy công cụ (File system, Web search, Bash) và thu thập kết quả trả về.
4. **Phản hồi hoặc Tự sửa đổi (Self-Correction / Final Answer)**: Nếu công cụ gặp lỗi, Agent tự phân tích thông báo lỗi và đổi tham số để gọi lại.

---

## 2. Định Nghĩa Công Cụ Tùy Biến (Custom Tool Definition)

```typescript
import Anthropic from '@anthropic-ai/sdk';

const anthropic = new Anthropic();

const weatherTool: Anthropic.Tool = {
  name: 'get_current_weather',
  description: 'Lấy thông tin nhiệt độ và thời tiết hiện tại của một thành phố',
  input_schema: {
    type: 'object',
    properties: {
      location: { type: 'string', description: 'Tên thành phố, ví dụ: Hanoi, Tokyo' },
      unit: { type: 'string', enum: ['celsius', 'fahrenheit'] }
    },
    required: ['location']
  }
};
```

---

## 3. Rào Chắn An Toàn (Safety Guardrails)

- **Max Turns Limit**: Luôn thiết lập biến đếm giới hạn số lượt lặp tối đa (ví dụ: `max_iterations = 25`) để ngăn tiêu tốn ngân sách API do kẹt vòng lặp.
- **Human-in-the-Loop Confirmation**: Đối với các thao tác nhạy cảm (xóa file, gửi email, trừ tiền), bắt buộc tạm dừng và yêu cầu người dùng gõ xác nhận ("y/n").
