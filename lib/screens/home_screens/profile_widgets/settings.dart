import 'package:aldeyaa/provider/app_provider.dart';
import 'package:aldeyaa/screens/home_screens/profile_widgets/password_manager.dart';
import 'package:aldeyaa/screens/home_screens/profile_widgets/profile_main_screen.dart';
import 'package:aldeyaa/utils/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<AppProvider>(context);
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
            GestureDetector(
              onTap:(){
                showDialog(
                  context: context,
                  builder:(context)=>AlertDialog(
                    content: SingleChildScrollView(
                      child: BlockPicker(
                        pickerColor:Color(prov.appColor),
                        onColorChanged: (value){
                          prov.changeColor(value.value);
                        },
                      ),
                    ),
                    actions: [
                      TextButton(onPressed: (){Navigator.pop(context);}, child: const Text('Cancel'),),
                      TextButton(onPressed: (){
                        Navigator.pop(context);
                      }, child: const Text('Save'),),
                    ],
                  ),
                );
              },
              child: const Row(
                children: [
                  Icon(Iconsax.color_swatch),
                  SizedBox(width: 10,),
                  Text('Choose Theme Color',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            const Divider(),
            const SizedBox(height: 10,),
            Row(
              children: [
                const Icon(Iconsax.color_swatch),
                const SizedBox(width: 10,),
                const Text('Dark Mode',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Spacer(),
                Switch(
                  onChanged: (value){
                    prov.changeMode(value);
                  },
                  value: prov.themeMode == ThemeMode.dark,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
