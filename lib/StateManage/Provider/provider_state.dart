import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider_provider.dart';

class ProviderState {
  int _count = 0;
  get count => _count;
  set count(count) {
    _count = count;
  }

}

