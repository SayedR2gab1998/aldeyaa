import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileMainScreen extends StatefulWidget {
  const ProfileMainScreen({super.key, required this.title, required this.onTap, required this.icon});
  final String title;
  final Function() onTap;
  final IconData icon;

  @override
  State<ProfileMainScreen> createState() => _ProfileMainScreenState();
}

class _ProfileMainScreenState extends State<ProfileMainScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        widget.onTap();
      },
      child: Row(
        children: [
          Icon(widget.icon,size: 20,),
          const SizedBox(width: 10,),
          Text(widget.title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Spacer(),
          const Icon(Iconsax.arrow_right),
        ],
      ),
    );
  }
}
