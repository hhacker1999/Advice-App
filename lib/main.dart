import 'package:advice_app/app/locator.dart';
import 'package:advice_app/ui/screens/random_screen/random_advice_screen.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:advice_app/app/auto_router.gr.dart' as auto_router;

void main() {
  configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: auto_router.Routes.randomAdviceScreen,
      onGenerateRoute: auto_router.Router().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
      
    );
  }
}
