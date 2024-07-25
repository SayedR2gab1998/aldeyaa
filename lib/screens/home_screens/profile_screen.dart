import 'package:aldeyaa/screens/home_screens/profile_widgets/profile_main_screen.dart';
import 'package:aldeyaa/utils/colors.dart';
import 'package:aldeyaa/utils/components.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Profile',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 150,
                child: Stack(
                  children: [
                    const CircleAvatar(
                      radius: 70,
                      backgroundColor: Colors.red,
                      backgroundImage: NetworkImage('https://i.pinimg.com/564x/77/2a/a7/772aa709423494dba2e436c8df1fe643.jpg'),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: CircleAvatar(
                        radius: 28,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: mainColor,
                          child: IconButton(
                            onPressed: (){},
                            icon: const Icon(Iconsax.edit,color: Colors.white,),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              ProfileMainScreen(
                title: 'Your Profile',
                onTap: (){},
                icon: Iconsax.user,
              ),
              const SizedBox(height: 10,),
              Divider(),
              const SizedBox(height: 10,),
              ProfileMainScreen(
                title: 'Payment Methods',
                onTap: (){},
                icon: Iconsax.wallet,
              ),
              const SizedBox(height: 10,),
              Divider(),
              const SizedBox(height: 10,),
              ProfileMainScreen(
                title: 'My Orders',
                onTap: (){},
                icon: Icons.list_alt,
              ),
              const SizedBox(height: 10,),
              Divider(),
              const SizedBox(height: 10,),
              ProfileMainScreen(
                title: 'Settings',
                onTap: (){},
                icon: Icons.settings,
              ),
              const SizedBox(height: 10,),
              Divider(),
              const SizedBox(height: 10,),
              ProfileMainScreen(
                title: 'Help Center',
                onTap: (){},
                icon: Iconsax.info_circle,
              ),
              const SizedBox(height: 10,),
              Divider(),
              const SizedBox(height: 10,),
              ProfileMainScreen(
                title: 'Privacy Policy',
                onTap: (){},
                icon: Iconsax.lock,
              ),
              const SizedBox(height: 10,),
              Divider(),
              const SizedBox(height: 10,),
              ProfileMainScreen(
                title: 'Invite Friends',
                onTap: (){print('invite');},
                icon: Iconsax.user_add,
              ),
              const SizedBox(height: 10,),
              Divider(),
              const SizedBox(height: 10,),
              ProfileMainScreen(
                title: 'Log Out',
                onTap: (){
                  showDialog(
                    context: context,
                    builder: (BuildContext context){
                      return AlertDialog(
                        title: Text('Log Out'),
                        content: Text('Are your sure you want to log out?'),
                        actions: [
                          Row(
                            children: [
                              Expanded(
                                child: GestureDetector(
                                  onTap: (){Navigator.pop(context);},
                                  child: Container(
                                    height: 55,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: mainColor),
                                      borderRadius: BorderRadius.circular(30)
                                    ),
                                    child: Center(child: Text('Cancel',
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: mainColor,
                                      ),
                                    )),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10,),
                              Expanded(
                                child: GestureDetector(
                                  onTap: (){Navigator.pop(context);},
                                  child: Container(
                                    height: 55,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: mainColor),
                                      borderRadius: BorderRadius.circular(30),
                                      color: mainColor
                                    ),
                                    child: const Center(child: Text('Log Out',
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                      ),
                                    )),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      );
                    }
                  );
                },
                icon: Iconsax.logout_1,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
