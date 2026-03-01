import 'package:flame_forge2d/flame_forge2d.dart';

class Wall extends BodyComponent {
  final Vector2 start;
  final Vector2 end;

  Wall(this.start, this.end);

  @override
  Body createBody() {
    final shape = EdgeShape()..set(start, end);
    final fixtureDef = FixtureDef(shape, friction: 0.3);
// Gunakan tanda kurung () untuk membuat objeknya
    final bodyDef = BodyDef(position: Vector2.zero()); // Statis
    return world.createBody(bodyDef)..createFixture(fixtureDef);
  }
}
