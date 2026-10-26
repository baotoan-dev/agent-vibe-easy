# Ky Luat Kien Truc Dinh Huong Enum & Triet Tieu Magic String (Enum-Driven Architecture Protocol)

Quy tac nay la **luat bat buoc tuyet doi** ap dung cho moi tac vu lap trinh ma nguon (TypeScript, JavaScript, Python, Go, Rust, Java, C#) cua AI Agent.

---

## 1. Ly Do & Thuc Trang (The "Magic String Slop" Problem)

Mot trong nhung loi lap trinh nguy hiem va de gay loi nhat trong cac du an phan mem la **Magic Strings**:
- **String literals tu do:** Lap trinh vien hoac AI go truc tiep `'error'`, `'ok'`, `'pending'`, `'success'`, `'active'`, `'admin'` rai rac trong component, service, store va interceptor.
- **Hau qua:**
  1. *De go sai chinh ta:* Chi can go nham `'erorr'` hay `'successs'` la logic he thong chet lang (silent failure) ma trinh bien dich khong the phat hien.
  2. *Kho refactor:* Khi muon doi ten trang thai tu `'ok'` sang `'success'`, phai dung search-and-replace toan du an, rat de sua nham ca nhung cho khong lien quan.
  3. *Thieu Single Source of Truth:* Khong ai biet he thong co tong cong bao nhieu trang thai hop le neu khong doc toan bo code.

---

## 2. 6 Dieu Luat Bat Bien Cua Kien Truc Dinh Huong Enum

### Dieu 1: Luat Triet Tieu Magic String (Zero-Magic-Strings Law)
- **TUYET DOI CAM:** Go truc tiep string literal cho cac gia tri:
  - Trang thai mang luoi, telemetry, HTTP status (`status: 'error'`, `status: 'ok'`).
  - Trang thai don hang, quy trinh (`status: 'pending'`, `status: 'paid'`).
  - Vai tro nguoi dung (`role: 'admin'`, `role: 'operator'`).
  - Loai hanh dong, su kien (`type: 'ADD_ITEM'`, `category: 'Security'`).
- **BAT BUOC:** Dinh nghia tap trung trong tep Enum va import thanh vien Enum ra su dung (`status: SpanStatus.ERROR`).

### Dieu 2: Luat Dinh Vi Tap Trung (Centralized Enum Directory)
- Moi Enum phai duoc to chuc ro rang trong thu muc `enums/`:
  - Enums dung chung toan ung dung: `src/app/shared/enums/<domain>.enum.ts`.
  - Enums rieng cho tung feature: `src/app/features/<feature>/enums/<domain>.enum.ts`.
  - Enums thuoc tang core/he thong: `src/app/core/<module>/enums/<domain>.enum.ts`.
- Quy uoc dat ten file: `<domain>.enum.ts` (Vi du: `telemetry.enum.ts`, `order.enum.ts`, `auth.enum.ts`).

### Dieu 3: Luat String Enum Tuong Minh (Explicit String Enum Values)
- **CAM** dung Numeric Enum mac dinh (`enum Status { OK, ERROR }` -> se sinh ra 0, 1). Numeric enum rat de bi sai lech khi serialize JSON, gui qua API, hoac luu database.
- **BAT BUOC** dung String Enum voi gia tri chuoi tuong minh:
  ```typescript
  export enum SpanStatus {
    OK = 'ok',
    ERROR = 'error',
  }
  ```

### Dieu 4: Quy Uoc Dat Ten Chuan Muc (Strict Naming Conventions)
- **Ten Enum:** Dung PascalCase, danh tu so it (Vi du: `SpanStatus`, `OrderStatus`, `UserRole`, `PaymentMethod`).
- **Thanh vien Enum:** Dung UPPER_SNAKE_CASE hoac PascalCase nhat quan trong toan du an (Vi du: `SpanStatus.OK`, `SpanStatus.ERROR`, `OrderStatus.PENDING`).

### Dieu 5: Rang Buoc Kieu Type-First (Type-First Interface Binding)
- Trong cac `interface`, `type`, `DTO` va `Model`, truong trang thai **bat buoc** phai khai bao bang kieu Enum:
  ```typescript
  // CHUAN:
  export interface SpanRecord {
    id: string;
    status: SpanStatus;
  }

  // CAM:
  export interface SpanRecord {
    id: string;
    status: 'ok' | 'error'; // Magic string union
  }
  ```

### Dieu 6: Kiem Thu & So Sanh Bang Enum (Enum-Based Verification)
- Trong logic so sanh (`if`, `switch-case`, `filter`) va unit tests (`expect`), phai so sanh truc tiep voi Enum member:
  ```typescript
  // CHUAN:
  if (span.status === SpanStatus.ERROR) { ... }
  expect(recordedSpan.status).toBe(SpanStatus.ERROR);

  // CAM:
  if (span.status === 'error') { ... }
  expect(recordedSpan.status).toBe('error');
  ```

---

## 3. Bang So Sanh Chuan Mau (Bad vs Good Pattern)

| Tinh Huong | Cach Viet Te (Anti-Pattern / Slop) | Cach Viet Chuan (Enum-Driven Architecture) |
| :--- | :--- | :--- |
| **Goi ham record telemetry** | `status: 'error'` | `status: SpanStatus.ERROR` |
| **Kiem tra HTTP phan hoi** | `event.status >= 400 ? 'error' : 'ok'` | `event.status >= 400 ? SpanStatus.ERROR : SpanStatus.OK` |
| **Filter mang theo trang thai** | `list.filter(s => s.status === 'error')` | `list.filter(s => s.status === SpanStatus.ERROR)` |
| **Khai bao interface** | `status: 'pending' \| 'completed'` | `status: OrderStatus` |
| **Switch case dieu huong** | `case 'admin': doSomething();` | `case UserRole.ADMIN: doSomething();` |
| **Unit test assertion** | `expect(res.status).toBe('error');` | `expect(res.status).toBe(SpanStatus.ERROR);` |
