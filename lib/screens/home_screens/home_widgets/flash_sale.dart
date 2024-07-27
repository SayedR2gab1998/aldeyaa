
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
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: CategoryListview()),
      ],
    );
  }
}
