import 'package:aldeyaa/utils/colors.dart';
import 'package:aldeyaa/utils/components.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class PasswordManager extends StatefulWidget {
  const PasswordManager({super.key});

  @override
  State<PasswordManager> createState() => _PasswordManagerState();
}

class _PasswordManagerState extends State<PasswordManager> {
  var currentPass = TextEditingController();
  var newPass = TextEditingController();
  var confirmNewPass = TextEditingController();
  bool isCurrentPass = true;
  IconData currentSuffix = Iconsax.eye;

  bool isNewPass = true;
  IconData newSuffix = Iconsax.eye;
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
        title: const Text('Password Manager',
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 22
          ),
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.check),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Current Password',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 10,),
              defaultTextFormField(
                max: 1,
                controller: currentPass,
                validator: (value) =>value == null? 'Required':null,
                inputType: TextInputType.visiblePassword,
                hint: 'Current Password',
                isPassword: isCurrentPass,
                suffix: currentSuffix,
                onSuffixPressed: (){
                  setState(() {
                    isCurrentPass = !isCurrentPass;
                    currentSuffix = isCurrentPass? Iconsax.eye:Iconsax.eye_slash;
                  });
                }
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: (){},
                    child: Text('Forget Password ?',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 16,
                        color: mainColor,
                      ),
                    ),
                  ),
                ],
              ),
              const Text('New Password',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 10,),
              defaultTextFormField(
                  max: 1,
                  controller: newPass,
                  validator: (value) =>value == null? 'Required':null,
                  inputType: TextInputType.visiblePassword,
                  hint: 'New Password',
                  isPassword: isNewPass,
                  suffix: newSuffix,
                  onSuffixPressed: (){
                    setState(() {
                      isNewPass = !isNewPass;
                      newSuffix = isNewPass? Iconsax.eye:Iconsax.eye_slash;
                    });
                  }
              ),
              const SizedBox(height: 20,),
              const Text('Confirm New Password',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 10,),
              defaultTextFormField(
                  max: 1,
                  controller: confirmNewPass,
                  validator: (value) =>value == null? 'Required':null,
                  inputType: TextInputType.visiblePassword,
                  hint: 'Confirm New Password',
                  isPassword: isNewPass,
                  suffix: newSuffix,
                  onSuffixPressed: (){
                    setState(() {
                      isNewPass = !isNewPass;
                      newSuffix = isNewPass? Iconsax.eye:Iconsax.eye_slash;
                    });
                  }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
