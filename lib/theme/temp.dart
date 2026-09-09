import 'package:ecommerce_app/constants/app_images_name.dart';
import 'package:ecommerce_app/screens/auth/forgot_password_screen.dart';
import 'package:ecommerce_app/screens/auth/sign_up_screen.dart';
import 'package:ecommerce_app/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePageScreen extends StatefulWidget {
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(17, 45, 17, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 32,
                  width: 32,
                  child: CircleAvatar(
                    backgroundColor: Color(0xFFF2F2F2),
                    child: Icon(
                      Icons.menu_rounded,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                ),
                Container(
                  height: 32,

                  child: Row(
                    spacing: 9,
                    children: [
                      Image.asset(
                        AppImagesName.app_logo,
                        height: 30,
                        width: 38,
                      ),
                      Text(
                        "Stylish",
                        style: TextStyle(
                          fontFamily: "Libre_Caslon_Text",
                          fontSize: 18,
                          fontWeight: .w700,
                          color: Color(0xFF4392F9),
                        ),
                      ),
                    ],
                  ),
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

            // Fixed Row
            Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("All"),
                  Text("Men"),
                  Text("Women"),
                  Text("Kids"),
                ],
              ),
            ),

            // Only this part will scroll
            Expanded(
              child: ListView(
                children: [
                  Container(height: 200, color: Colors.blue),

                  Container(height: 200, color: Colors.red),

                  Container(height: 200, color: Colors.green),

                  Container(height: 200, color: Colors.orange),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
