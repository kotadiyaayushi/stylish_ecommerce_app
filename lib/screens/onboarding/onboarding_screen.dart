import 'package:ecommerce_app/constants/app_images_name.dart';
import 'package:ecommerce_app/helpers/common_widgets/onboard_item_widget.dart';
import 'package:ecommerce_app/models/onboard_item.dart';
import 'package:ecommerce_app/screens/auth/login_screen.dart';
import 'package:ecommerce_app/screens/home/get_started_screen.dart';
import 'package:ecommerce_app/screens/home/home_page_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatefulWidget{
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen>{

  int currentPage = 0;
  PageController pageController = PageController();

  List<OnboardItem> pages = [
    OnboardItem(
        title: "Choose Products",
        subTitle: "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
        image: AppImagesName.onboard_image_1),
    OnboardItem(
        title: "Make Payment",
        subTitle: "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
        image: AppImagesName.onboard_image_2),
    OnboardItem(
        title: "Get Your Order",
        subTitle: "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
        image: AppImagesName.onboard_image_3),

  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  void next(){
    if(currentPage<pages.length-1){
      pageController.nextPage(duration: Duration(milliseconds: 300), curve: Curves.ease);
    }else{
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_)=> GetStartedScreen())
      );
    }
  }
  void prev(){
    if(currentPage<pages.length){
      pageController.previousPage(duration: Duration(milliseconds: 300), curve: Curves.ease);
    }
  }
  void skip(){
    if(currentPage<pages.length-1){
      pageController.jumpToPage(2);
    }
  }


  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(17,45,17,0),
        child: Column(

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    text: "${currentPage+1}",
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 18


                    ),
                    children: [
                      TextSpan(
                        text: "/3",
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFA0A0A1),
                          fontSize: 18
                        )
                      )
                    ]
                  ),



                ),
                InkWell(
                  borderRadius: BorderRadius.circular(4),
                  onTap: skip,
                  child: Text("Skip",textAlign: TextAlign.end,
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: "Montserrat",
                        fontWeight: .w600

                    ),

                  ),
                )
              ],
            ),
            Flexible(
              child: PageView.builder(itemCount: pages.length,
                controller: pageController,
                onPageChanged: (value){
                setState(() {
                  currentPage = value;
                });
                },
                itemBuilder: (context,index){
                return OnboardItemWidget(item: pages[index]);
                },

              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0,0,0,22),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(onTap: prev,
                    borderRadius: BorderRadius.circular(4),
                    child: Text(currentPage == 0?"":"Prev",
                    style: TextStyle(
                        color: Color(0xFFC4C4C4),
                        fontFamily: "Montserrat",
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                    ),

                  ),


                  ),
                  Row(
                  
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 10,
                    children: List.generate(pages.length, (index){
                        return AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          height: 10,
                          width: currentPage == index? 40:10,
                          decoration: BoxDecoration(
                  
                            color: currentPage==index?Color(0xFF17223B):Color(0xFFA8A8A9),
                            borderRadius: BorderRadius.circular(8)
                          ),
                        );
                    })
                  
                  ),
                  InkWell(onTap: next, child: Text(currentPage == pages.length - 1?"Get Started":"Next",
                    style: TextStyle(
                      color: Color(0xFFF83758),
                      fontFamily: "Montserrat",
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                  )),
                ],
              ),
            )
          ],
        ),
      ),
    );

  }
}





