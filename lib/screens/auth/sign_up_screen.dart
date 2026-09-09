import 'package:ecommerce_app/screens/auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ecommerce_app/constants/app_images_name.dart';
import 'package:ecommerce_app/theme/app_text_styles.dart';

class SignUpScreen extends StatefulWidget{
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen>{


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
                  flex: 5,
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
                            child: Text("Create an\naccount!",style: AppTextStyles.authHeadingText),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Column(
                           spacing: 30,

                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: TextField(

                                      decoration: InputDecoration(

                                          contentPadding: const EdgeInsets.symmetric(
                                              vertical: 15, horizontal: 15),
                                          labelText: 'Username or Email',
                                          labelStyle: const TextStyle(color: Color(0xFF676767),fontSize: 12,
                                              fontWeight: .w500,
                                              fontFamily: "Montserrat"

                                          ),
                                          // prefixIcon: Padding(
                                          //   padding: const EdgeInsets.all(10),
                                          //   child: SvgPicture.asset(AppImagesName.user_login),
                                          // ),
                                          prefixIcon: Icon(Icons.person,color: Color(0xFF626262)),
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
                                    children: [
                                      Expanded(
                                        child: TextField(

                                          decoration: InputDecoration(

                                              contentPadding: const EdgeInsets.symmetric(
                                                  vertical: 15, horizontal: 15),
                                              labelText: 'Password',
                                              labelStyle: const TextStyle(color: Color(0xFF676767),fontSize: 12,
                                                  fontWeight: .w500,
                                                  fontFamily: "Montserrat"),
                                              // prefixIcon: Padding(
                                              //   padding: const EdgeInsets.all(10),
                                              //   child: Image.asset(AppImagesName.password),
                                              // ),
                                              prefixIcon: Icon(Icons.lock,color: Color(0xFF626262),),
                                              suffixIcon: Icon(Icons.remove_red_eye_outlined,color: Color(0xFF626262)),
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
                                              labelText: 'ConfirmPassword',
                                              labelStyle: const TextStyle(color: Color(0xFF676767),fontSize: 12,
                                                  fontWeight: .w500,
                                                  fontFamily: "Montserrat"),
                                              // prefixIcon: Padding(
                                              //   padding: const EdgeInsets.all(10),
                                              //   child: Image.asset(AppImagesName.password),
                                              // ),
                                              prefixIcon: Icon(Icons.lock,color: Color(0xFF626262),),
                                              suffixIcon: Icon(Icons.remove_red_eye_outlined,color: Color(0xFF626262)),
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
                                                    text: 'By clicking the ',
                                                    style: TextStyle(
                                                      fontFamily: "Montserrat",
                                                      fontWeight: .w400,
                                                      fontSize: 14,
                                                      color: Color(0xFF575757),



                                                    ),
                                                  ),
                                                  TextSpan(
                                                      text: 'Register ',
                                                      style: TextStyle(
                                                          fontFamily: "Montserrat",
                                                          fontWeight: .w600,
                                                          fontSize: 14,
                                                          color: Color(0xFFF83758),

                                                      )
                                                  ),
                                                  TextSpan(
                                                      text: 'button, you\nagree to the public offer',
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
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    // color: Colors.yellow,
                    child: Column(

                      spacing: 10,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex:3,
                          child: Container(
                            // color: Colors.grey,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 55,

                                    decoration: BoxDecoration(
                                        color: Color(0xFFF83758)
                                    ),

                                    child: Center(
                                      child: Text("Create Account",style: TextStyle(
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

                          ),
                        ),
                        Expanded(
                          flex: 7,
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              spacing: 20,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("- OR Continue with -",style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: .w500,
                                        fontFamily: "Montserrat",
                                        color: Color(0xFF575757)
                                    ),)
                                  ],
                                ),
                                Row(
                                  spacing: 10,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                    Container(

                                      padding: const EdgeInsets.all(1),
                                      decoration: BoxDecoration(
                                        color: Color(0xFFF83758),
                                        shape: BoxShape.circle,
                                      ),
                                      child: CircleAvatar(
                                        backgroundColor: Color(0xFFFCF3F6),
                                        radius: 25,
                                        child: Image.asset(AppImagesName.google_icon,height: 25,width: 25,),
                                      ),
                                    ),
                                    Container(

                                      padding: const EdgeInsets.all(1),
                                      decoration: BoxDecoration(
                                        color: Color(0xFFF83758),
                                        shape: BoxShape.circle,
                                      ),
                                      child: CircleAvatar(
                                        backgroundColor: Color(0xFFFCF3F6),
                                        radius: 25,
                                        child: Image.asset(AppImagesName.apple_icon,height: 25,width: 25,),
                                      ),
                                    ),
                                    Container(

                                      padding: const EdgeInsets.all(1),
                                      decoration: BoxDecoration(
                                        color: Color(0xFFF83758),
                                        shape: BoxShape.circle,
                                      ),
                                      child: CircleAvatar(
                                        backgroundColor: Color(0xFFFCF3F6),
                                        radius: 25,
                                        child: Image.asset(AppImagesName.facebook_icon,height: 25,width: 25,),
                                      ),
                                    ),

                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: (){
                                        Navigator.of(context).push(
                                            MaterialPageRoute(builder: (_)=> LoginScreen())
                                        );
                                      },
                                      child: Text.rich(
                                          TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'I Already Have an Account ',
                                                  style: TextStyle(
                                                    fontFamily: "Montserrat",
                                                    fontWeight: .w400,
                                                    fontSize: 14,
                                                    color: Color(0xFF575757),



                                                  ),
                                                ),
                                                TextSpan(
                                                    text: 'Login',
                                                    style: TextStyle(
                                                        fontFamily: "Montserrat",
                                                        fontWeight: .w600,
                                                        fontSize: 14,
                                                        color: Color(0xFFF83758),
                                                        decoration: TextDecoration.underline
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
                          ),
                        )
                      ],


                    ),
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


