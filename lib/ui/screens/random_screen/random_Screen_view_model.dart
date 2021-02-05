import 'package:advice_app/app/locator.dart';
import 'package:advice_app/services/random_service.dart';
import 'package:advice_app/ui/screens/history/history.dart';

import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class RandomScreenViewModel extends BaseViewModel {
  List<String> _advice = List<String>();
  NavigationService _navigationService = getIt<NavigationService>();

  RandomService _randomService = RandomService();

  List<String> get advice => _advice;

  Future getA() async {
    setBusy(true);
    final response = await _randomService.getAdvice();

    _advice.add(response.slip.advice);
    notifyListeners();
    setBusy(false);
  }

  void navigateToHistory(List<String> list) {
    _navigationService.navigateToView(HistoryScreen(history: list));
  }
}
