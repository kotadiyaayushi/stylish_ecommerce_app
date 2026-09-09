import 'package:ecommerce_app/constants/app_images_name.dart';
import 'package:ecommerce_app/screens/auth/forgot_password_screen.dart';
import 'package:ecommerce_app/screens/auth/sign_up_screen.dart';
import 'package:ecommerce_app/screens/home/home_page_screen.dart';
import 'package:ecommerce_app/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GetStartedScreen extends StatefulWidget{
  @override
  _GetStartedScreenState createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen>{


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              AppImagesName.home_image,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.black,
                        Colors.black87,
                        Colors.black54,
                        Colors.transparent,
                      ],
                      stops: [
                        0.0,
                        0.50,
                        0.80,
                        1.0,
                      ],
                    ),
                  ),
                  child: Column(
                    spacing: 10.h,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("You want\nAuthentic, here\nyou go!",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: .w600,
                              fontSize: 34,
                              fontFamily: "Montserrat",
                              color: Colors.white
                            ),

                          )
                        ],
                      ),
                      Column(
                        spacing: 30.h,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Find it here, buy it now!",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: .w400,
                                    fontSize: 14,
                                    fontFamily: "Montserrat",
                                    color: Color(0xFFF2F2F2)
                                ),

                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: (){
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (_)=> HomePageScreen())
                                  );
                                },
                                child: Container(
                                  height: 55.h,
                                  width: 280.h,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFF83758)
                                  ),
                                
                                  child: Center(
                                    child: Text("Get Started",style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontFamily: "Montserrat",
                                        fontSize: 20,
                                        fontWeight: .w600
                                
                                    ),),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      )


                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),

    );

  }

}


