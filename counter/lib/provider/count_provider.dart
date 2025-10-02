import 'package:flutter/foundation.dart';

class countProvider with ChangeNotifier {
  int _count = 22;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}
