

import 'package:aldeyaa/utils/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Banners extends StatefulWidget {
  const Banners({super.key});

  @override
  State<Banners> createState() => _BannersState();
}

class _BannersState extends State<Banners> {
  CarouselController carouselController = CarouselController();
  var boardController = PageController();

  int currentIndex = 0;

  List<Widget> carouselItems = [
    Image.network('https://i.pinimg.com/564x/45/fa/24/45fa24da3e1fe0a5bc8e63a4c1b253eb.jpg'),
    Image.network('https://i.pinimg.com/564x/04/c9/01/04c901a4c69cce6e6e2834da3a991501.jpg'),
    Image.network('https://i.pinimg.com/564x/c5/a8/4c/c5a84cb81331d3f53fb1001f9f3be7c0.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          child: CarouselSlider(
            carouselController: carouselController,
            items: carouselItems,
            options: CarouselOptions(
              height: 220,
              initialPage: currentIndex,
              scrollDirection: Axis.horizontal,
              autoPlay: true,
              reverse: false,
              viewportFraction: 1.0,
              aspectRatio: 16/9,
              enableInfiniteScroll: true,
              autoPlayCurve: Curves.fastOutSlowIn,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(seconds: 1),
              onPageChanged: (index,reason){
                setState(() {
                  currentIndex = index;
                });
              }
            ),
          ),
        ),
        const SizedBox(height: 20,),
        AnimatedSmoothIndicator(
          activeIndex: currentIndex,
          count: carouselItems.length,
          effect: JumpingDotEffect(
            activeDotColor: mainColor,
            dotColor: secondaryColor,

          ),
        ),
      ],
    );
  }
}
