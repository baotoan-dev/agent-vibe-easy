---
name: godot-game-development
description: "Phát triển game 2D và 3D đa nền tảng bằng Godot 4.x Engine và ngôn ngữ kịch bản GDScript/C#."
---

# Kỹ Năng Lập Trình Game Godot Engine (Godot 4.x & GDScript)

Kỹ năng này hướng dẫn AI agent thiết kế cơ chế gameplay, cây Scene (Node Tree), xử lý vật lý, shader và xuất bản trò chơi trên máy tính, web (HTML5 WebAssembly) và di động bằng Godot 4.

---

## 1. Nguyên Tắc Cốt Lõi Của Godot Engine

1. **Kiến Trúc Node & Scene (Everything is a Scene)**:
   - Mỗi thành phần game (Player, Enemy, UI HUD, Level) là một Scene độc lập.
   - Các Scene nhỏ được lồng vào nhau tạo thành Scene lớn hơn theo nguyên tắc Composition (kết hợp) thay vì Inheritance (kế thừa).
2. **Quy Tắc Tín Hiệu (Signal Up, Call Down)**:
   - Node cha gọi hàm trực tiếp của Node con (`get_node("Child").call_func()`).
   - Node con phát tín hiệu (`signal`) lên cho Node cha lắng nghe, đảm bảo tính đóng gói và không phụ thuộc ngược.
3. **Vòng Lặp Game Loop**:
   - `_process(delta)`: Dùng cho logic chuyển động thị giác, hiệu ứng UI phụ thuộc vào tốc độ khung hình.
   - `_physics_process(delta)`: Bắt buộc dùng cho mọi tương tác vật lý (va chạm, di chuyển của `CharacterBody2D/3D`).

---

## 2. Kịch Bản GDScript Chuẩn 4.x

```gdscript
extends CharacterBody2D

@export var speed: float = 300.0
@export var jump_velocity: float = -400.0

var gravity: int = ProjectSettings.get_setting("physics/2d/default_gravity")

signal health_changed(new_health: int)

func _physics_process(delta: float) -> void:
    if not is_on_floor():
        velocity.y += gravity * delta

    if Input.is_action_just_pressed("ui_accept") and is_on_floor():
        velocity.y = jump_velocity

    var direction: float = Input.get_axis("ui_left", "ui_right")
    if direction:
        velocity.x = direction * speed
    else:
        velocity.x = move_toward(velocity.x, 0, speed)

    move_and_slide()
```
