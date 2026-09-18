import 'package:ecommerce_app/constants/app_images_name.dart';
import 'package:ecommerce_app/screens/auth/forgot_password_screen.dart';
import 'package:ecommerce_app/screens/auth/sign_up_screen.dart';
import 'package:ecommerce_app/screens/home/home_page_screen.dart';
import 'package:ecommerce_app/screens/products/shop_page_screen.dart';
import 'package:ecommerce_app/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TrendingProductsScreen extends StatefulWidget{
  @override
  _TrendingProductsScreenState createState() => _TrendingProductsScreenState();
}

class _TrendingProductsScreenState extends State<TrendingProductsScreen>{


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
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16,0,16,0),
          child: Container(
            height: 500,
            child: MasonryGridView.count(
              padding: EdgeInsets.zero,
              itemCount: 20,
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              itemBuilder: (context, index){
              if(index > 0){
                if (((index - 1) ~/ 2) % 2 == 0) {
                  return InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ShopPageScreen()));
                    },
                    child: Container(
                      height: 310,
                      decoration: BoxDecoration(
                          // color: Colors.red,
                          borderRadius: BorderRadius.circular(8)
                      ),

                      child: Column(
                        spacing: 8,
                        children: [
                          Container(

                            clipBehavior: Clip.antiAlias,

                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.blue
                            ),
                            child: Image.asset(AppImagesName.trending_products_image_1,
                              fit: BoxFit.cover,

                            ),
                          ),
                          Container(
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
                        ],
                      ),
                    ),
                  );
                } else {
                  return InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ShopPageScreen()));
                    },
                    child: Container(
                      height: 245,
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
                                  // color: Colors.yellow
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
                  );// for 3,4 .. 7,8 ...
                }
              }

              return InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ShopPageScreen()));
                },
                child: Container(
                  height: 245,
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
                            // color: Colors.yellow
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

            }),
          ),
        ),





      ],
    );



  }

}


