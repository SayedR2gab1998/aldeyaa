

import 'package:aldeyaa/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LocationWidget extends StatefulWidget {
  const LocationWidget({super.key});

  @override
  State<LocationWidget> createState() => _LocationWidgetState();
}

class _LocationWidgetState extends State<LocationWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Location',
                style: TextStyle(
                  color: secondaryColor,
                  fontSize: 22
                ),
              ),
              Row(
                children: [
                  Icon(Icons.location_on,color: mainColor,),
                  Text('New York , USA'),
                  IconButton(
                    onPressed: (){},
                    icon: Icon(Iconsax.arrow_bottom),
                  ),
                ],
              ),
            ],
          ),
          CircleAvatar(
            radius: 20,
            backgroundColor: mainColor,
            child: IconButton(
              onPressed: (){},
              icon: const Icon(Iconsax.notification,color: Colors.white,),
            ),
          ),
        ],
      ),
    );
  }
}
