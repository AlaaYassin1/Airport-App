import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:provider/provider.dart';

class L10nProvider extends ChangeNotifier {
  late SharedPreferences _pref;
  Locale currentLocal = Locale('en');

  _loadSharedData() async {
    _pref = await SharedPreferences.getInstance();
    _loadLocData();
  }

  _loadLocData() {
    currentLocal = Locale(_pref.getString('languageCode') ?? 'en');
    notifyListeners();
  }

  L10nProvider() {
    _loadSharedData();
  }

  switchLoc(String landCode) {
    // currentLocal = Locale(landCode);
    _pref.setString('languageCode', landCode);
    _loadLocData();
  }
}
