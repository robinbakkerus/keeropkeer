import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

enum DiceType { NR, COL, SPECIAL }

List<Widget> buildDices() => [
      Dice(DiceType.NR),
      Dice(DiceType.NR),
      Dice(DiceType.NR),
      Dice(DiceType.COL),
      Dice(DiceType.COL),
      Dice(DiceType.COL),
      Dice(DiceType.SPECIAL),
    ];

const _diceNrs = [
  AssetImage('assets/dice_1.jpg'),
  AssetImage('assets/dice_2.jpg'),
  AssetImage('assets/dice_3.jpg'),
  AssetImage('assets/dice_4.jpg'),
  AssetImage('assets/dice_5.jpg'),
  AssetImage('assets/dice_question_mark.jpg')
];

const _diceColors = [
  AssetImage('assets/dice_black.jpg'),
  AssetImage('assets/dice_blue.jpg'),
  AssetImage('assets/dice_green.jpg'),
  AssetImage('assets/dice_orange.jpg'),
  AssetImage('assets/dice_red.jpg'),
  AssetImage('assets/dice_yellow.jpg')
];

const _diceSpecials = [
  AssetImage('assets/dice_bom.jpg'),
  AssetImage('assets/dice_2_stars.jpg'),
  AssetImage('assets/dice_bom.jpg'),
  AssetImage('assets/dice_2_stars.jpg'),
  AssetImage('assets/dice_bom.jpg'),
  AssetImage('assets/dice_2_stars.jpg'),
];

//----------------------------------------------
class Dice extends StatefulWidget {
  final DiceType type;

  const Dice(this.type, {Key? key}) : super(key: key);

  @override
  _DiceState createState() => _DiceState(type);
}

class _DiceState extends State<Dice> {
  final DiceType type;
  late AssetImage image;

  _DiceState(this.type) {
    this.image = _randomImage();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: this.image,
        ),
      ),
    );
  }

  AssetImage _randomImage() {
    Random _random = new Random();
    int nr = _random.nextInt(5);

    if (this.type == DiceType.NR) {
      return _diceNrs[nr];
    } else if (this.type == DiceType.COL) {
      return _diceColors[nr];
    } else {
      return _diceSpecials[nr];
    }
  }
}
