import 'package:flutter/material.dart';

class LocaleProvider extends ChangeNotifier {
  Locale _locale = const Locale('am');

  Locale get locale => _locale;

  void setLocale(String code) {
    _locale = Locale(code);
    notifyListeners();
  }
}
