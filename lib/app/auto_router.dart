import 'package:advice_app/ui/screens/history/history.dart';
import 'package:advice_app/ui/screens/random_screen/random_advice_screen.dart';
import 'package:auto_route/auto_route_annotations.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    // initial route is named "/"
    MaterialRoute(page: RandomAdviceScreen, initial: true),
    MaterialRoute(
      page: HistoryScreen,
    ),
   
  ],
)
class $Router {}
