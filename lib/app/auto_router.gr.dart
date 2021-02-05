// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../ui/screens/history/history.dart';
import '../ui/screens/random_screen/random_advice_screen.dart';

class Routes {
  static const String randomAdviceScreen = '/';
  static const String historyScreen = '/history-screen';
  static const all = <String>{
    randomAdviceScreen,
    historyScreen,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.randomAdviceScreen, page: RandomAdviceScreen),
    RouteDef(Routes.historyScreen, page: HistoryScreen),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    RandomAdviceScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => RandomAdviceScreen(),
        settings: data,
      );
    },
    HistoryScreen: (data) {
      final args = data.getArgs<HistoryScreenArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => HistoryScreen(history: args.history),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// HistoryScreen arguments holder class
class HistoryScreenArguments {
  final List<String> history;
  HistoryScreenArguments({@required this.history});
}
