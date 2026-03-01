import 'dart:math';
import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flame_forge2d/flame_forge2d.dart';
import 'package:flutter/material.dart';
import '../app/modules/home/controllers/game_controller.dart';
import 'components/marble.dart';
import 'components/wall.dart';

class MarbleGame extends Forge2DGame with DragCallbacks {
  final GameController controller;

  MarbleGame(this.controller) : super(gravity: Vector2.zero(), zoom: 28.0);

  @override
  Color backgroundColor() => Colors.transparent;

  List<Marble> marbles = [];
  RectangleComponent? _debugSpawnArea;

  final List<Rect> buckets = [
    const Rect.fromLTWH(-12, -13, 8, 8),
    const Rect.fromLTWH(-12, -2, 8, 8),
    const Rect.fromLTWH(-12, 7, 8, 8),
  ];

  @override
  Future<void> onLoad() async {
    super.onLoad();

    await Future.delayed(const Duration(milliseconds: 300));
    final worldRect = camera.visibleWorldRect;
    createBoundaries(worldRect);

    resetGame(controller.dividend.value);
  }

  void resetGame(int count) {
    for (var m in marbles) {
      world.destroyBody(m.body);
    }
    marbles.clear();

    if (_debugSpawnArea != null) {
      remove(_debugSpawnArea!);
      _debugSpawnArea = null;
    }

    final rnd = Random();

    final visibleRect = camera.visibleWorldRect;
    print(
        "DEBUG LAYAR: Lebar=${visibleRect.width}, Tinggi=${visibleRect.height}");

    double minX = -5.0;
    double maxX = 10.0;

    double minY = -15.0;
    double maxY = 15.0;

    if (visibleRect.width > 0) {
      double screenWidth = visibleRect.width;

      double areaWidth = screenWidth * 0.5;

      minX = -4.0;
      maxX = minX + areaWidth;

      minY = visibleRect.top + 5;
      maxY = visibleRect.bottom - 5;
    }

    for (int i = 0; i < count; i++) {
      double x = minX + rnd.nextDouble() * (maxX - minX);
      double y = minY + rnd.nextDouble() * (maxY - minY);

      print("Spawn Kelereng $i di: $x, $y");

      final marble = Marble(Vector2(x, y), this);
      add(marble);
      marbles.add(marble);
    }
  }

  Map<int, int> countMarblesInBuckets() {
    Map<int, int> counts = {};
    for (var m in marbles) {
      final pos = Offset(m.body.position.x, m.body.position.y);
      for (int i = 0; i < buckets.length; i++) {
        if (buckets[i].contains(pos)) {
          counts[i] = (counts[i] ?? 0) + 1;
        }
      }
    }
    return counts;
  }

  void createBoundaries(Rect rect) {
    final tl = Vector2(rect.left, rect.top);
    final tr = Vector2(rect.right, rect.top);
    final br = Vector2(rect.right, rect.bottom);
    final bl = Vector2(rect.left, rect.bottom);
    add(Wall(tl, tr));
    add(Wall(tr, br));
    add(Wall(br, bl));
    add(Wall(bl, tl));
  }

  final Map<int, MouseJoint> _mouseJoints = {};

  @override
  void onDragStart(DragStartEvent event) {
    super.onDragStart(event);
    final worldPos = screenToWorld(event.localPosition);
    for (final marble in marbles) {
      if (marble.body.fixtures.first.testPoint(worldPos)) {
        final mouseJointDef = MouseJointDef()
          ..bodyA = world.createBody(BodyDef())
          ..bodyB = marble.body
          ..target.setFrom(worldPos)
          ..maxForce = 3000 * marble.body.mass
          ..dampingRatio = 0.1
          ..frequencyHz = 6;
        final joint = MouseJoint(mouseJointDef);
        world.createJoint(joint);
        _mouseJoints[event.pointerId] = joint;
        break;
      }
    }
  }

  @override
  void onDragUpdate(DragUpdateEvent event) {
    if (_mouseJoints.containsKey(event.pointerId)) {
      final worldPos = screenToWorld(event.localPosition);
      _mouseJoints[event.pointerId]!.setTarget(worldPos);
    }
  }

  @override
  void onDragEnd(DragEndEvent event) {
    super.onDragEnd(event);
    if (_mouseJoints.containsKey(event.pointerId)) {
      world.destroyJoint(_mouseJoints[event.pointerId]!);
      _mouseJoints.remove(event.pointerId);
    }
  }
}
