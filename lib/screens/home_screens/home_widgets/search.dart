
import 'package:aldeyaa/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  var searchCon = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(color: secondaryColor),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    const Icon(Iconsax.search_normal),
                    const SizedBox(width: 10,),
                    Text('Search',
                      style: TextStyle(
                        color: secondaryColor,
                        fontSize: 22
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(width: 10,),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: mainColor,
              border: Border.all(color: mainColor),
              borderRadius: BorderRadius.circular(12),
            ),
           child: Center(child: Image.asset('assets/images/filter.png',color: Colors.white,width: 30,)),
          ),
        ],
      ),
    );
  }
}
