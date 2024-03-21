import 'package:flutter/material.dart';
import 'package:flutter_task_1/HomePage.dart';

void main() {
  runApp(MainRoute());
}

class MainRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StateRoute(),
    );
  }
}

class StateRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ApiShow();
  }
}
