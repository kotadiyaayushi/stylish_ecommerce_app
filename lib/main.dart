import 'package:ecommerce_app/screens/onboarding/onboarding_screen.dart';
import 'package:ecommerce_app/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),

      splitScreenMode: true,
      child: MaterialApp(

        debugShowCheckedModeBanner: false,
        title: 'Ecommerce App',
        theme: ThemeData(
          fontFamily: "Libre_Caslon_Text"
      ),
        home: const MyHomePage(title: 'Hello, World!'),
      ),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return SplashScreen(nextScreen: OnboardingScreen(),);
  }
}