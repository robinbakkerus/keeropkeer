import 'package:flutter/material.dart';
import 'package:keeropkeer/widget/kok_field.dart';

const RED = Colors.redAccent;
const BLUE = Colors.lightBlue;
const GREEN = Colors.greenAccent;
const ORANGE = Colors.orangeAccent;
const YELLOW = Colors.yellowAccent;

var kokFields = [
  KokField(0, 1, RED),
  KokField(1, 0, RED),
  KokField(2, 0, ORANGE, KokFieldType.STAR),
  KokField(3, 0, YELLOW),
  KokField(4, 0, YELLOW),
  KokField(5, 0, RED, KokFieldType.STAR),
  KokField(6, 0, RED),
  KokField(7, 0, GREEN),
  KokField(8, 0, GREEN),
  KokField(9, 0, YELLOW),
  KokField(10, 0, YELLOW, KokFieldType.STAR),
  KokField(11, 0, RED, KokFieldType.STAR),
  KokField(12, 0, ORANGE),
  KokField(13, 0, ORANGE),
  KokField(14, 0, BLUE),
  KokField(0, 1, BLUE),
  KokField(1, 1, YELLOW),
  KokField(2, 1, YELLOW),
  KokField(3, 1, YELLOW),
  KokField(4, 1, ORANGE),
  KokField(5, 1, ORANGE),
  KokField(6, 1, RED),
  KokField(7, 1, RED),
  KokField(8, 1, BLUE),
  KokField(9, 1, BLUE, KokFieldType.STAR),
  KokField(10, 1, YELLOW),
  KokField(11, 1, YELLOW),
  KokField(12, 1, RED),
  KokField(13, 1, ORANGE),
  KokField(14, 1, ORANGE),
  KokField(0, 2, BLUE),
  KokField(1, 2, YELLOW, KokFieldType.TREASURE),
  KokField(2, 2, BLUE),
  KokField(3, 2, BLUE),
  KokField(4, 2, BLUE),
  KokField(5, 2, ORANGE),
  KokField(6, 2, ORANGE),
  KokField(7, 2, ORANGE, KokFieldType.STAR),
  KokField(8, 2, BLUE),
  KokField(9, 2, GREEN),
  KokField(10, 2, GREEN),
  KokField(11, 2, YELLOW),
  KokField(12, 2, RED),
  KokField(13, 2, RED),
  KokField(14, 2, ORANGE, KokFieldType.TREASURE),
  KokField(0, 3, ORANGE),
  KokField(1, 3, BLUE, KokFieldType.STAR),
  KokField(2, 3, BLUE),
  KokField(3, 3, GREEN, KokFieldType.STAR),
  KokField(4, 3, BLUE, KokFieldType.TREASURE),
  KokField(5, 3, YELLOW),
  KokField(6, 3, YELLOW),
  KokField(7, 3, BLUE),
  KokField(8, 3, ORANGE),
  KokField(9, 3, ORANGE),
  KokField(10, 3, GREEN),
  KokField(11, 3, GREEN),
  KokField(12, 3, GREEN, KokFieldType.STAR),
  KokField(13, 3, RED),
  KokField(14, 3, RED),
  KokField(0, 4, ORANGE),
  KokField(1, 4, ORANGE),
  KokField(2, 4, RED),
  KokField(3, 4, RED),
  KokField(4, 4, GREEN),
  KokField(5, 4, BLUE),
  KokField(6, 4, BLUE),
  KokField(7, 4, BLUE),
  KokField(8, 4, YELLOW),
  KokField(9, 4, ORANGE),
  KokField(10, 4, ORANGE),
  KokField(11, 4, RED, KokFieldType.TREASURE),
  KokField(12, 4, YELLOW),
  KokField(13, 4, YELLOW),
  KokField(14, 4, YELLOW, KokFieldType.STAR),
  KokField(0, 5, GREEN),
  KokField(1, 5, GREEN),
  KokField(2, 5, RED),
  KokField(3, 5, ORANGE),
  KokField(4, 5, GREEN),
  KokField(5, 5, GREEN),
  KokField(6, 5, GREEN, KokFieldType.STAR),
  KokField(7, 5, YELLOW),
  KokField(8, 5, YELLOW),
  KokField(9, 5, RED),
  KokField(10, 5, RED),
  KokField(11, 5, RED),
  KokField(12, 5, BLUE),
  KokField(13, 5, BLUE, KokFieldType.STAR),
  KokField(14, 5, GREEN),
  KokField(0, 6, YELLOW),
  KokField(1, 6, GREEN),
  KokField(2, 6, GREEN),
  KokField(3, 6, ORANGE),
  KokField(4, 6, RED, KokFieldType.STAR),
  KokField(5, 6, GREEN, KokFieldType.TREASURE),
  KokField(6, 6, GREEN),
  KokField(7, 6, YELLOW),
  KokField(8, 6, RED, KokFieldType.STAR),
  KokField(9, 6, RED),
  KokField(10, 6, BLUE),
  KokField(11, 6, BLUE),
  KokField(12, 6, BLUE),
  KokField(13, 6, GREEN),
  KokField(14, 6, GREEN),
];
