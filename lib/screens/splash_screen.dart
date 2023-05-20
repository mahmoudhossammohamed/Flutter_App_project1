import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter2/screens/programer_list.dart';
import 'package:page_transition/page_transition.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splashIconSize: 200,
        splashTransition: SplashTransition.rotationTransition,
        pageTransitionType: PageTransitionType.leftToRight,
        backgroundColor: Colors.blue,
        splash:const CircleAvatar(
      radius: 90,
      backgroundImage: AssetImage('assets/1.jpg'),
        ),
        nextScreen: const ProgramerList());

  }

}
