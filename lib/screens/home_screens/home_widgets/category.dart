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
            categoryItem('assets/images/t-shirt.png','T-Shit'),
            categoryItem('assets/images/pants.png','Pants'),
            categoryItem('assets/images/dress.png','Dress'),
            categoryItem('assets/images/jacket.png','Jackets'),
          ],
        ),
      ],
    );
  }
  Widget categoryItem(String image,String title){
    return Column(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundColor: const Color(0xffece2d9),
          child: Image.asset(image,width: 40,color: mainColor,),
        ),
        const SizedBox(height: 10,),
        Text(title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600
          ),
        )
      ],
    );
  }
}
