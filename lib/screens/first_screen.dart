import 'package:chat/screens/login.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'registration.dart';
// import 'package:animated_text_kit/animated_text_kit.dart';
import '../components/button.dart';

class WelcomeScreen extends StatefulWidget {

  // this is first screen rendered on mobile. 

  static const String id = 'first_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    // animation = CurvedAnimation(parent: controller, curve:  Curves.ease);
    // animation.addStatusListener((status) {
    //   if (status == AnimationStatus.completed) {
    //     controller.reverse(from: 1);
    //   } else if (status == AnimationStatus.dismissed) {
    //     controller.forward();
    //   }
    //  });
    animation = ColorTween(begin: Colors.green, end: Colors.grey.shade900)
        .animate(controller);
    controller.forward();

    controller.addListener(() {
      setState(() {});
      print(controller.value);
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      // Colors.grey.shade900,
      // .withOpacity(controller.value),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 60,
                  ),
                ),
                Text(
                  'Fast Chat',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            RoundedButton(
              title: 'Login', 
              colour: Colors.lightGreenAccent,
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
            ),
             RoundedButton(
              title: 'Sing up', 
              colour: Colors.lightBlueAccent,
              onPressed: () {
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
            ),
           
          ],
        ),
      ),
    );
  }
}
