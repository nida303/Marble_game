import 'package:flame/events.dart';
import 'package:flame_forge2d/flame_forge2d.dart';
import 'package:flutter/material.dart';
import '../marble_game.dart';

class Marble extends BodyComponent<MarbleGame> with DragCallbacks {
  final Vector2 startPosition;
  final MarbleGame gameRef;

  Marble(this.startPosition, this.gameRef);

  Color color = const Color(0xFF6A1B9A); // Warna Awal (Ungu)

  @override
  Body createBody() {
    final shape = CircleShape()..radius = 2.0; // Sesuaikan ukuran

    final fixtureDef = FixtureDef(shape)
      ..restitution = 0.5
      ..density = 0.5
      ..friction = 0.5;

    final bodyDef = BodyDef()
      ..position = startPosition // <--- 3. INI KUNCINYA! Jangan Vector2(0,0)
      ..type = BodyType.dynamic;

    return world.createBody(bodyDef)..createFixture(fixtureDef);
  }

  @override
  void update(double dt) {
    super.update(dt);
    final pos = Offset(body.position.x, body.position.y);

    // LOGIKA GANTI WARNA BERDASARKAN KONTAINER
    // 0 = Oranye, 1 = Kuning, 2 = Tosca/Biru
    if (gameRef.buckets[0].contains(pos)) {
      color = const Color(0xFFE7AB79);
    } else if (gameRef.buckets[1].contains(pos)) {
      color = const Color(0xFFE7E986);
    } else if (gameRef.buckets[2].contains(pos)) {
      color = const Color(0xFF83E0E9);
    } else {
      color = const Color(0xFF6A1B9A); // Balik Ungu jika ditarik keluar
    }
  }

  @override
  void render(Canvas canvas) {
    final circle = body.fixtures.first.shape as CircleShape;
    // Shadow
    canvas.drawCircle(
        const Offset(0.2, 0.2), circle.radius, Paint()..color = Colors.black26);
    // Kelereng Utama
    canvas.drawCircle(Offset.zero, circle.radius, Paint()..color = color);
    // Kilauan Putih (Highlight)
    canvas.drawCircle(Offset(-0.5, -0.5), circle.radius * 0.3,
        Paint()..color = Colors.white30);
  }

  // DRAG HANDLING
  @override
  void onDragStart(DragStartEvent event) {
    gameRef.onDragStart(event);
    super.onDragStart(event);
  }

  @override
  void onDragUpdate(DragUpdateEvent event) {
    gameRef.onDragUpdate(event);
    super.onDragUpdate(event);
  }

  @override
  void onDragEnd(DragEndEvent event) {
    gameRef.onDragEnd(event);
    super.onDragEnd(event);
  }
}
