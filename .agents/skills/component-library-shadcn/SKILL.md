---
name: component-library-shadcn
description: "Tích hợp và xây dựng hệ thống component giao diện hiện đại sử dụng shadcn/ui, Radix UI primitives, TailwindCSS và Lucide Icons."
---

# Kỹ Năng Tích Hợp Thư Viện Giao Diện shadcn/ui & Radix Primitives

Kỹ năng này hướng dẫn AI agent thiết lập và sử dụng kiến trúc Component mã nguồn mở không phụ thuộc package đóng gói sẵn (Copy-Paste Architecture) qua shadcn/ui.

---

## 1. Triết Lý shadcn/ui

- **Code thuộc quyền sở hữu của bạn**: Component được sao chép trực tiếp vào thư mục `components/ui/` của dự án, cho phép toàn quyền tùy biến CSS và logic mà không bị giới hạn bởi API của một thư viện bên thứ ba.
- **Tiêu chuẩn trợ năng (Accessibility - a11y)**: Dựa trên Radix UI primitives, đảm bảo đầy đủ điều hướng bằng bàn phím (Keyboard Navigation) và ARIA attributes.
- **Tối ưu hóa Dark Mode**: Đồng bộ biến CSS HSL / OKLCH mượt mà giữa chế độ sáng và tối.

---

## 2. Cấu Trúc Khởi Tạo Chuẩn

```
src/
├── components/
│   ├── ui/
│   │   ├── button.tsx
│   │   ├── dialog.tsx
│   │   ├── dropdown-menu.tsx
│   │   └── card.tsx
│   └── navbar.tsx
├── lib/
│   └── utils.ts        # Hàm cn() kết hợp clsx và tailwind-merge
└── styles/
    └── globals.css     # CSS Variables định nghĩa màu sắc ngữ nghĩa
```

---

## 3. Quy Tắc Sử Dụng Hàm Trộn Class `cn()`

Luôn bọc mọi `className` tùy biến qua helper `cn()` để tránh xung đột class của Tailwind:
```tsx
import * as React from "react";
import { Slot } from "@radix-ui/react-slot";
import { cva, type VariantProps } from "class-variance-authority";
import { cn } from "@/lib/utils";

const buttonVariants = cva(
  "inline-flex items-center justify-center rounded-md text-sm font-medium transition-colors focus-visible:outline-none focus-visible:ring-2 disabled:opacity-50",
  {
    variants: {
      variant: {
        default: "bg-primary text-primary-foreground hover:bg-primary/90",
        destructive: "bg-destructive text-destructive-foreground hover:bg-destructive/90",
        outline: "border border-input bg-background hover:bg-accent",
        ghost: "hover:bg-accent hover:text-accent-foreground",
      },
      size: {
        default: "h-10 px-4 py-2",
        sm: "h-9 rounded-md px-3",
        lg: "h-11 rounded-md px-8",
      },
    },
    defaultVariants: {
      variant: "default",
      size: "default",
    },
  }
);
```
