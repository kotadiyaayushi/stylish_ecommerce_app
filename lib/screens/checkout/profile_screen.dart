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

class ProfileScreen extends StatefulWidget{
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>{

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
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(16,16,16,57),
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  Column(
                    spacing: 28,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 98,
                            width: 103,
                            alignment: Alignment.center,
                            // color: Colors.yellow,
                            child: Stack(
                              children: [
                                Container(
                                  width: 96,
                                  height: 96,
                                  child: CircleAvatar(

                                    backgroundImage: AssetImage(AppImagesName.profile_image_2),
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: Container(
                                    width: 32,
                                    height: 32,
                                    child: Container(
                                      padding: EdgeInsets.all(3), // Border thickness
                                      decoration: BoxDecoration(
                                        color: Colors.white, // Border color
                                        shape: BoxShape.circle,
                                      ),
                                      child: CircleAvatar(

                                        backgroundColor: Color(0xFF4392F9),
                                        child: Icon(Icons.edit_outlined,color: Colors.white,size: 18,),
                                      ),
                                    ),
                                  ),
                                ),


                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        spacing: 34,
                        children: [
                          Column(
                            spacing: 20,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Personal Details",style: TextStyle(
                                      fontFamily: "Montserrat",
                                      fontSize: 18,
                                      fontWeight: .w600
                                  ),),
                                ],
                              ),
                              Column(
                                spacing: 15,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Email Address",style: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 12,
                                          fontWeight: .w400
                                      ),),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: TextField(
                                          enabled: false,
                                          decoration: InputDecoration(

                                              contentPadding: EdgeInsets.symmetric(
                                                  vertical: 10, horizontal: 10),
                                              labelText: 'aashifa@gmail.com',
                                              labelStyle: TextStyle(fontSize: 13,
                                                  color: Colors.black,
                                                  fontWeight: .w600,
                                                  fontFamily: "Montserrat"),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(8),
                                                borderSide: const BorderSide(
                                                  color: Color(0xFFC8C8C8), // same as your BoxDecoration border
                                                  width: 1,
                                                ),
                                              ),
                                              disabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(8),
                                                borderSide: BorderSide(
                                                  color: Color(0xFFC8C8C8),
                                                  width: 1,
                                                ),
                                              ),

                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(8),
                                                borderSide: const BorderSide(
                                                  color: Color(0xFFC8C8C8), // same as your BoxDecoration border
                                                  width: 1,
                                                ),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(8),
                                                borderSide: const BorderSide(
                                                  color: Color(0xFFC8C8C8),
                                                  width: 1,
                                                ),
                                              ),
                                              filled: true,
                                              fillColor: Colors.white

                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                spacing: 15,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Password",style: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 12,
                                          fontWeight: .w400
                                      ),),
                                    ],
                                  ),
                                  Column(
                                    spacing: 14,
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(
                                            child: TextField(
                                              enabled: false,
                                              decoration: InputDecoration(

                                                  contentPadding: EdgeInsets.symmetric(
                                                      vertical: 10, horizontal: 10),
                                                  labelText: '1234567890',
                                                  labelStyle: TextStyle(fontSize: 13,
                                                      color: Colors.black,
                                                      fontWeight: .w600,
                                                      fontFamily: "Montserrat"),
                                                  enabledBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(8),
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFC8C8C8), // same as your BoxDecoration border
                                                      width: 1,
                                                    ),
                                                  ),
                                                  disabledBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(8),
                                                    borderSide: BorderSide(
                                                      color: Color(0xFFC8C8C8),
                                                      width: 1,
                                                    ),
                                                  ),

                                                  border: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(8),
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFC8C8C8), // same as your BoxDecoration border
                                                      width: 1,
                                                    ),
                                                  ),
                                                  focusedBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(8),
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFC8C8C8),
                                                      width: 1,
                                                    ),
                                                  ),
                                                  filled: true,
                                                  fillColor: Colors.white

                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          InkWell(
                                            onTap: (){
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(builder: (_)=> ForgotPasswordScreen())
                                              );
                                            },
                                            child: Text("Change Password",style: TextStyle(
                                                fontFamily: "Montserrat",
                                                fontWeight: .w400,
                                                color: Color(0xFFF83758),
                                                fontSize: 12,
                                              decoration: TextDecoration.underline,
                                              decorationColor: Color(0xFFF83758),
                                              decorationStyle: TextDecorationStyle.solid,

                                            ),

                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),

                          Divider(
                            color: Color(0xFFC4C4C4),
                          ),
                          Column(

                            spacing: 20,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Business Address Details",style: TextStyle(
                                      fontFamily: "Montserrat",
                                      fontSize: 18,
                                      fontWeight: .w600
                                  ),),
                                ],
                              ),
                              Column(
                                spacing: 15,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Pincode",style: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 12,
                                          fontWeight: .w400
                                      ),),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: TextField(
                                          enabled: false,
                                          decoration: InputDecoration(

                                              contentPadding: EdgeInsets.symmetric(
                                                  vertical: 10, horizontal: 10),
                                              labelText: '450116',
                                              labelStyle: TextStyle(fontSize: 13,
                                                  color: Colors.black,
                                                  fontWeight: .w600,
                                                  fontFamily: "Montserrat"),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(8),
                                                borderSide: const BorderSide(
                                                  color: Color(0xFFC8C8C8), // same as your BoxDecoration border
                                                  width: 1,
                                                ),
                                              ),
                                              disabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(8),
                                                borderSide: BorderSide(
                                                  color: Color(0xFFC8C8C8),
                                                  width: 1,
                                                ),
                                              ),

                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(8),
                                                borderSide: const BorderSide(
                                                  color: Color(0xFFC8C8C8), // same as your BoxDecoration border
                                                  width: 1,
                                                ),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(8),
                                                borderSide: const BorderSide(
                                                  color: Color(0xFFC8C8C8),
                                                  width: 1,
                                                ),
                                              ),
                                              filled: true,
                                              fillColor: Colors.white

                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                spacing: 15,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Address",style: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 12,
                                          fontWeight: .w400
                                      ),),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: TextField(
                                          enabled: false,
                                          decoration: InputDecoration(

                                              contentPadding: EdgeInsets.symmetric(
                                                  vertical: 10, horizontal: 10),
                                              labelText: '216 St Paul\'s Rd, ',
                                              labelStyle: TextStyle(fontSize: 13,
                                                  color: Colors.black,
                                                  fontWeight: .w600,
                                                  fontFamily: "Montserrat"),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(8),
                                                borderSide: const BorderSide(
                                                  color: Color(0xFFC8C8C8), // same as your BoxDecoration border
                                                  width: 1,
                                                ),
                                              ),
                                              disabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(8),
                                                borderSide: BorderSide(
                                                  color: Color(0xFFC8C8C8),
                                                  width: 1,
                                                ),
                                              ),

                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(8),
                                                borderSide: const BorderSide(
                                                  color: Color(0xFFC8C8C8), // same as your BoxDecoration border
                                                  width: 1,
                                                ),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(8),
                                                borderSide: const BorderSide(
                                                  color: Color(0xFFC8C8C8),
                                                  width: 1,
                                                ),
                                              ),
                                              filled: true,
                                              fillColor: Colors.white

                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                spacing: 15,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("City",style: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 12,
                                          fontWeight: .w400
                                      ),),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: TextField(
                                          enabled: false,
                                          decoration: InputDecoration(

                                              contentPadding: EdgeInsets.symmetric(
                                                  vertical: 10, horizontal: 10),
                                              labelText: 'London',
                                              labelStyle: TextStyle(fontSize: 13,
                                                  color: Colors.black,
                                                  fontWeight: .w600,
                                                  fontFamily: "Montserrat"),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(8),
                                                borderSide: const BorderSide(
                                                  color: Color(0xFFC8C8C8), // same as your BoxDecoration border
                                                  width: 1,
                                                ),
                                              ),
                                              disabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(8),
                                                borderSide: BorderSide(
                                                  color: Color(0xFFC8C8C8),
                                                  width: 1,
                                                ),
                                              ),
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(8),
                                                borderSide: const BorderSide(
                                                  color: Color(0xFFC8C8C8), // same as your BoxDecoration border
                                                  width: 1,
                                                ),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(8),
                                                borderSide: const BorderSide(
                                                  color: Color(0xFFC8C8C8),
                                                  width: 1,
                                                ),
                                              ),
                                              filled: true,
                                              fillColor: Colors.white

                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                spacing: 15,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("State",style: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 12,
                                          fontWeight: .w400
                                      ),),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(

                                        child: Container(
                                          height:45,
                                          
                                          child: DropdownMenu<String>(

                                            width: double.infinity,
                                            dropdownMenuEntries: items
                                                .map((item) => DropdownMenuEntry<String>(
                                              value: item,
                                              label: item,

                                            )).toList(),

                                            // Initial selected value
                                            initialSelection: selectedValue,

                                            // Called when user selects an item
                                            onSelected: (value) {
                                              setState(() {
                                                selectedValue = value;
                                              });
                                            },


                                            label: const Text('N1 2LL,',style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: .w600,
                                                fontFamily: "Montserrat"
                                            ),),

                                            hintText: 'Choose one...',
                                            trailingIcon: const Icon(Icons.keyboard_arrow_down_outlined),
                                            textStyle: const TextStyle(fontSize: 16, color: Colors.black),
                                            menuStyle: MenuStyle(
                                              backgroundColor: MaterialStateProperty.all(Colors.white),
                                              elevation: MaterialStateProperty.all(4),
                                              padding: MaterialStateProperty.all(
                                                const EdgeInsets.symmetric(vertical: 8),
                                              ),
                                            ),

                                            // Width of the dropdown menu


                                            // Controller (optional)
                                            controller: TextEditingController(),

                                            // Enable/disable
                                            enabled: false,

                                            // Keyboard type for search
                                            keyboardType: TextInputType.text,
                                            inputDecorationTheme: InputDecorationTheme(
                                              constraints: const BoxConstraints(
                                                minHeight: 48,
                                                maxHeight: 48,
                                              ),
                                              disabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(8),
                                                borderSide: BorderSide(
                                                  color: Color(0xFFC8C8C8),
                                                  width: 1,
                                                ),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(8),
                                                borderSide: BorderSide(
                                                  color: Colors.yellow,
                                                  width: 1,
                                                ),
                                              ),

                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),

                            ],
                          ),

                          Divider(
                            color: Color(0xFFC4C4C4),
                          ),
                          Column(
                            spacing: 20,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Bank Account Details",style: TextStyle(
                                      fontFamily: "Montserrat",
                                      fontSize: 18,
                                      fontWeight: .w600
                                  ),),
                                ],
                              ),
                              Column(
                                spacing: 15,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Bank Account Number",style: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 12,
                                          fontWeight: .w400
                                      ),),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: TextField(
                                          enabled: false,
                                          decoration: InputDecoration(

                                              contentPadding: EdgeInsets.symmetric(
                                                  vertical: 10, horizontal: 10),
                                              labelText: '204356XXXXXXX',
                                              labelStyle: TextStyle(fontSize: 13,
                                                  color: Colors.black,
                                                  fontWeight: .w600,
                                                  fontFamily: "Montserrat"),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(8),
                                                borderSide: const BorderSide(
                                                  color: Color(0xFFC8C8C8), // same as your BoxDecoration border
                                                  width: 1,
                                                ),
                                              ),
                                              disabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(8),
                                                borderSide: BorderSide(
                                                  color: Color(0xFFC8C8C8),
                                                  width: 1,
                                                ),
                                              ),

                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(8),
                                                borderSide: const BorderSide(
                                                  color: Color(0xFFC8C8C8), // same as your BoxDecoration border
                                                  width: 1,
                                                ),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(8),
                                                borderSide: const BorderSide(
                                                  color: Color(0xFFC8C8C8),
                                                  width: 1,
                                                ),
                                              ),
                                              filled: true,
                                              fillColor: Colors.white

                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                spacing: 15,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Account Holder’s Name",style: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 12,
                                          fontWeight: .w400
                                      ),),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: TextField(
                                          enabled: false,
                                          decoration: InputDecoration(

                                              contentPadding: EdgeInsets.symmetric(
                                                  vertical: 10, horizontal: 10),
                                              labelText: 'Abhiraj Sisodiya',
                                              labelStyle: TextStyle(fontSize: 13,
                                                  color: Colors.black,
                                                  fontWeight: .w600,
                                                  fontFamily: "Montserrat"),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(8),
                                                borderSide: const BorderSide(
                                                  color: Color(0xFFC8C8C8), // same as your BoxDecoration border
                                                  width: 1,
                                                ),
                                              ),
                                              disabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(8),
                                                borderSide: BorderSide(
                                                  color: Color(0xFFC8C8C8),
                                                  width: 1,
                                                ),
                                              ),

                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(8),
                                                borderSide: const BorderSide(
                                                  color: Color(0xFFC8C8C8), // same as your BoxDecoration border
                                                  width: 1,
                                                ),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(8),
                                                borderSide: const BorderSide(
                                                  color: Color(0xFFC8C8C8),
                                                  width: 1,
                                                ),
                                              ),
                                              filled: true,
                                              fillColor: Colors.white

                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                spacing: 15,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("IFSC Code",style: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 12,
                                          fontWeight: .w400
                                      ),),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: TextField(
                                          enabled: false,
                                          decoration: InputDecoration(

                                              contentPadding: EdgeInsets.symmetric(
                                                  vertical: 10, horizontal: 10),
                                              labelText: 'SBIN00428',
                                              labelStyle: TextStyle(fontSize: 13,
                                                  color: Colors.black,
                                                  fontWeight: .w600,
                                                  fontFamily: "Montserrat"),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(8),
                                                borderSide: const BorderSide(
                                                  color: Color(0xFFC8C8C8), // same as your BoxDecoration border
                                                  width: 1,
                                                ),
                                              ),
                                              disabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(8),
                                                borderSide: BorderSide(
                                                  color: Color(0xFFC8C8C8),
                                                  width: 1,
                                                ),
                                              ),
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(8),
                                                borderSide: const BorderSide(
                                                  color: Color(0xFFC8C8C8), // same as your BoxDecoration border
                                                  width: 1,
                                                ),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(8),
                                                borderSide: const BorderSide(
                                                  color: Color(0xFFC8C8C8),
                                                  width: 1,
                                                ),
                                              ),
                                              filled: true,
                                              fillColor: Colors.white

                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),


                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Container(
                                  height: 52,

                                  decoration: BoxDecoration(
                                      color: Color(0xFFF83758),
                                    borderRadius: BorderRadius.circular(8)
                                  ),

                                  child: Center(
                                    child: Text("Save",style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontFamily: "Montserrat",
                                        fontSize: 15,
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


