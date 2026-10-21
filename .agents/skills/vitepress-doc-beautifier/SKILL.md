---
name: vitepress-doc-beautifier
description: "Mỹ hóa tài liệu kỹ thuật VitePress bằng Element Plus, ClientOnly, StepBar, tabs tương tác, collapse và badges trực quan."
---

# Kỹ Năng Mỹ Hóa Tài Liệu VitePress (VitePress Doc Beautifier)

Kỹ năng này hướng dẫn AI agent nâng cấp tài liệu Markdown đơn điệu thành một trang hướng dẫn trực quan, tương tác cao, kết hợp hoàn hảo giữa các thành phần nguyên bản của VitePress và thư viện Element Plus.

---

## 1. Các Khối Cảnh Báo Trực Quan (Callouts & Alerts)

### VitePress Native Containers
```markdown
::: tip 💡 MẸO HAY
Gợi ý thông minh giúp thao tác nhanh hơn.
:::

::: warning ⚠️ LƯU Ý QUAN TRỌNG
Cảnh báo các rủi ro có thể gặp phải.
:::

::: danger 🚫 NGUY HIỂM
Cảnh báo thao tác phá hủy hoặc mất mát dữ liệu.
:::
```

### Element Plus Alerts
```html
<el-alert title="Đã lưu thành công dữ liệu" type="success" show-icon />
<el-alert title="Cảnh báo phiên bản thử nghiệm" type="warning" show-icon />
```

---

## 2. Thanh Tiến Trình & Bước Thực Hiện (StepBar)

> ⚠️ **BẮT BUỘC**: Tất cả các component tương tác như `<StepBar>` phải được bao bọc trong thẻ `<ClientOnly>` để tránh lỗi Hydration trong quá trình Static Site Generation (SSG).

```html
<ClientOnly>
  <StepBar
    :active="1"
    :items="[
      { title: 'Chuẩn bị môi trường', description: 'Cài đặt Node.js và Git' },
      { title: 'Tạo mã nguồn', description: 'Để AI đồng hành viết code' },
      { title: 'Kiểm thử & Tối ưu', description: 'Đảm bảo chất lượng' },
      { title: 'Triển khai', description: 'Đưa lên Internet' }
    ]"
  />
</ClientOnly>
```

---

## 3. Khối Nhóm Code Chuyển Đổi Nhanh (Code Groups)

```markdown
::: code-group

```bash [npm]
npm install easy-vibe
```

```bash [pnpm]
pnpm add easy-vibe
```

```bash [yarn]
yarn add easy-vibe
```

:::
```
