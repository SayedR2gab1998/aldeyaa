import 'package:aldeyaa/screens/sign_up/sign_up.dart';
import 'package:aldeyaa/utils/colors.dart';
import 'package:aldeyaa/utils/components.dart';
import 'package:flutter/material.dart';





class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailCon = TextEditingController();
  var passCon = TextEditingController();
  bool isPass = true;
  IconData suffix = Icons.visibility;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Sign In',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600
                  ),
                ),
                const SizedBox(height: 20,),
                Text('Hi! Welcome back, you\'ve been missed',
                  style: TextStyle(
                    color: secondaryColor,
                    fontSize: 18
                  ),
                ),
                const SizedBox(height: 60,),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: (){},
                      child: Text('Forget Password ?',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 18,
                          color: mainColor
                        ),
                      )
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                SizedBox(
                  height: 55,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: mainColor
                    ),
                    onPressed: (){},
                    child: const Center(child: Text('Sign In',
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Don\'t have an account?',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black
                      ),
                    ),
                    TextButton(
                        onPressed:(){navigateAndFinish(context,const SignUp());},
                        child: Text('Sign Up',
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
