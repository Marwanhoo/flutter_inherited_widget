import 'package:flutter/material.dart';
import 'package:flutter_inherited_widget/views/widgets/color_item.dart';

class ChangeColorPage extends StatelessWidget {
  const ChangeColorPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<MaterialColor> availableColors = [
      Colors.blue,
      Colors.green,
      Colors.red,
      Colors.amber,
    ];
    return Scaffold(
      appBar: AppBar(centerTitle: false, title: Text("Change Color")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: availableColors.map((e) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ColorItem(color: e),
            )).toList(),
          ),
        ),
      ),
    );
  }
}
