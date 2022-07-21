import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

ThemeData light = ThemeData(
    brightness: Brightness.light,
);

ThemeData dark = ThemeData(
  brightness: Brightness.dark,
);
class ThemeNotifier extends ChangeNotifier {
  final String key = "theme";
  SharedPreferences? _pref;
  bool? _darkTheme;
  bool? get darkTheme => _darkTheme;
  ThemeNotifier() {
    _darkTheme = true;
    _loadFromPrefs();
  }
  toggleTheme(){
    _darkTheme = !(_darkTheme!);
    _saveToPrefs(); // add this line
    notifyListeners();
  }

  // _initPref() is to iniliaze  the _pref variable
  _initPrefs() async {
    _pref ??= await SharedPreferences.getInstance();
  }
  _loadFromPrefs() async {
    await _initPrefs();
    _darkTheme = _pref?.getBool(key) ?? true;
    notifyListeners();
  }
  _saveToPrefs() async {
    await _initPrefs();
    _pref?.setBool(key, _darkTheme!);
  }

}

