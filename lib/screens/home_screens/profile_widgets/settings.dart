import 'package:aldeyaa/screens/home_screens/profile_widgets/password_manager.dart';
import 'package:aldeyaa/screens/home_screens/profile_widgets/profile_main_screen.dart';
import 'package:aldeyaa/utils/components.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            child: IconButton(
              onPressed: (){Navigator.pop(context);},
              icon: const Icon(Iconsax.arrow_left_1),
            ),
          ),
        ),
        centerTitle: true,
        title: const Text('Settings',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 22
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ProfileMainScreen(
              title: 'Notification Setting',
              onTap: (){},
              icon: Iconsax.notification
            ),
            const SizedBox(height: 10,),
            const Divider(),
            const SizedBox(height: 10,),
            ProfileMainScreen(
              title: 'Password Manager',
              onTap: (){navigateTo(context, const PasswordManager());},
              icon: Iconsax.key
            ),
            const SizedBox(height: 10,),
            const Divider(),
            const SizedBox(height: 10,),
            ProfileMainScreen(
              title: 'Delete Account',
              onTap: (){},
              icon: Iconsax.profile_delete
            ),
            const SizedBox(height: 10,),
            const Divider(),
            const SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
