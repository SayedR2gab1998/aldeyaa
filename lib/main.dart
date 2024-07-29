import 'package:aldeyaa/provider/app_provider.dart';
import 'package:aldeyaa/screens/home/home_layout.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: ((contxet)=>AppProvider()),
      child: Consumer<AppProvider>(
        builder: (BuildContext context,AppProvider value, Widget? child)=> MaterialApp(
          title: 'AlDeyaa',
          themeMode: value.themeMode,
          darkTheme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
                seedColor: Color(value.appColor), brightness: Brightness.dark),
          ),
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
                seedColor: Color(value.appColor), brightness: Brightness.light),
            useMaterial3: true,
          ),
          debugShowCheckedModeBanner: false,
          home: const HomeLayout(),
        ),
      ),
    );
  }
}