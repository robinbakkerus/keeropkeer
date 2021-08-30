import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:keeropkeer/data/board_data.dart';

enum KokFieldType { NONE, STAR, TREASURE }

List<Widget> buildKokFields() =>
    List.generate(15 * 7, (index) => KokField.buildWidget(index));

//--------------------------------------------------------------

class KokField {
  final int x;
  final int y;
  final Color col;
  final KokFieldType type;

  KokField(this.x, this.y, this.col, {this.type = KokFieldType.NONE});

  static Widget buildWidget(int index) {
    var _kokFld = kokFields[index];

    Image? _image;
    if (_kokFld.type == KokFieldType.STAR)
      _image = Image(image: AssetImage('assets/star.jpg'));
    else if (_kokFld.type == KokFieldType.TREASURE)
      _image = Image(image: AssetImage('assets/treasure.jpg'));

    if (_image != null) {
      return Stack(
        alignment: Alignment.topRight,
        children: [
          TextButton(
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              backgroundColor: _kokFld.col,
              textStyle: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            onPressed: () {},
            child: Text('X'),
          ),
          Container(
              // width: 40,
              // height: 40,
              // color: _kokFld.col,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: _image,
                ),
              )),
        ],
      );
    } else {
      return TextButton(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(_kokFld.col),
            overlayColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.hovered))
                  return Colors.blue.withOpacity(0.04);
                if (states.contains(MaterialState.focused) ||
                    states.contains(MaterialState.pressed))
                  return Colors.blue.withOpacity(0.12);
                return _kokFld.col;
              },
            ),
          ),
          onPressed: () {},
          child: Text('X'));
    }
  }
}

//--------------------------------------

