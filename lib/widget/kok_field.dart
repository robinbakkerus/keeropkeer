import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:keeropkeer/data/board_data.dart';

enum KokFieldType { NONE, STAR, TREASURE }

List<Widget> buildKokFields() =>
    List.generate(15 * 7, (index) => _buildKokField(index));

Widget _buildKokField(int index) {
  return kokFields[index];
}

//--------------------------------------------------------------

class KokField extends StatefulWidget {
  final int x;
  final int y;
  final Color col;
  final KokFieldType type;

  KokField(this.x, this.y, this.col, [this.type = KokFieldType.NONE]);

  @override
  _KokFieldState createState() =>
      _KokFieldState(this.x, this.y, this.col, type: this.type);
}

class _KokFieldState extends State<KokField> {
  final int x;
  final int y;
  final Color col;
  final KokFieldType? type;
  bool selected = false;

  _KokFieldState(this.x, this.y, this.col, {this.type = KokFieldType.NONE});

  @override
  Widget build(BuildContext context) {
    Image? _image = _getImage();

    if (_image != null) {
      return Stack(
        alignment: Alignment.topRight,
        children: [
          TextButton(
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              backgroundColor: col,
              textStyle: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            onPressed: () {},
            child: Text(''),
          ),
          Container(
              child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Center(
              child: _image,
            ),
          )),
        ],
      );
    } else {
      if (this.selected) {
        return TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(col),
              overlayColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.hovered))
                    return Colors.blue.withOpacity(0.04);
                  if (states.contains(MaterialState.focused) ||
                      states.contains(MaterialState.pressed))
                    return Colors.blue.withOpacity(0.12);
                  return col;
                },
              ),
            ),
            onPressed: () {},
            child: Text('X'));
      } else {
        return Container(
          color: this.col,
        );
      }
    }
  }

  Widget _buildFieldWidget() {
    Image? _image = _getImage();

    return Stack(
      alignment: Alignment.topRight,
      children: [
       _buildColorWidget(),
        _image ? Container(
       if     child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Center(
            child: _image,
          ),
        )),
      ],
    );
  }

  Widget _buildColorWidget() {
    if (this.selected) {
      return TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          backgroundColor: col,
          textStyle: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
        onPressed: () {},
        child: Text(''),
      );
    } else {
      return Container(
        color: this.col,
        );
    }
  }

  Image? _getImage() {
    Image? _image;
    if (type == KokFieldType.STAR)
      _image = Image(image: AssetImage('assets/star.png'));
    else if (type == KokFieldType.TREASURE)
      _image = Image(image: AssetImage('assets/treasure.png'));
    return _image;
  }
}
