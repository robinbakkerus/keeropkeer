import 'package:flutter/material.dart';

import 'package:keeropkeer/widget/dice.dart';
import 'package:keeropkeer/widget/kok_field.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Column(
      children: <Widget>[
        _verSpace(1),
        _kokBoard(),
        _verSpace(10),
        _dices(),
        // _verSpace(20)
      ],
    ));
  }

  Container _horSpace(double? w) => Container(
        height: w,
      );

  Widget _dices() {
    return Container(
      width: 210,
      height: 60,
      child: GridView.count(
        crossAxisCount: 7,
        crossAxisSpacing: 5,
        mainAxisSpacing: 1,
        children: buildDices(),
      ),
    );
  }

  Widget _kokBoard() {
    return Container(
      height: 260,
      width: 500,
      child: GridView.count(
        crossAxisCount: 15,
        crossAxisSpacing: 1,
        mainAxisSpacing: 1,
        children: buildKokFields(),
      ),
    );
  }

  Widget _verSpace(double? w) {
    return Container(
      color: Colors.green,
      width: w,
      height: w,
    );
  }
}
