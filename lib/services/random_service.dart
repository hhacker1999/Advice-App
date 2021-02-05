import 'package:advice_app/constants/constants.dart';
import 'package:advice_app/model/model.dart';
import 'package:http/http.dart' as http;

class RandomService {
  String _url = Constants.url;
  Future<Advice> getAdvice() async {
    final response = await http.get(_url);

    if (response.statusCode == 200) {
      final advice = adviceFromJson(response.body);
      return advice;
    } else {
      throw Exception('check internet connection');
    }
  }
}
