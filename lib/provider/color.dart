import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class colorthem extends ChangeNotifier {
  late SharedPreferences _pref;

  _loadSharedData() async {
    _pref = await SharedPreferences.getInstance();
    _loadcolor();
  }

  _loadcolor() {
    mainColor = Color(_pref.getInt('main') ?? 0xFF5C1896);
    secondColor = Color(_pref.getInt('second') ?? 0xFFA677FF);
    notifyListeners();
  }

  colorthem() {
    _loadSharedData();
  }

  Color mainColor = const Color(0xFF5C1896);
  Color secondColor = const Color(0xFFA677FF);
  getColor(colorCode, colorCode2) {
    _pref.setInt('main', colorCode);
    _pref.setInt('second', colorCode2);
    mainColor = Color(_pref.getInt('main') ?? 0xFF5C1896);
    secondColor = Color(_pref.getInt('second') ?? 0xFFA677FF);
    notifyListeners();
  }
}
