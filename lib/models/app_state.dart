import 'package:flutter/material.dart';

class AppState {
  final int counter;
  final MaterialColor primarySwatchColor;

  AppState({this.counter = 0, this.primarySwatchColor = Colors.blue});

  AppState copyWith({int? counter, MaterialColor? primarySwatchColor}) {
    return AppState(
      counter: counter ?? this.counter,
      primarySwatchColor: primarySwatchColor ?? this.primarySwatchColor,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppState &&
          runtimeType == other.runtimeType &&
          counter == other.counter &&
          primarySwatchColor == other.primarySwatchColor;

  @override
  int get hashCode => counter.hashCode ^ primarySwatchColor.hashCode;
}
