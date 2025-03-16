import 'package:flutter/material.dart';
import 'package:flutter_inherited_widget/models/app_state.dart';

class StateWidget extends StatefulWidget {
  final Widget child;

  const StateWidget({super.key, required this.child});

  @override
  State<StateWidget> createState() => _StateWidgetState();
}

class _StateWidgetState extends State<StateWidget> {
  var counter = 0;
  var state = AppState();

  void incrementCounter() {
    final counter = state.counter + 1;
    final newState = state.copyWith(counter: counter);
    setState(() {
      state = newState;
    });
  }

  void decrementCounter() {
    setState(() {
      counter--;
    });
  }

  void changeColor(MaterialColor newColor) {
    final newState = state.copyWith(primarySwatchColor: newColor);
    setState(() {
      state = newState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return StateInheritedWidget(
      appState: state,
      state: this,
      child: widget.child,
    );
  }
}

class StateInheritedWidget extends InheritedWidget {
  final AppState appState;
  final _StateWidgetState state;

  const StateInheritedWidget({
    super.key,
    required super.child,
    required this.state,
    required this.appState,
  });

  // static of(BuildContext context) {
  //   return context.dependOnInheritedWidgetOfExactType<StateInheritedWidget>();
  // }

  static _StateWidgetState of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<StateInheritedWidget>()!
        .state;
  }

  @override
  bool updateShouldNotify(covariant StateInheritedWidget oldWidget) {
    return oldWidget.appState != appState;
  }
}
