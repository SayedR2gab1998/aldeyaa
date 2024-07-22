import 'package:aldeyaa/screens/login/login.dart';
import 'package:aldeyaa/utils/colors..dart';
import 'package:aldeyaa/utils/components.dart';
import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';


class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var nameCon = TextEditingController();
  var emailCon = TextEditingController();
  var passCon = TextEditingController();
  var phoneCon = TextEditingController();
  bool isPass = true;
  IconData suffix = Icons.visibility;
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const Text('Create Account',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600
                  ),
                ),
                const SizedBox(height: 20,),
                Text('Fill your information below or register\n with your social media',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: secondaryColor,
                      fontSize: 18
                  ),
                ),
                const SizedBox(height: 40,),

                //name section

                const Row(
                  children: [
                    Text('Name',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                defaultTextFormField(
                  controller: nameCon,
                  validator: (value)=>value == null?'Required':null,
                  inputType: TextInputType.name,
                  hint: 'John Doe',
                ),
                const SizedBox(height: 20,),

                //email section
                const Row(
                  children: [
                    Text('Email',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                defaultTextFormField(
                  controller: emailCon,
                  validator: (value)=>value == null?'Required':null,
                  inputType: TextInputType.emailAddress,
                  hint: 'example@email.com',
                ),
                const SizedBox(height: 20,),

                //pass section
                const Row(
                  children: [
                    Text('Password',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                defaultTextFormField(
                  max: 1,
                  controller: passCon,
                  validator: (value)=>value == null?'Required':null,
                  inputType: TextInputType.visiblePassword,
                  hint: '***********',
                  suffix: suffix,
                  isPassword: isPass,
                  onSuffixPressed: (){
                    setState(() {
                      isPass = !isPass;
                      suffix = isPass? Icons.visibility:Icons.visibility_off;
                    });
                  }
                ),
                const SizedBox(height: 10,),
                const Row(
                  children: [
                    Text('Phone',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: secondaryColor),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 80,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            bottomLeft: Radius.circular(40),
                          ),
                        ),
                        child: CountryCodePicker(),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
                //check box section
                CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Row(
                    children: [
                      const Text('Agree with ',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,

                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          alignment: Alignment.centerLeft),
                        onPressed: (){},
                        child: Text('Terms & Conditions',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: mainColor,
                            fontSize: 18
                          ),
                        ),
                      ),
                    ],
                  ),
                  activeColor: mainColor,
                  value: selected,
                  onChanged: (value){
                    setState(() {
                      selected = value!;
                    });
                  }
                ),
                const SizedBox(height: 10,),
                //sign up button
                SizedBox(
                  height: 55,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: mainColor
                    ),
                    onPressed: (){},
                    child: const Center(child: Text('Sign Up',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    )),
                  ),
                ),
                const SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          height: 2,
                          color: secondaryColor,
                        ),
                      ),
                      const SizedBox(width: 10,),
                      const Text('Or sign in with'),
                      const SizedBox(width: 10,),
                      Expanded(
                        child: Divider(
                          height: 2,
                          color: secondaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
                // connect social media
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    connectSocial(
                        function: (){print('apple');},
                        image: 'assets/images/apple.png'
                    ),
                    const SizedBox(width: 20,),
                    connectSocial(
                        function: (){print('google');},
                        image: 'assets/images/google.png'
                    ),
                    const SizedBox(width: 20,),
                    connectSocial(
                        function: (){print('facebook');},
                        image: 'assets/images/facebook.png'
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                // login if you have an account
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already have an account?',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black
                      ),
                    ),
                    TextButton(
                        onPressed:(){navigateAndFinish(context,const LoginScreen());},
                        child: Text('Sign In',
                          style: TextStyle(
                            fontSize: 18,
                            color: mainColor,
                            decoration: TextDecoration.underline,
                          ),
                        )
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
