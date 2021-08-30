import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

List<Widget> buildDices() => List.generate(6, (index) => new Dice());

const diceOneImage = AssetImage('assets/dice_1.jpg');

//----------------------------------------------
class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
  decoration: BoxDecoration(
    image: DecorationImage(
      fit: BoxFit.fill,
      image: diceOneImage,
    ),
  ),);
  }
}


