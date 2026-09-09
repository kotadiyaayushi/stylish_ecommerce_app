import 'package:ecommerce_app/constants/app_images_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget{

  final Widget nextScreen;

  const SplashScreen({
    super.key,
    required this.nextScreen,
  });

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      const Duration(seconds: 2), (){
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => widget.nextScreen,
          ),
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(50,356,50,356),
        child: Container(
          height: 100.h,
          width: 275.w,
          child: Row(
            children: [
              Container(
                height: 100.h,
                width: 125.w,
                child: Image.asset(AppImagesName.app_logo)),
              Container(
                child: Text("Stylish",
                style: TextStyle(
                  color: Color(0xFFF83758),
                  fontWeight: FontWeight.bold,
                  fontFamily: "Montserrat",
                  fontSize: 40.sp
                ),
                ),
              )
            ],
          ),
        ),
      ),


      


    );

  }
}


