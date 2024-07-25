
import 'package:aldeyaa/screens/home_screens/home_widgets/category_listview.dart';
import 'package:aldeyaa/utils/colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FlashSale extends StatefulWidget {
  const FlashSale({super.key});

  @override
  State<FlashSale> createState() => _FlashSaleState();
}

class _FlashSaleState extends State<FlashSale> {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Flash Sale',
          style: TextStyle(
            fontSize: 22,
            color: Colors.black,
            fontWeight: FontWeight.w600
          ),
        ),
        const SizedBox(height: 10,),
        CategoryListview(),
      ],
    );
  }
}
