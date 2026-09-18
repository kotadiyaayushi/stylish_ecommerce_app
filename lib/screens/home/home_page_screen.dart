import 'package:ecommerce_app/constants/app_images_name.dart';
import 'package:ecommerce_app/helpers/common_widgets/homepage_banner_item_widget.dart';
import 'package:ecommerce_app/models/home_page_banner_item.dart';
import 'package:ecommerce_app/screens/auth/forgot_password_screen.dart';
import 'package:ecommerce_app/screens/auth/sign_up_screen.dart';
import 'package:ecommerce_app/screens/checkout/profile_screen.dart';
import 'package:ecommerce_app/screens/home/home_screen.dart';
import 'package:ecommerce_app/screens/products/trending_products_screen.dart';
import 'package:ecommerce_app/screens/splash/splash_screen.dart';
import 'package:ecommerce_app/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePageScreen extends StatefulWidget{
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen>{

  int selectedIndex = 0;

  final List<Widget> screens = [
    HomeScreen(),
    TrendingProductsScreen(),
    SplashScreen(nextScreen: HomePageScreen()),
    SplashScreen(nextScreen: HomePageScreen()),
    SplashScreen(nextScreen: HomePageScreen()),
  ];

  void onItemTapped(int index) {
    if (index < 0 || index >= screens.length) {
      return;
    }

    // Close keyboard before changing the page.
    FocusManager.instance.primaryFocus?.unfocus();

    if (selectedIndex == index) {
      return;
    }

    setState(() {
      selectedIndex = index;
    });
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      bottomNavigationBar: Container(
          height: 76,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color(0xFF000000).withOpacity(0.1), // Shadow color
                blurRadius: 1, // Softness of shadow
                offset: const Offset(0, -1), // Position of shadow (upwards)
              ),
            ],
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            onTap: onItemTapped,
            currentIndex: selectedIndex,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Color(0xFFEB3030),
            unselectedItemColor: Colors.black,
            selectedLabelStyle: TextStyle(
              fontSize: 12,
              fontWeight: .w500,
              fontFamily: "Montserrat"
            ),
            unselectedLabelStyle: TextStyle(
                fontSize: 12,
                fontWeight: .w400,
                fontFamily: "Montserrat"
            ),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  size: 24,
                ),
                label: "Home",

              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_border,
                  size: 20,
                ),
                label: "Wishlist",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  size: 20,
                ),
                label: "Cart"
                
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  size: 20,
                ),
                label: "Search",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings_outlined,
                  size: 20,
                ),
                label: "Setting",
              ),
            ],
          ),
        ),
      backgroundColor: Color(0xFFFDFDFD),
      body: Column(

        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(17,45,17,0),
            child: Container(
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
                    child: InkWell(
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_)=> ProfileScreen())
                        );
                      },
                      child: CircleAvatar(

                        backgroundImage: AssetImage(AppImagesName.profile_image_2),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
              children: [
                screens[selectedIndex]

              ],
            ),
          ),

        ],
      ),
    );

  }

}


