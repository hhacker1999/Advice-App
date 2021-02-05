import 'package:advice_app/ui/screens/random_screen/random_advice_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RandomAdviceScreen(),
    );
  }
}
