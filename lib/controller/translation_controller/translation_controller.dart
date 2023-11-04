import 'package:flutter/material.dart';

class LanguageChangeController extends ChangeNotifier {
  Locale? _locale;

  Locale? get applocale => _locale;
  int _current = 0;

  int get current => _current;

  void setCurrent(int index) {
    _current = index;
    notifyListeners();
  }
  void changelanguage(Locale type) {
    _locale = type;
    notifyListeners();
  }
}
