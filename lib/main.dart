import 'package:flutter/material.dart';
import 'package:flutter_inherited_widget/controllers/state_widget.dart';
import 'package:flutter_inherited_widget/views/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StateWidget(
      child: Builder(
        builder: (context) {
          final stateWidget = StateInheritedWidget.of(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Inherited Widget Example',
            theme: ThemeData(
              useMaterial3: false,
              primarySwatch: stateWidget.state.primarySwatchColor,
            ),
            home: HomePage(),
          );
        },
      ),
    );
  }
}
