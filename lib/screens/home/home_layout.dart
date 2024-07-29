import 'package:aldeyaa/screens/home_screens/chat_screen.dart';
import 'package:aldeyaa/screens/home_screens/favourite_screen.dart';
import 'package:aldeyaa/screens/home_screens/home_screen.dart';
import 'package:aldeyaa/screens/home_screens/profile_screen.dart';
import 'package:aldeyaa/screens/home_screens/shopping_screen.dart';
import 'package:aldeyaa/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout>{

  int currentIndex = 0;
  List screens =  const [
    HomeScreen(),
    ShoppingScreen(),
    FavouriteScreen(),
    ChatScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:Stack(
        children: [
          screens[currentIndex],
          Positioned(
            right: 20,
            left: 20,
            bottom: 20,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8,vertical: 8),
              decoration:  BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 0,
                    blurRadius: 25,
                    offset: Offset(8, 20), // changes position of shadow
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: BottomNavigationBar(
                  selectedItemColor: Colors.white,
                  unselectedItemColor: secondaryColor,
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  backgroundColor: const Color(0xff1f2029),
                  currentIndex: currentIndex,
                  onTap: (index){
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  items:  const [
                    BottomNavigationBarItem(
                        icon: Icon(Iconsax.home),
                        label: '',
                        backgroundColor:  Color(0xff1f2029)
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.shopping_bag_outlined),
                        label: '',
                        backgroundColor:  Color(0xff1f2029)
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.favorite_border),
                        label: '',
                        backgroundColor:  Color(0xff1f2029)
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(Iconsax.message),
                        label: '',
                        backgroundColor:  Color(0xff1f2029)
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(Iconsax.user),
                        label: '',
                        backgroundColor:  Color(0xff1f2029)
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
