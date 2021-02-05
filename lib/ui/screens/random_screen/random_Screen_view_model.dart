import 'package:advice_app/services/random_service.dart';

import 'package:stacked/stacked.dart';


class RandomScreenViewModel extends BaseViewModel {
  List<String> _advice = List<String>();

  RandomService _randomService = RandomService();
 
  List<String> get advice => _advice;

  Future getA() async {
    setBusy(true);
    final response = await _randomService.getAdvice();

    _advice.add(response.slip.advice);
    notifyListeners();
    setBusy(false);
  }

  
}
