import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/constants/app_images_name.dart';
import 'package:ecommerce_app/helpers/common_widgets/homepage_banner_item_widget.dart';
import 'package:ecommerce_app/models/home_page_banner_item.dart';
import 'package:ecommerce_app/screens/auth/forgot_password_screen.dart';
import 'package:ecommerce_app/screens/auth/sign_up_screen.dart';
import 'package:ecommerce_app/screens/checkout/checkout_screen.dart';
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

class ShopPageScreen extends StatefulWidget{
  @override
  _ShopPageScreenState createState() => _ShopPageScreenState();
}

class _ShopPageScreenState extends State<ShopPageScreen>{

  CarouselSliderController carouselController = CarouselSliderController();
  int activeIndex = 0;
  int selectedIndex = -1;

  List<String> images = [
    AppImagesName.trending_products_image_1,
    AppImagesName.trending_products_image_1,
    AppImagesName.trending_products_image_1,
    AppImagesName.trending_products_image_1,
    AppImagesName.trending_products_image_1,
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
      body: Column(

        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16,45,16,0),
            child: Container(
              height: 55,
              // color: Colors.yellow,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [


                  Container(
                    // color: Colors.red,

                    child: Icon(Icons.arrow_back_ios_outlined,size: 20,)
                  ),
                  Container(
                    height: 32,
                    width: 32,
                    child: CircleAvatar(

                      backgroundColor: Color(0xFFF2F2F2),
                      child: Icon(Icons.shopping_cart_outlined,color: Colors.black,size: 20,),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16,16,16,0),
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  Column(
                    spacing: 20,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 235,
                            // color: Colors.red,
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 11,
                                  child: Container(
                                    // color: Colors.yellow,

                                    child: CarouselSlider.builder(
                                      carouselController: carouselController,
                                      itemCount: images.length,
                                      itemBuilder: (context, index, realIndex){
                                        return Container(
                                          width: double.infinity,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(16),
                                            // color: Colors.yellow,

                                          ),
                                          child: Image.asset(AppImagesName.trending_products_image_2,fit: BoxFit.cover,),
                                        );
                                      },
                                      options: CarouselOptions(
                                        height: 215,
                                        autoPlay: true,
                                        enlargeCenterPage: false,
                                        viewportFraction: 1,
                                        onPageChanged: (index, reason) {
                                          setState(() => activeIndex = index);
                                        },

                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                    flex: 1,
                                    child:  AnimatedSmoothIndicator(
                                      activeIndex: activeIndex,
                                      count: images.length,
                                      effect: ExpandingDotsEffect(
                                        expansionFactor: 1.1,
                                        dotHeight: 8,
                                        dotWidth: 8,
                                        activeDotColor: Color(0xFFF83758),
                                        dotColor: Color(0xFFDEDBDB),


                                      ),
                                      onDotClicked: (index) {
                                        carouselController.animateToPage(index);
                                      },
                                    )
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0,16,0,0),
                            child: Column(
                              spacing: 16,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  spacing: 12,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Size: 7UK",
                                      style: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontWeight: .w600,
                                          fontSize: 14
                                      ),
                                    ),
                                    SizedBox(
                                      height: 32,
                                      child: ListView.separated(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: 5,
                                        itemBuilder: (context, index) {
                                          Color bgcolor = selectedIndex == index?Color(0xFFFA7189):Colors.transparent;
                                          Color textColor = selectedIndex == index?Colors.white:Color(0xFFFA7189);
                                          return InkWell(
                                            onTap: (){
                                              setState(() {
                                                selectedIndex = index;
                                              });

                                            },
                                            child: Container(

                                              alignment: Alignment.center,
                                              height: 32,
                                              width: 50,
                                              decoration: BoxDecoration(
                                                color: bgcolor,
                                                borderRadius: BorderRadius.circular(4),
                                                border: Border.all(
                                                  color: Color(0xFFFA7189),
                                                  width: 1.5,
                                                ),
                                              ),
                                              child: Text(
                                                "6 UK",
                                                style: TextStyle(
                                                  color: textColor,
                                                  fontSize: 14,
                                                  fontFamily: "Montserrat",
                                                  fontWeight: .w600,
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                        separatorBuilder: (context, index){
                                          return SizedBox(
                                            width: 12,
                                          );
                                        },
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  spacing: 12,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      spacing: 8,
                                      children: [
                                        Text("NIke Sneakers",style: TextStyle(
                                          fontWeight: .w600,
                                          fontFamily: "Montserrat",
                                          fontSize: 20,

                                        ),),
                                        Text("Vision Alta Men’s Shoes Size (All Colours)",style: TextStyle(
                                          fontWeight: .w400,
                                          fontFamily: "Montserrat",
                                          fontSize: 14,
                                        ),),
                                        Column(
                                          spacing: 8,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              spacing:4,
                                              children: [
                                                Row(
                                                  children: [
                                                    Icon(Icons.star,color: Color(0xFFEDB310),size: 18,),
                                                    Icon(Icons.star,color: Color(0xFFEDB310),size: 18,),
                                                    Icon(Icons.star,color: Color(0xFFEDB310),size: 18,),
                                                    Icon(Icons.star,color: Color(0xFFEDB310),size: 18,),
                                                    Icon(Icons.star_half,color: Color(0xFFBBBBBB),size: 18,),
                                                  ],

                                                ),
                                                Text("56890",style: TextStyle(
                                                    fontWeight: .w500,
                                                    fontSize: 14,
                                                    fontFamily: "Montserrat",
                                                    color: Color(0xFF828282)
                                                ),)
                                              ],
                                            ),
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              spacing:8,
                                              children: [
                                                Text(" ₹2499",style: TextStyle(
                                                    fontFamily: "Montserrat",
                                                    fontSize: 14,
                                                    fontWeight: .w400,
                                                    color: Color(0xFF808488),
                                                    decoration: TextDecoration.lineThrough,
                                                    decorationColor: Color(0xFF808488)
                                                ),),
                                                Text("₹1500",style: TextStyle(
                                                  fontFamily: "Montserrat",
                                                  fontSize: 14,
                                                  fontWeight: .w500,
                                                ),),
                                                Column(
                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                  children: [
                                                    Text("50% Off",style: TextStyle(
                                                      fontFamily: "Montserrat",
                                                      fontSize: 14,
                                                      fontWeight: .w600,
                                                      color: Color(0xFFFA7189),

                                                    ),),
                                                  ],

                                                )
                                              ],
                                            ),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text("Product Details",style: TextStyle(
                                                  fontWeight: .w500,
                                                  fontFamily: "Montserrat",
                                                  fontSize: 14,
                                                ),),
                                                ReadMoreText(
                                                  'Perhaps the most iconic sneaker of all-time, this original "Chicago" colorway is the cornerstone to any sneaker collection. Made famous in 1985 by Michael Jordan, the shoe has stood the test of time, becoming the most famous colorway of the Air Jordan 1. This 2015 release saw the ',
                                                  trimMode: TrimMode.Length,

                                                  trimLength: 250,
                                                  trimCollapsedText: 'More',

                                                  trimExpandedText: 'Less',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontFamily: "Montserrat",
                                                      fontWeight: .w400
                                                  ),
                                                  moreStyle: TextStyle(
                                                    color: Color(0xFFFA7189),
                                                  ),
                                                  lessStyle: TextStyle(
                                                      color: Color(0xFFFA7189)

                                                  ),
                                                )
                                              ],
                                            ),
                                            Row(
                                              spacing: 8,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(0),
                                                  child: Container(
                                                    padding: const EdgeInsets.all(4),
                                                    alignment: Alignment.center,
                                                    height: 24,


                                                    decoration: BoxDecoration(

                                                      borderRadius: BorderRadius.circular(4),
                                                      border: Border.all(
                                                        color: Color(0xFF828282),
                                                        width: 1,
                                                      ),
                                                    ),
                                                    child: Row(
                                                      spacing: 8,
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Icon(Icons.location_on_outlined,color: Color(0xFF828282),size: 16,),
                                                        Text(
                                                          "Nearest Store",
                                                          style: TextStyle(
                                                            color: Color(0xFF828282),
                                                            fontSize: 10,
                                                            fontFamily: "Montserrat",
                                                            fontWeight: .w500,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.all(0),
                                                  child: Container(
                                                    padding: const EdgeInsets.all(4),
                                                    alignment: Alignment.center,
                                                    height: 24,


                                                    decoration: BoxDecoration(

                                                      borderRadius: BorderRadius.circular(4),
                                                      border: Border.all(
                                                        color: Color(0xFF828282),
                                                        width: 1,
                                                      ),
                                                    ),
                                                    child: Row(
                                                      spacing: 4,
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Icon(Icons.lock_outline_rounded,color: Color(0xFF828282),size: 16,),
                                                        Text(
                                                          "VIP",
                                                          style: TextStyle(
                                                            color: Color(0xFF828282),
                                                            fontSize: 10,
                                                            fontFamily: "Montserrat",
                                                            fontWeight: .w500,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),

                                                Padding(
                                                  padding: const EdgeInsets.all(0),
                                                  child: Container(
                                                    padding: const EdgeInsets.all(4),
                                                    alignment: Alignment.center,
                                                    height: 24,


                                                    decoration: BoxDecoration(

                                                      borderRadius: BorderRadius.circular(4),
                                                      border: Border.all(
                                                        color: Color(0xFF828282),
                                                        width: 1,
                                                      ),
                                                    ),
                                                    child: Row(
                                                      spacing: 4,
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Icon(Icons.check_circle_outline,color: Color(0xFF828282),size: 16,),
                                                        Text(
                                                          "Return policy",
                                                          style: TextStyle(
                                                            color: Color(0xFF828282),
                                                            fontSize: 10,
                                                            fontFamily: "Montserrat",
                                                            fontWeight: .w500,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    Row(
                                      spacing: 12,
                                      children: [
                                        Container(

                                            height:40,
                                            child: InkWell(
                                              onTap: (){
                                                Navigator.of(context).push(
                                                    MaterialPageRoute(builder: (_)=> CheckoutScreen())
                                                );
                                              },
                                              child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  Container(
                                                    height: 36,
                                                    width: 136,
                                                    padding: EdgeInsets.fromLTRB(0, 0, 8, 0),
                                                    alignment: Alignment.centerRight,
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.only(
                                                          topRight: Radius.circular(4),
                                                          topLeft: Radius.circular(20),
                                                          bottomLeft: Radius.circular(20),
                                                          bottomRight: Radius.circular(4)
                                                      ),

                                                      gradient: LinearGradient(
                                                        colors: [Color(0xFF3F92FF), Color(0xFF0B3689)],
                                                        begin: Alignment.topCenter,
                                                        end: Alignment.bottomCenter,
                                                      ),
                                                    ),
                                                    child: Text("Go to cart",style: TextStyle(
                                                        fontWeight: .w500,
                                                        fontFamily: "Montserrat",
                                                        fontSize: 16,
                                                        color: Colors.white
                                                    ),),
                                                  ),
                                                  Positioned(
                                                    left: 0,
                                                    child:       Container(
                                                      height: 40,
                                                      width: 40,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        gradient: RadialGradient(

                                                            colors: [
                                                              Color(0xFF3F92FF),
                                                              Color(0xFF0B3689),
                                                            ],
                                                            radius: 1
                                                        ),
                                                      ),
                                                      child: const Icon(
                                                        Icons.shopping_cart_outlined,
                                                        color: Colors.white,
                                                        size: 24,
                                                      ),
                                                    ),
                                                  ),

                                                ],
                                              ),
                                            ),
                                        ),

                                        Container(

                                          height:40,
                                          child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Container(
                                                height: 36,
                                                width: 136,
                                                padding: EdgeInsets.fromLTRB(0, 0, 8, 0),
                                                alignment: Alignment.centerRight,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.only(
                                                      topRight: Radius.circular(4),
                                                      topLeft: Radius.circular(20),
                                                      bottomLeft: Radius.circular(20),
                                                      bottomRight: Radius.circular(4)
                                                  ),

                                                  gradient: LinearGradient(
                                                    colors: [Color(0xFF71F9A9), Color(0xFF31B769)],
                                                    begin: Alignment.topCenter,
                                                    end: Alignment.bottomCenter,
                                                  ),
                                                ),
                                                child: Text("Buy Now",style: TextStyle(
                                                    fontWeight: .w500,
                                                    fontFamily: "Montserrat",
                                                    fontSize: 16,
                                                    color: Colors.white
                                                ),),
                                              ),
                                              Positioned(
                                                left: 0,
                                                child:       Container(
                                                  height: 40,
                                                  width: 40,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    gradient: RadialGradient(

                                                        colors: [
                                                          Color(0xFF71F9A9),
                                                          Color(0xFF31B769),
                                                        ],
                                                        radius: 0.9
                                                    ),
                                                  ),
                                                  child: const Icon(
                                                    Icons.touch_app_outlined,
                                                    color: Colors.white,
                                                    size: 24,
                                                  ),
                                                ),
                                              ),

                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      clipBehavior: Clip.antiAlias,
                                      height: 60,
                                      decoration: BoxDecoration(
                                          color: Color(0xFFFFCCD5),
                                          borderRadius: BorderRadius.circular(5)

                                      ),
                                      child:
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(27,8,0,8),
                                        child: Column(

                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text("Delivery in",style: TextStyle(
                                                  fontFamily: "Montserrat",
                                                  fontWeight: .w600,
                                                  fontSize: 14,

                                                ),),
                                              ],
                                            ),
                                            Text("1 within Hour",style: TextStyle(
                                              fontFamily: "Montserrat",
                                              fontWeight: .w600,
                                              height: 1,
                                              fontSize: 21,




                                            ),),


                                          ],
                                        ),
                                      ),
                                    ),


                                  ],
                                ),
                                Container(
                                    height: 48,
                                    child: Row(
                                      spacing: 3,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            height: 48,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.circular(8),
                                                border: Border.all(
                                                    color: Color(0xFFD9D9D9),
                                                    width: 0.5
                                                )

                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              spacing: 8,
                                              children: [
                                                Icon(Icons.remove_red_eye_outlined,size: 24,),
                                                Text("View Similar",style: TextStyle(
                                                    fontWeight: .w500,
                                                    fontSize: 14,
                                                    fontFamily: "Montserrat"
                                                ),)
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            height: 48,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.circular(8),
                                                border: Border.all(
                                                    color: Color(0xFFD9D9D9),
                                                    width: 0.5
                                                )

                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              spacing: 8,
                                              children: [
                                                Icon(Icons.screen_rotation_outlined,size: 24,),
                                                Text("Add to Compare",style: TextStyle(
                                                    fontWeight: .w500,
                                                    fontSize: 14,
                                                    fontFamily: "Montserrat"
                                                ),)
                                              ],
                                            ),
                                          ),
                                        ),



                                      ],
                                    )
                                ),


                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        spacing: 18,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              Text("Similar To",style: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 20,
                                fontWeight: .w600
                              ),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("52,082+ Items ",style: TextStyle(
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
                            ],
                          ),
                          Container(
                            height: 245,

                            // color: Colors.redAccent,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (builder,index){
                                return InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ShopPageScreen()));
                                  },
                                  child: Container(
                                    height: 245,
                                    width: 164,
                                    decoration: BoxDecoration(
                                      // color: Colors.blue,
                                        borderRadius: BorderRadius.circular(8)
                                    ),

                                    child: Column(
                                      spacing: 8,
                                      children: [
                                        Expanded(
                                          flex:3,
                                          child: Container(
                                            width: double.infinity,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(8),
                                              color: Colors.yellow
                                            ),
                                            child: Image.asset(AppImagesName.trending_products_image_2,
                                              fit: BoxFit.cover,

                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 2,
                                          child: Container(
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              spacing:4,
                                              children: [
                                                Text("Women Printed Kurta",style: TextStyle(
                                                  fontFamily: "Montserrat",
                                                  fontSize: 12,
                                                  fontWeight: .w500,
                                                ),),
                                                Text("Neque porro quisquam est qui dolorem ipsum quia",style: TextStyle(
                                                    fontWeight: .w400,
                                                    fontSize: 10,
                                                    fontFamily: "Montserrat"
                                                ),),
                                                Row(
                                                  crossAxisAlignment: CrossAxisAlignment.end,
                                                  spacing:6,
                                                  children: [
                                                    Text("₹1500",style: TextStyle(
                                                      fontFamily: "Montserrat",
                                                      fontSize: 12,
                                                      fontWeight: .w500,
                                                    ),),

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


