import 'package:aldeyaa/utils/colors.dart';
import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Category',
              style: TextStyle(
                fontSize: 22,
                color: Colors.black,
                fontWeight: FontWeight.w600
              ),
            ),
            TextButton(
              onPressed: (){},
              child: Text('See All',
                style: TextStyle(
                  fontSize: 16,
                  color: mainColor,
                ),
              )
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            categoryItem('assets/images/t-shirt.png'),
            categoryItem('assets/images/pants.png'),
            categoryItem('assets/images/dress.png'),
            categoryItem('assets/images/jacket.png'),
          ],
        ),
      ],
    );
  }
  Widget categoryItem(String image){
    return CircleAvatar(
      radius: 40,
      backgroundColor: const Color(0xffece2d9),
      child: Image.asset(image,width: 40,color: mainColor,),
    );
  }
}
