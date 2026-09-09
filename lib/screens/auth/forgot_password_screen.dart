import 'package:ecommerce_app/screens/auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ecommerce_app/constants/app_images_name.dart';
import 'package:ecommerce_app/theme/app_text_styles.dart';

class ForgotPasswordScreen extends StatefulWidget{
  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen>{


  @override
  void initState() {
    // TODO: implement initState
    super.initState();



  }


  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(32,45,26,0),
          child: IntrinsicHeight(
            child: Column(

              children: [
                Expanded(

                  flex: 3,
                  child: Container(
                    // color: Colors.red,
                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(

                            // color: Colors.yellow,
                            alignment: Alignment.centerLeft,
                            child: Text("Forgot\npassword?",style: AppTextStyles.authHeadingText),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                            // color: Colors.green,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                              children: [
                                Column(
                                  spacing: 20,
                                  children: [

                                    Row(
                                      children: [
                                        Expanded(
                                          child: TextField(

                                            decoration: InputDecoration(

                                                contentPadding: const EdgeInsets.symmetric(
                                                    vertical: 15, horizontal: 15),
                                                labelText: 'Enter your email address',
                                                labelStyle: const TextStyle(color: Color(0xFF676767),fontSize: 12,
                                                    fontWeight: .w500,
                                                    fontFamily: "Montserrat"),
                                                // prefixIcon: Padding(
                                                //   padding: const EdgeInsets.all(10),
                                                //   child: Image.asset(AppImagesName.password),
                                                // ),
                                                prefixIcon: Icon(Icons.mail,color: Color(0xFF626262),),
                                                enabledBorder: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                    color: Color(0xFFA8A8A9), // same as your BoxDecoration border
                                                    width: 1,
                                                  ),
                                                ),
                                                focusedBorder: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                    color: Color(0xFFA8A8A9),
                                                    width: 1,
                                                  ),
                                                ),
                                                filled: true,
                                                fillColor: Color(0xFFF3F3F3)

                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        InkWell(
                                          child: Text.rich(
                                              TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: '* ',
                                                      style: TextStyle(
                                                        fontFamily: "Montserrat",
                                                        fontWeight: .w400,
                                                        fontSize: 14,
                                                        color: Color(0xFFF83758),



                                                      ),
                                                    ),
                                                    TextSpan(
                                                        text: 'We will send you a message to set or\nreset your new password ',
                                                        style: TextStyle(
                                                          fontFamily: "Montserrat",
                                                          fontWeight: .w400,
                                                          fontSize: 14,
                                                          color: Color(0xFF575757),

                                                        )
                                                    ),

                                                  ]
                                              )

                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(

                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              height: 55,

                              decoration: BoxDecoration(
                                  color: Color(0xFFF83758)
                              ),

                              child: Center(
                                child: Text("Submit",style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontFamily: "Montserrat",
                                    fontSize: 20,
                                    fontWeight: .w600

                                ),),
                              ),
                            ),
                          )
                        ],
                      ),

                    ],


                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );

  }
}


