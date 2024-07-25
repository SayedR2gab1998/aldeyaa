import 'package:aldeyaa/utils/colors.dart';
import 'package:flutter/material.dart';

class CategoryListview extends StatefulWidget {
   const CategoryListview({super.key});

  @override
  State<CategoryListview> createState() => _CategoryListviewState();
}

class _CategoryListviewState extends State<CategoryListview> {
  List<String> categoriesName = [
    'All',
    'Kid\'s Pants',
    'Kid\'s Set',
    'Girl\'s dress',
    'Girl\'s set',
    'Girl\'s Pants',
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 40,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: categoriesName.length,
        itemBuilder: (context,index){
          return GestureDetector(
            onTap: (){
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: mainColor),
                color: selectedIndex == index ?mainColor:Colors.white,
              ),
              child: Center(child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Text(categoriesName[index],
                  style: TextStyle(
                      fontSize: 16,
                      color: selectedIndex == index ?Colors.white:mainColor
                  ),
                ),
              )),
            ),
          );
        },
        separatorBuilder: (context,  index) => const SizedBox(width: 10,),
      ),
    );
  }
}
