import 'package:ecommerce_app/constants/app_images_name.dart';
import 'package:ecommerce_app/helpers/common_widgets/homepage_banner_item_widget.dart';
import 'package:ecommerce_app/models/home_page_banner_item.dart';
import 'package:ecommerce_app/screens/auth/forgot_password_screen.dart';
import 'package:ecommerce_app/screens/auth/sign_up_screen.dart';
import 'package:ecommerce_app/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePageScreen extends StatefulWidget{
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen>{

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


    return Scaffold(
      backgroundColor: Color(0xFFFDFDFD),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(17,45,17,0),
        child: Column(

          children: [
            Container(
              height: 55,
              // color: Colors.yellow,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 32,
                    width: 32,
                    child: CircleAvatar(

                      backgroundColor: Color(0xFFF2F2F2),
                      child: Icon(Icons.sort,color: Colors.black,size: 20,),
                    ),
                  ),
                  Container(
                    height: 32,

                    child: Row(
                      spacing: 9,
                      children: [
                        Image.asset(AppImagesName.app_logo,height: 30,width: 38,),
                        Text("Stylish",style: TextStyle(
                          fontFamily: "Libre_Caslon_Text",
                          fontSize: 18,
                          fontWeight: .w700,
                          color: Color(0xFF4392F9)
                        ),)
                      ],
                    )
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    child: CircleAvatar(

                      backgroundImage: AssetImage(AppImagesName.profile_image),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                children: [
                  Column(
                    spacing: 15,
                    children: [
                      Container(
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
                      Row(
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
                      Container(
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
                      Container(
                        clipBehavior: Clip.antiAlias,
                        height: 345.h,
                        decoration: BoxDecoration(
                          // color: Colors.red,
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),

                        ),
                        child: Container(
                          height: 200,
                          width: 200,
                          child: PageView.builder(itemCount: pages.length,
                            controller: pageController,
                            onPageChanged: (value){
                              setState(() {
                                currentPage = value;
                              });
                            },
                            itemBuilder: (context,index){
                              return HomepageBannerItemWidget(item: pages[index]);
                            },

                          ),
                        ),

                      ),


                    ],
                  )

                ],
              ),
            ),

          ],
        ),
      ),
    );

  }

}


