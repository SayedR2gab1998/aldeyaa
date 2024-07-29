import 'package:aldeyaa/screens/home_screens/home_widgets/banner.dart';
import 'package:aldeyaa/screens/home_screens/home_widgets/category.dart';
import 'package:aldeyaa/screens/home_screens/home_widgets/category_listview.dart';
import 'package:aldeyaa/screens/home_screens/home_widgets/location_widget.dart';
import 'package:aldeyaa/screens/home_screens/home_widgets/search.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          children: const <Widget>[
            LocationWidget(),
            SizedBox(height: 20,),
            Search(),
            SizedBox(height: 10,),
            Banners(),
            SizedBox(height: 10,),
            Category(),
            SizedBox(height: 20,),
            Expanded(child: CategoryListview()),
            SizedBox(height: 80,), //The last widget
          ],
        ),
      ),
    );
  }
}
