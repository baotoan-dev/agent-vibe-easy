---
name: playwright-e2e-testing
description: "Kiểm thử tự động giao diện End-to-End (E2E) bằng Microsoft Playwright, kiểm tra luồng người dùng (User Flows), chụp ảnh đối sánh (Visual Regression) và chặn bắt API."
---

# Kỹ Năng Kiểm Thử Tự Động Trình Duyệt Với Playwright (Playwright E2E Testing)

Kỹ năng này hướng dẫn AI agent viết kịch bản kiểm thử toàn trình (End-to-End) trên các trình duyệt Chromium, Firefox, WebKit, đảm bảo trải nghiệm người dùng không bị phá vỡ sau mỗi đợt deploy.

---

## 1. Mẫu Kịch Bản Kiểm Thử Playwright Chuẩn

```typescript
import { test, expect } from '@playwright/test';

test.describe('Luồng Người Dùng & Điều Hướng', () => {
  test('Người dùng truy cập trang chủ và chuyển trang mượt mà', async ({ page }) => {
    // 1. Điều hướng đến trang web
    await page.goto('http://localhost:5173/easy-vibe/');

    // 2. Chờ tiêu đề xuất hiện
    await expect(page).toHaveTitle(/Easy-Vibe/);

    // 3. Click nút điều hướng
    const getStartedBtn = page.getByRole('link', { name: 'Bắt đầu ngay' });
    await expect(getStartedBtn).toBeVisible();
    await getStartedBtn.click();

    // 4. Kiểm tra URL đã thay đổi
    await expect(page).toHaveURL(/.*\/stage-1\//);
  });
});
```

---

## 2. Kiểm Thử Đối Sánh Hình Ảnh (Visual Regression Testing)

Bảo đảm giao diện không bị lệch layout pixel ngoài ý muốn:
```typescript
test('Kiểm tra giao diện không bị vỡ layout', async ({ page }) => {
  await page.goto('http://localhost:5173/easy-vibe/');
  await expect(page).toHaveScreenshot('landing-page.png', {
    maxDiffPixelRatio: 0.05,
  });
});
```

---

## 3. Best Practices Vận Hành CI/CD

- **Không dùng sleep cứng (`page.waitForTimeout`)**: Luôn sử dụng Web-First Assertions (`toBeVisible()`, `toHaveText()`) để Playwright tự động retry thông minh.
- **Mocking API**: Khi chạy CI, mock các service bên thứ ba (Stripe, AI API) để test chạy nhanh và ổn định, không phụ thuộc kết nối mạng bên ngoài.
