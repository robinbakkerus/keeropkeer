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
    return _buildFieldWidget();
  }

  Widget _buildFieldWidget() {
    return Stack(
      alignment: Alignment.topRight,
      children: _buildWidgetList(),
    );
  }

  List<Widget> _buildWidgetList() {
    Image? _image = _getImage();
    List<Widget> _widgetList = [];

    if (_image == null) {
      _widgetList = [_colorWidget()];
    } else {
      _widgetList = [_colorWidget(), _specialWidget()];
    }

    if (this.selected) {
      _widgetList.add(_selectedWidget());
    }

    return _widgetList;
  }

  Widget _colorWidget() {
    return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        backgroundColor: col,
        textStyle: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      ),
      onPressed: _selectField,
      child: Text(''),
    );
  }

  // Widget _notClickableWidget() {
  //   return Container(
  //     color: this.col,
  //   );
  // }

  Widget _specialWidget() {
    return MaterialButton(
      padding: EdgeInsets.all(8.0),
      // textColor: Colors.white,
      // splashColor: Colors.greenAccent,
      // elevation: 8.0,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/star.png'),
            // fit: BoxFit.cover),
          ),
        ),
      ),
      onPressed: _selectField,
    );
  }

  Widget _selectedWidget() {
    return Container(
        child: Padding(
      padding: const EdgeInsets.all(5.0),
      child: Center(child: Image(image: AssetImage('assets/selected.png'))),
    ));
  }

  Image? _getImage() {
    Image? _image;
    if (type == KokFieldType.STAR)
      _image = Image(image: AssetImage('assets/star.png'));
    else if (type == KokFieldType.TREASURE)
      _image = Image(image: AssetImage('assets/treasure.png'));
    return _image;
  }

  void _selectField() {
    setState(() {
      this.selected = !this.selected;
    });
  }
}
