---
name: vscode-extension
description: "Phát triển tiện ích mở rộng Visual Studio Code (VS Code Extension) sử dụng TypeScript, VS Code Extension API và Webview UI Toolkit."
---

# Kỹ Năng Phát Triển Tiện Ích VS Code (VS Code Extension Builder)

Kỹ năng này hướng dẫn AI agent thiết kế, xây dựng, gỡ lỗi và đóng gói tiện ích mở rộng cho VS Code và Cursor/Trae/Windsurf.

---

## 1. Cấu Trúc Dự Án Tiện Ích VS Code

```
extension/
├── package.json        # Manifest khai báo contribution points, commands, menus
├── tsconfig.json
├── src/
│   ├── extension.ts    # Entrypoint (activate, deactivate)
│   ├── commands/       # Danh sách logic xử lý lệnh
│   ├── providers/      # TreeDataProvider, CodeLensProvider, CompletionItemProvider
│   └── webview/        # Giao diện Webview HTML/React nhúng
└── vsc-extension-quickstart.md
```

---

## 2. Các Contribution Points Quan Trọng Trong `package.json`

- `commands`: Đăng ký tên lệnh và tiêu đề hiển thị trong Command Palette (`Ctrl+Shift+P`).
- `menus`: Định vị lệnh hiển thị trên thanh tiêu đề Editor, menu chuột phải (context menu) hoặc Activity Bar.
- `viewsContainers` & `views`: Đăng ký Sidebar riêng trong giao diện VS Code.
- `configuration`: Đăng ký các thiết lập tùy biến trong Settings (`settings.json`).

---

## 3. Quản Lý Vòng Đời & Bộ Nhớ (Disposables)

Mọi listener, command đăng ký trong hàm `activate` bắt buộc phải được đẩy vào `context.subscriptions` để tự động dọn dẹp khi extension bị tắt:
```typescript
import * as vscode from 'vscode';

export function activate(context: vscode.ExtensionContext) {
    const disposable = vscode.commands.registerCommand('vibe.helloWorld', () => {
        vscode.window.showInformationMessage('Hello from Easy-Vibe Extension!');
    });

    context.subscriptions.push(disposable);
}

export function deactivate() {}
```
