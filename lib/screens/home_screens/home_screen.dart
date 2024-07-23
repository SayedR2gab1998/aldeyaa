import 'package:aldeyaa/screens/home_screens/banner.dart';
import 'package:aldeyaa/screens/home_screens/home_widgets/location_widget.dart';
import 'package:aldeyaa/screens/home_screens/home_widgets/search.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            LocationWidget(),
            SizedBox(height: 20,),
            Search(),
            SizedBox(height: 10,),
            Banners(),
          ],
        ),
      ),
    );
  }
}
