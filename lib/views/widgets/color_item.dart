import 'package:flutter/material.dart';
import 'package:flutter_inherited_widget/controllers/state_widget.dart';

class ColorItem extends StatelessWidget {
  final MaterialColor color;

  const ColorItem({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    final stateWidget = StateInheritedWidget.of(context);
    return InkWell(
      onTap: () {
        stateWidget.changeColor(color);
        Navigator.of(context).pop();
      },
      child: SizedBox(
        height: 70,
        width: double.infinity,
        child: DecoratedBox(decoration: BoxDecoration(color: color)),
      ),
    );
  }
}
