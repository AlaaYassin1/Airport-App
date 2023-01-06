import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../element/pages.dart';
import '../main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Pageprov extends ChangeNotifier {
  int page = 0;
  List<Widget> pages = [
    const Contentpage(),
    const Passenger(),
    const SettingPage(),
    const Boardingpage(),
    const Flightinfo()
  ];
  Widget p() {
    return pages[page];
  }

  void pagehome() {
    page = 0;
    notifyListeners();
  }

  void pagepassengers() {
    page = 1;
    notifyListeners();
  }

  void settingpage() {
    page = 2;
    notifyListeners();
  }

  void boardinpage() {
    page = 3;
    notifyListeners();
  }
  void flightinfo() {
    page = 4;
    notifyListeners();
  }
}
