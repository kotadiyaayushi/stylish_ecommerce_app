import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/constants/app_images_name.dart';
import 'package:ecommerce_app/helpers/common_widgets/homepage_banner_item_widget.dart';
import 'package:ecommerce_app/models/home_page_banner_item.dart';
import 'package:ecommerce_app/screens/auth/forgot_password_screen.dart';
import 'package:ecommerce_app/screens/auth/sign_up_screen.dart';
import 'package:ecommerce_app/screens/home/home_screen.dart';
import 'package:ecommerce_app/screens/products/trending_products_screen.dart';
import 'package:ecommerce_app/screens/splash/splash_screen.dart';
import 'package:ecommerce_app/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:readmore/readmore.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CheckoutScreen extends StatefulWidget{
  @override
  _CheckoutScreenState createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen>{

  final List<String> items = [
    'Apple',
    'Banana',
    'Cherry',
    'Date',
    'Elderberry',
    'Fig',
    'Grapes'
  ];

  String? selectedValue;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Color(0xFFFDFDFD),
      body: Column(

        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0,45,0,0),
            child: Container(
              height: 62,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 1,
                    color: Color(0xFFC6C6C6).withOpacity(0.2)
                  )
                )
              ),
              // color: Colors.yellow,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16,0,16,0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [


                    Container(
                      // color: Colors.red,

                        child: Icon(Icons.arrow_back_ios_outlined,size: 20,)
                    ),
                    Expanded(child: Container(
                      alignment: Alignment.center,

                      child: Text("Checkout",style: TextStyle(
                          fontWeight: .w600,
                          fontSize: 18,
                          fontFamily: "Montserrat"
                      ),),
                    )),
                    Container(
                      width: 20,
                    ),

                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(16,18,16,0),
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  Column(
                    spacing: 10,
                    children: [
                      Row(
                        children: [

                          Icon(Icons.location_on_outlined),
                          Text("Delivery Address",style: TextStyle(
                            fontWeight: .w600,
                            fontSize: 14,
                            fontFamily: "Montserrat"
                          ),)
                        ],
                      ),
                      Row(
                        spacing: 12,
                        children: [
                          Expanded(
                            flex:3,
                            child: Container(
                              height: 80,
                              decoration:BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(6),
                                boxShadow: [
                                  // Top shadow
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.25),
                                    offset: const Offset(0, -4),
                                    blurRadius: 9,
                                    spreadRadius: -7,
                                  ),

                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.25),
                                    offset: const Offset(0, 6),
                                    blurRadius: 14,
                                    spreadRadius: -8,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex:1,
                            child: Container(
                              height: 80,
                              color: Colors.yellow,
                            ),
                          ),
                        ],
                      )
                    ],
                  )









                ],
              ),
            ),
          ),



        ],
      ),
    );

  }

}


