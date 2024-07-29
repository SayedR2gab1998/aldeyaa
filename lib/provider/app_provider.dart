
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppProvider extends ChangeNotifier{


  ThemeMode themeMode = ThemeMode.system;
  int appColor = 0xff3f51b5;

  changeMode(bool dark)async
  {
    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    themeMode = dark? ThemeMode.dark:ThemeMode.light;
    sharedPreferences.setBool('dark', themeMode==ThemeMode.dark);
    notifyListeners();
  }

  changeColor(int color)async
  {
    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    appColor = color;
    sharedPreferences.setInt('color', appColor);
    notifyListeners();
  }


  getValuePref()async{
    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    bool isDark  = sharedPreferences.getBool('dark')??false;
    themeMode = isDark ? ThemeMode.dark: ThemeMode.light;
    appColor = sharedPreferences.getInt('color')??0xff3f51b5;

    notifyListeners();
  }




}