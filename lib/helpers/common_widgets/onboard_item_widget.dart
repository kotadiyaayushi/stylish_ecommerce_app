import 'package:ecommerce_app/models/onboard_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardItemWidget extends StatelessWidget{
  OnboardItemWidget({required this.item});
  final OnboardItem item;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [

        Expanded(
            flex: 3,
            child: Column(

                mainAxisAlignment: MainAxisAlignment.end,
                children: [Container(
                  height: 300.h,
                  width: 300.h,
                  child: Image.asset(item.image),
                ),]

            )),
        Expanded(
            flex: 2,
            child: Container(
              height: 111.h,
              child: Column(
                children: [
                  Text("${item.title}",style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                      fontFamily: "Montserrat"
                  ),),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,10,0,0),
                    child: Text("${item.subTitle}",style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,

                      letterSpacing: 16*0.02,
                      height: 24/16,
                      fontFamily: "Montserrat",
                      color: Color(0xFFA8A8A9),
                    ),
                      textAlign: TextAlign.center,

                    ),
                  ),

                ],
              ),

            ))
      ],
    );
  }
}