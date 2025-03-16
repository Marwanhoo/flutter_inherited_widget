import 'package:flutter/material.dart';
import 'package:flutter_inherited_widget/controllers/state_widget.dart';
import 'package:flutter_inherited_widget/views/pages/change_color_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // final stateWidget =
    //     context.dependOnInheritedWidgetOfExactType<StateInheritedWidget>();

    final stateWidget = StateInheritedWidget.of(context);

    return Scaffold(
      appBar: AppBar(centerTitle: false, title: Text("Counter")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            spacing: 40,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                stateWidget.state.counter.toString(),
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return ChangeColorPage();
                        },
                      ),
                    );
                  },
                  label: Text("Change Primary Swatch"),
                  icon: Icon(Icons.color_lens),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 20,
        children: [
          FloatingActionButton(
            onPressed: () {
              stateWidget.decrementCounter();
            },
            child: Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: () {
              stateWidget.incrementCounter();
            },
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
