import 'package:advice_app/ui/screens/history/history.dart';
import 'package:advice_app/ui/screens/random_screen/random_Screen_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class RandomAdviceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RandomScreenViewModel>.reactive(
      onModelReady: (model) => model.getA(),
      viewModelBuilder: () => RandomScreenViewModel(),
      builder: (context, model, child) {
        return Scaffold(
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'Random Advice',
                      style: TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                model.isBusy
                    ? CircularProgressIndicator()
                    : Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        elevation: 2.0,
                        child: Text(
                          model.advice[model.advice.length - 1],
                          style: TextStyle(fontSize: 50.0),
                        )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FlatButton(
                        color: Colors.redAccent,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            'History',
                            style: TextStyle(
                                fontSize: 25.0, fontWeight: FontWeight.w600),
                          ),
                        ),
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HistoryScreen(
                                    history: model.advice,
                                  )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FlatButton(
                          color: Colors.blueGrey,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              'Generate Advice',
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.w600),
                            ),
                          ),
                          onPressed: () => model.getA()),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
