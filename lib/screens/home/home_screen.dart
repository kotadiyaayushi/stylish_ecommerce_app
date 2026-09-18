import 'package:ecommerce_app/constants/app_images_name.dart';
import 'package:ecommerce_app/models/home_page_banner_item.dart';
import 'package:ecommerce_app/screens/auth/forgot_password_screen.dart';
import 'package:ecommerce_app/screens/auth/sign_up_screen.dart';
import 'package:ecommerce_app/screens/home/home_page_screen.dart';
import 'package:ecommerce_app/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget{
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{

  int currentPage = 0;
  PageController pageController = PageController();
  List<HomePageBannerItem> pages = [
    HomePageBannerItem(
      title: "Choose Products",
      subTitle: "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
    ),
    HomePageBannerItem(
      title: "Make Payment",
      subTitle: "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
    ),
    HomePageBannerItem(
      title: "Get Your Order",
      subTitle: "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
    ),

  ];



  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }


  @override
  Widget build(BuildContext context) {


    return Column(
        spacing: 15,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16,0,16,0),
            child: Container(
              clipBehavior: Clip.antiAlias,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.03),
                    blurRadius: 4,
                    spreadRadius: 0.5,
                    offset: const Offset(0, 0.5),
                  ),
                ],
              ),
              child:  Row(
                children: [
                  Expanded(
                    child: TextField(

                      decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                          hintText: 'Search any Product..',
                          hintStyle: const TextStyle(color: Color(0xFFBBBBBB),fontSize: 14,
                              fontWeight: .w400,
                              fontFamily: "Montserrat"

                          ),
                          // prefixIcon: Padding(
                          //   padding: const EdgeInsets.all(10),
                          //   child: SvgPicture.asset(AppImagesName.user_login),
                          // ),
                          prefixIcon: Icon(Icons.search,color: Color(0xFFBBBBBB)),
                          suffixIcon: Icon(Icons.mic_none_outlined,color: Color(0xFFBBBBBB)),
                          filled: true,
                          fillColor: Color(0xFFFFFFFF)

                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16,0,16,0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("All Featured",style: TextStyle(
                    fontWeight: .w600,
                    fontSize: 18,
                    fontFamily: "Montserrat"
                ),),

                Row(
                  spacing: 12,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.03),
                            blurRadius: 4,
                            spreadRadius: 0.5,
                            offset: const Offset(0, 0.5),
                          ),
                        ],
                      ),
                      height: 25,
                      width: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Sort",style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 12,
                              fontWeight: .w400
                          ),),
                          Icon(Icons.swap_vert_outlined,size: 18,)
                        ],
                      ),

                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.03),
                            blurRadius: 4,
                            spreadRadius: 0.5,
                            offset: const Offset(0, 0.5),
                          ),
                        ],
                      ),
                      height: 25,
                      width: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Filter",style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 12,
                              fontWeight: .w400
                          ),),
                          Icon(Icons.filter_alt_outlined,size: 18,)
                        ],
                      ),

                    ),

                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16,0,16,0),
            child: Container(
              clipBehavior: Clip.antiAlias,
              height: 85.h,
              decoration: BoxDecoration(
                // color: Colors.red,
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),

              ),
              child: Row(
                spacing: 15,
                children: [
                  Expanded(
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (builder,index){
                        return Container(

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            spacing: 4.h,
                            children: [
                              CircleAvatar(
                                radius: 27,
                                backgroundImage: AssetImage(AppImagesName.category_1),
                              ),
                              Text("Beauty",style: TextStyle(
                                  fontWeight: .w400,
                                  fontSize: 10,
                                  fontFamily: "Montserrat"
                              ),)
                            ],
                          ),
                        );
                      },
                      itemCount: 7,
                      separatorBuilder: (builder,index){
                        return SizedBox(
                          width: 16,
                        );
                      },

                    ),
                  )

                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16,0,16,0),
            child: Container(
              clipBehavior: Clip.antiAlias,
              height: 60,
              decoration: BoxDecoration(
                  color: Color(0xFF4392F9),
                  borderRadius: BorderRadius.circular(8)

              ),
              child:
              Row(

                children: [
                  Expanded(
                      flex:6,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8,8,0,8),
                        child: Column(
                          spacing: 4,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Deal of the Day",style: TextStyle(
                                fontFamily: "Montserrat",
                                fontWeight: .w500,
                                fontSize: 16,
                                color: Colors.white

                            ),),
                            Row(
                              spacing: 4,
                              children: [
                                Icon(Icons.alarm,color: Colors.white,size: 16,),
                                Text("22h 55m 20s remaining ",style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontWeight: .w400,
                                    fontSize: 12,
                                    color: Colors.white
                                ),)
                              ],
                            )

                          ],
                        ),
                      )),
                  Expanded(
                      flex:3,
                      child: Container(
                        // color: Colors.yellow,
                        alignment: Alignment.center,
                        child: Container(
                          height: 28,
                          width: 89,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                  color: Colors.white,
                                  width: 1
                              )
                          ),
                          child: Row(
                            spacing: 4,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("View all",style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: .w500,
                                  fontFamily: "Montserrat"

                              ),),
                              Icon(Icons.arrow_forward_outlined,color: Colors.white,size: 16,)
                            ],
                          ),
                        ),
                      )
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16,0,12,0),
            child: Container(
              height: 240,
              // color: Colors.redAccent,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (builder,index){
                  return Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6)
                    ),

                    child: Column(
                      spacing: 8,
                      children: [
                        Expanded(
                          child: Container(

                            clipBehavior: Clip.antiAlias,
                            width: 170,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.blue
                            ),
                            child: Image.asset(AppImagesName.display_image_2,
                              fit: BoxFit.cover,

                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(

                            width: 170,


                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              spacing:4,
                              children: [
                                Text("Women Printed and colorful Kurta ",style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 12,
                                  fontWeight: .w500,

                                ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,

                                ),
                                Text("Neque porro quisquam est qui dolorem ipsum quia Neque porro quisquam est qui dolorem ipsum quia",style: TextStyle(
                                    fontWeight: .w400,
                                    fontSize: 10,
                                    fontFamily: "Montserrat"
                                ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  spacing:6,
                                  children: [
                                    Column(
                                      children: [
                                        Text("₹1500",style: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 12,
                                          fontWeight: .w500,
                                        ),),
                                        Text(" ₹2499",style: TextStyle(
                                            fontFamily: "Montserrat",
                                            fontSize: 12,
                                            fontWeight: .w500,
                                            color: Color(0xFFBBBBBB),
                                            decoration: TextDecoration.lineThrough,
                                            decorationColor: Color(0xFFBBBBBB)
                                        ),),

                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text("40%Off",style: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 10,
                                          fontWeight: .w400,
                                          color: Color(0xFFFE735C),

                                        ),),
                                      ],

                                    )
                                  ],
                                ),
                                Row(
                                  spacing:4,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.star,color: Color(0xFFEDB310),size: 14,),
                                        Icon(Icons.star,color: Color(0xFFEDB310),size: 14,),
                                        Icon(Icons.star,color: Color(0xFFEDB310),size: 14,),
                                        Icon(Icons.star,color: Color(0xFFEDB310),size: 14,),
                                        Icon(Icons.star_half,color: Color(0xFFBBBBBB),size: 14,),
                                      ],

                                    ),
                                    Text("56890",style: TextStyle(
                                        fontWeight: .w400,
                                        fontSize: 10,
                                        fontFamily: "Montserrat",
                                        color: Color(0xFFBBBBBB)
                                    ),)
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );


                },
                itemCount: 7,
                separatorBuilder: (builder,index){
                  return SizedBox(
                    width: 12,
                  );


                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16,0,16,0),
            child: Container(
              clipBehavior: Clip.antiAlias,
              height: 84,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6)

              ),
              child:
              Row(
                spacing: 24,
                children: [
                  Expanded(
                      flex:2,
                      child: Container(

                        // color: Colors.red,
                        height: 60,
                        width: 75,
                        child: Image.asset(AppImagesName.special_offer),
                      )),
                  Expanded(
                      flex:6,
                      child: Container(
                        // color: Colors.yellow,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              spacing: 8,
                              children: [
                                Text("Special Offers",style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontWeight: .w500,
                                    fontSize: 16
                                ),),
                                Container(
                                  alignment: Alignment.center,
                                  height: 20,
                                  width: 20,
                                  child: Text("😱",style: TextStyle(
                                      fontSize: 10
                                  ),),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(9),
                                      border: Border.all(
                                          color: Color(0xFFBBBBBB),
                                          width: 0.7
                                      )
                                  ),

                                )
                              ],
                            ),
                            Text("We make sure you get the\noffer you need at best prices",style: TextStyle(
                                fontFamily: "Montserrat",
                                fontWeight: .w300,
                                fontSize: 12
                            ),)

                          ],
                        ),
                      )),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16,0,16,0),
            child: Container(
              clipBehavior: Clip.antiAlias,
              height: 172,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0,8,4,8),
                    child: Container(
                      color: Color(0xFFE7E7EB).withOpacity(0.3),
                    ),
                  ),
                  Row(

                    children: [
                      Expanded(
                          flex:4,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 8,
                                child: Container(
                                  // color: Colors.grey,
                                  width: 77,
                                  height: 156,
                                  child: Image.asset(AppImagesName.heels_banner_stack_3),
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                // color: Colors.red,
                                width: 20,
                                child: Image.asset(AppImagesName.heels_banner_stack_1),
                              ),

                              Positioned(
                                top: 32,
                                left: 16,
                                child: Container(
                                  // color: Colors.green,
                                  width: 144,
                                  height: 108,
                                  child: Image.asset(AppImagesName.heels_banner_stack_2),
                                ),
                              ),
                            ],
                          )),
                      Expanded(
                          flex:5,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0,0,12,0),
                            child: Container(
                              // color: Colors.yellow,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                spacing: 10,
                                children: [
                                  Column(
                                    children: [
                                      Text("Flat and Heels",style: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontWeight: .w500,
                                          fontSize: 16
                                      ),),
                                      Text("Stand a chance to get rewarded",style: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontWeight: .w400,
                                          fontSize: 10
                                      ),)
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        height: 24,
                                        width: 92,
                                        decoration: BoxDecoration(
                                            color: Color(0xFFF83758),
                                            borderRadius: BorderRadius.circular(4)
                                        ),
                                        child: Row(
                                          spacing: 4,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text("Visit now",style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: .w500,
                                                fontFamily: "Montserrat"

                                            ),),
                                            Icon(Icons.arrow_forward_outlined,color: Colors.white,size: 16,)
                                          ],
                                        ),
                                      )
                                    ],
                                  )


                                ],
                              ),
                            ),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16,0,16,0),
            child: Container(
              clipBehavior: Clip.antiAlias,
              height: 60,
              decoration: BoxDecoration(
                  color: Color(0xFFFD6E87),
                  borderRadius: BorderRadius.circular(8)

              ),
              child:
              Row(

                children: [
                  Expanded(
                      flex:6,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8,8,0,8),
                        child: Column(
                          spacing: 4,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Trending Products ",style: TextStyle(
                                fontFamily: "Montserrat",
                                fontWeight: .w500,
                                fontSize: 16,
                                color: Colors.white

                            ),),
                            Row(
                              spacing: 4,
                              children: [
                                Icon(Icons.calendar_month_outlined,color: Colors.white,size: 16,),
                                Text("Last Date 29/02/22",style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontWeight: .w400,
                                    fontSize: 12,
                                    color: Colors.white
                                ),)
                              ],
                            )

                          ],
                        ),
                      )),
                  Expanded(
                      flex:3,
                      child: Container(
                        // color: Colors.yellow,
                        alignment: Alignment.center,
                        child: Container(
                          height: 28,
                          width: 89,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                  color: Colors.white,
                                  width: 1
                              )
                          ),
                          child: Row(
                            spacing: 4,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("View all",style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: .w500,
                                  fontFamily: "Montserrat"

                              ),),
                              Icon(Icons.arrow_forward_outlined,color: Colors.white,size: 16,)
                            ],
                          ),
                        ),
                      )
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16,0,0,0),
            child: Container(
              height: 186,
              // color: Colors.redAccent,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (builder,index){
                  return Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6)
                    ),

                    child: Column(
                      spacing: 8,
                      children: [
                        Expanded(
                          child: Container(

                            clipBehavior: Clip.antiAlias,
                            width: 142,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.blue
                            ),
                            child: Image.asset(AppImagesName.watch,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(

                            width: 142,


                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              spacing:4,
                              children: [
                                Text("IWC Schaffhausen 2021 Pilot's Watch \"SIHH 2019\" 44mm",style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 12,
                                  fontWeight: .w500,
                                ),),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  spacing:6,
                                  children: [
                                    Column(
                                      children: [
                                        Text("₹650",style: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 12,
                                          fontWeight: .w500,
                                        ),),
                                        Text(" ₹1599",style: TextStyle(
                                            fontFamily: "Montserrat",
                                            fontSize: 12,
                                            fontWeight: .w500,
                                            color: Color(0xFFBBBBBB),
                                            decoration: TextDecoration.lineThrough,
                                            decorationColor: Color(0xFFBBBBBB)
                                        ),),

                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text("60% Off",style: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 10,
                                          fontWeight: .w400,
                                          color: Color(0xFFFE735C),

                                        ),),
                                      ],

                                    )
                                  ],
                                ),

                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );


                },
                itemCount: 7,
                separatorBuilder: (builder,index){
                  return SizedBox(
                    width: 16,
                  );


                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16,0,16,0),
            child: Container(
              clipBehavior: Clip.antiAlias,
              height: 270,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8)

              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      height: 190,
                      color:Colors.blue,
                      child: Image.asset(AppImagesName.hot_summer_image,fit: BoxFit.fitHeight)),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                          flex:6,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(8,8,0,0),
                            child: Column(
                              spacing: 4,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("New Arrivals ",style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontWeight: .w500,
                                  fontSize: 20,


                                ),),
                                Text("Summer’ 25 Collections",style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontWeight: .w400,
                                  fontSize: 16,

                                ),)

                              ],
                            ),
                          )),
                      Expanded(
                          flex:3,
                          child: Container(
                            // color: Colors.yellow,
                            alignment: Alignment.center,
                            child: Container(
                              height: 28,
                              width: 89,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Color(0xFFF83758)
                              ),
                              child: Row(
                                spacing: 4,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("View all",style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: .w600,
                                      fontFamily: "Montserrat"

                                  ),),
                                  Icon(Icons.arrow_forward_outlined,color: Colors.white,size: 16,)
                                ],
                              ),
                            ),
                          )
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16,0,0,0),
            child: Container(
              clipBehavior: Clip.antiAlias,
              height: 374,
              decoration: BoxDecoration(
                // color: Colors.blue,


              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16,8,0,8),
                child: Container(
                  // color: Colors.yellow,
                  child: Column(
                    spacing: 6,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Sponserd",style: TextStyle(
                              fontFamily: "Montserrat",
                              fontWeight: .w500,
                              fontSize: 20
                          ),)
                        ],
                      ),
                      Container(
                          height: 292,
                          clipBehavior: Clip.antiAlias,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8)
                          ),
                          child: Image.asset(AppImagesName.sponserd_image,fit: BoxFit.cover)),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              flex:6,
                              child: Column(
                                spacing: 4,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("up to 50% Off",style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontWeight: .w700,
                                    fontSize: 16,


                                  ),),


                                ],
                              )),
                          Expanded(
                              flex:1,
                              child: Container(
                                // color: Colors.yellow,
                                alignment: Alignment.center,
                                child: Container(
                                  height: 20,
                                  width: 20,
                                  // color: Colors.red,
                                  child: Icon(Icons.arrow_forward_ios_outlined,size: 15,fontWeight: .w700,),
                                ),
                              )
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

          )




        ],
      );



  }

}


