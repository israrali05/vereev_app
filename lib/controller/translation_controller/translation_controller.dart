import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageChangeController extends ChangeNotifier {
  Locale? _locale;

  Locale? get applocale => _locale;
  int _current = 0;

  int get current => _current;

  void setCurrent(int index) {
    _current = index;
    notifyListeners();
  }

  LanguageChangeController() {
    _loadLocale();
  }

  Future<void> _loadLocale() async {
    final preferences = await SharedPreferences.getInstance();
    final languageCode = preferences.getString('languageCode');
    if (languageCode != null) {
      _locale = Locale(languageCode);
    } else {
      _locale = const Locale('en'); // Set a default locale if none is stored
    }
    notifyListeners();
  }

  Future<void> changelanguage(Locale locale) async {
    _locale = locale;
    notifyListeners();
    final preferences = await SharedPreferences.getInstance();
    await preferences.setString('languageCode', locale.languageCode);
  }
}
