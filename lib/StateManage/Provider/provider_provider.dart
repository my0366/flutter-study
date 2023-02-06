import 'package:flutter/material.dart';
import 'package:flutter_study/StateManage/Provider/provider_state.dart';
import 'provider_state.dart';

class Provider_Provider with ChangeNotifier {

  final state = ProviderState();

  void increase() {
    state.count++;
    notifyListeners();
  }

  void decrease() {
    state.count--;
    notifyListeners();
  }
}


