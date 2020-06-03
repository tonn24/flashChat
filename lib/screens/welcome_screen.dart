import 'package:flutter/material.dart';
import '../constants.dart';
import 'login_screen.dart';
import 'login_screen.dart';
import 'registration_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../componenets/homeScreenButton.dart';




class WelcomeScreen extends StatefulWidget {
  static String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin {

  AnimationController controller;
  Animation animation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller = AnimationController(
        duration: Duration(seconds: 1),
        vsync: this,
    );
    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white).animate(controller);
    controller.forward();

    /*
    animation.addStatusListener((status) {
      if(status == AnimationStatus.completed) {
        controller.reverse(from: 1.0);
      } else if(status == AnimationStatus.dismissed){
        controller.forward(from: 0.7);
      }
    });*/

    controller.addListener(() {
      setState(() {

      });
      print(animation.value);
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 60.0,
                  ),
                ),
                TypewriterAnimatedTextKit(
                  text: ['Flash Chat'],
                  textStyle: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            homeScreenButton(buttonColor: loginButtonColor, buttonText: 'Log in', onPressed: (){
              Navigator.pushNamed(context, LoginScreen.id);
            },),
            homeScreenButton(buttonColor: registerButtonColor, buttonText: 'Register', onPressed: (){
              Navigator.pushNamed(context, RegistrationScreen.id);
            },),
          ],
        ),
      ),
    );
  }
}


