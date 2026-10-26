---
name: enum-driven-architecture
description: Quy chuan kien truc dinh huong Enum (Enum-Driven Architecture) va triet tieu magic string literal. Huong dan thiet ke String Enum tap trung trong thu muc enums/, rang buoc type-safety cho models/DTOs, va kiem thu trang thai he thong chuan doanh nghiep.
---

# Ky Nang Kien Truc Dinh Huong Enum (Enum-Driven Architecture Mastery)

Ky nang nay huong dan quy trinh chuan hoa va bao ve ma nguon khoi "Magic String Slop", bao dam moi trang thai, vai tro, danh muc va ma loi deu co mot **Nguon Chuan Duy Nhat (Single Source of Truth)**.

---

## 1. Quy Trinh 4 Buoc Trien Khai (4-Step Enum Workflow)

Moi khi can them hoac sua ma nguon lien quan den trang thai:

```
[Buoc 1: Kiem Tra & Dinh Vi]
       |
       v
Kiem tra xem Enum da ton tai trong thu muc enums/ chua?
       |
  +----+----+
  |         |
Chua       Da co
  |         |
Tao moi   Tai su dung truc tiep
  |
  v
[Buoc 2: Dinh Nghia String Enum]
Tao <domain>.enum.ts voi String Enum tuong minh (OK = 'ok', ERROR = 'error')
       |
       v
[Buoc 3: Rang Buoc Interface / Type]
Cap nhat Model, DTO, Store signals dung kieu Enum thay vi chuoi string
       |
       v
[Buoc 4: Ap Dung Trong Logic & Unit Test]
Thay the moi magic string trong Service, Interceptor, Component va Tests bang Enum.Member
```

---

## 2. Mau To Chuc Tep Thu Muc (Folder Architecture Pattern)

```text
src/app/
|-- core/
|   `-- telemetry/
|       |-- enums/
|       |   `-- telemetry.enum.ts    <-- Cac enum rieng cho telemetry
|       |-- tracing.interceptor.ts
|       `-- rum.service.ts
|-- shared/
|   |-- enums/
|   |   |-- index.ts                 <-- Barrel export
|   |   |-- telemetry.enum.ts        <-- SpanStatus, TelemetryStatus
|   |   |-- http-status.enum.ts      <-- HttpStatus codes
|   |   `-- ui-theme.enum.ts         <-- ThemeMode
|   `-- models/
|       `-- telemetry.model.ts       <-- Interface dung SpanStatus
`-- features/
    |-- orders/
    |   |-- enums/
    |   |   `-- order-status.enum.ts <-- OrderStatus (PENDING, PAID, SHIPPED)
    |   `-- models/
    `-- social-feed/
        |-- enums/
        |   `-- feed-category.enum.ts <-- FeedCategory (ARCHITECTURE, SECURITY...)
        `-- models/
```

---

## 3. Cac Chuan Mau Code (Reference Implementations)

### Mau 1: String Enum Cho Tracing & Telemetry
```typescript
// src/app/shared/enums/telemetry.enum.ts
export enum SpanStatus {
  OK = 'ok',
  ERROR = 'error',
}

export enum TelemetryStatus {
  LIVE = 'live',
  SUCCESS = 'success',
  WARNING = 'warning',
  ERROR = 'error',
  DEFAULT = 'default',
}
```

### Mau 2: Rang Buoc Type Trong Model
```typescript
// src/app/shared/models/telemetry.model.ts
import { SpanStatus } from '../enums/telemetry.enum';

export interface SpanRecord {
  id: string;
  traceId: string;
  spanId: string;
  name: string;
  startTime: number;
  durationMs: number;
  status: SpanStatus; // Bat buoc dung SpanStatus
  httpStatus?: number;
}
```

### Mau 3: Su Dung Trong Interceptor / Service
```typescript
import { SpanStatus } from './telemetry.enum';

// Su dung truc tiep thanh vien Enum, tuyet doi khong viet 'error' hoac 'ok'
rumService.recordSpan({
  ...baseSpan,
  status: event.status >= 400 ? SpanStatus.ERROR : SpanStatus.OK,
});
```

### Mau 4: Unit Test Kiem Thu
```typescript
import { SpanStatus } from './telemetry.enum';

it('should record error span when request fails', () => {
  const spy = vi.spyOn(rumService, 'recordSpan');
  triggerHttpFailure();
  expect(spy).toHaveBeenCalledWith(
    expect.objectContaining({
      status: SpanStatus.ERROR, // Kiem tra qua Enum
    })
  );
});
```

---

## 4. Checklist Kiem Dinh (Verification Checklist)

Truoc khi xac nhan hoan thanh bat ky task lap trinh nao:
- [ ] Da loai bo 100% magic string literals khoi logic kiem tra trang thai?
- [ ] Enum duoc dat trong thu muc `enums/` va co hau to `.enum.ts`?
- [ ] Tat ca cac thanh vien cua Enum co gia tri string tuong minh (`KEY = 'value'`)?
- [ ] Cac interface / type / DTO da dung kieu Enum chua?
- [ ] Cac unit tests da dung Enum de `expect(...).toBe(Enum.MEMBER)` chua?
- [ ] Lenh build terminal (`npm run build`, `npm test`) co Exit Code == 0 khong?
