import 'package:aldeyaa/screens/login/login.dart';
import 'package:aldeyaa/utils/colors.dart';
import 'package:aldeyaa/utils/components.dart';
import 'package:flutter/material.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset('assets/images/logo.png',width: 170,),
              ],
            ),
            const SizedBox(height: 20,),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.5,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.width*0.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/get1.jpg'),
                            fit: BoxFit.cover
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          height: MediaQuery.of(context).size.height*0.5,
                          width: MediaQuery.of(context).size.width*0.5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(200),
                            image: const DecorationImage(
                                image: AssetImage('assets/images/get2.jpg'),
                                fit: BoxFit.cover
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Expanded(
                        child: Container(
                          height: MediaQuery.of(context).size.height*0.5,
                          width: MediaQuery.of(context).size.width*0.5,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/images/get3.jpg'),
                              fit: BoxFit.cover
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40,),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'The ',
                style: const TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                children:  <TextSpan>[
                  TextSpan(text: 'AlDeyaa',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: mainColor,
                      fontSize: 25
                    ),
                  ),
                  const TextSpan(text: ' That\n Makes You Look Your Best'),
                ],
              ),
            ),
            const SizedBox(height: 20,),
             Text('Lorem ipsum dolor sit amit, consectetur \n adipiscing elit, sed do eiusmod tempor incididunt',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: secondaryColor
              ),
            ),
            const SizedBox(height: 20,),
            SizedBox(
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: mainColor
                ),
                onPressed: (){navigateAndFinish(context, const LoginScreen());},
                child: const Center(child: Text('Let\'s Get Started',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
