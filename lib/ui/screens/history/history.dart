import 'package:advice_app/ui/screens/random_screen/random_Screen_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HistoryScreen extends StatelessWidget {
  final List<String> history;

  HistoryScreen({@required this.history});
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RandomScreenViewModel>.nonReactive(
      viewModelBuilder: () => RandomScreenViewModel(),
      builder: (context, model, child) {
        return Scaffold(
          body: SafeArea(
              child: Column(
            children: <Widget>[
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'History',
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 0,
                        child: Text(
                          history[index],
                          style: TextStyle(fontSize: 20.0),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Divider();
                    },
                    itemCount: history.length),
              )
            ],
          )),
        );
      },
    );
  }
}
