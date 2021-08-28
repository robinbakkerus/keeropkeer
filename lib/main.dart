import 'package:flutter/material.dart';

import 'model/board_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Grid List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Column(children: [
                Container(width: 100,)
              ],),
              SizedBox(
                width: 500,
                child: GridView.count(
                  crossAxisCount: 15,
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 1,
                  children: buildKokFields(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}