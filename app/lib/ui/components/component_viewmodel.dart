import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

class ComponentViewModel extends BaseViewModel {
  final inputController = TextEditingController();
  final phoneInputController = TextEditingController();

  String get counterLabel => 'Counter is: $_counter';

  int _counter = 0;

  void incrementCounter() {
    _counter++;
    rebuildUi();
  }

  void showBottomSheet() {}
}
