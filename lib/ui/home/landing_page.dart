import 'package:flutter/material.dart';
import 'package:trash_collectors/ui/home/home_page.dart';
import 'package:trash_collectors/ui/shared/strings.dart';
import 'package:trash_collectors/ui/shared/variables.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      child: SafeArea(
          child: Scaffold(
            body: ListView(
              children: [
                Container(
                  padding: EdgeInsets.all(3.w),
                  child: Column(
                    children: [
                      Image.asset('assets/trashMan.jpg', width: 100.w,),
                      SizedBox(height: 3.h,),
                      Text('Trash Collectors, LLC.', style: black26MediumTextStyle,textAlign: TextAlign.left,),
                      SizedBox(height: 1.h,),
                      Text(topLanding, style: black16RegularTextStyle, textAlign: TextAlign.left,),

                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(3.w),
                  color: primaryColor,
                  child: Column(
                    children: [
                      SizedBox(height: 3.h,),
                      Text('Why Choose Trash Collectors?', style: black26MediumTextStyle.copyWith(color: whiteColor),),
                      SizedBox(height: 1.h,),
                      Text(whyUs, style: black16RegularTextStyle.copyWith(color: whiteColor), textAlign: TextAlign.left,),
                      SizedBox(height: 1.h,),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(3.w),
                  //color: primaryColor,
                  child: Column(
                    children: [
                      SizedBox(height: 3.h,),
                      Text('OUR MISSION', style: black26MediumTextStyle,),
                      SizedBox(height: 1.h,),
                      Text(ourMission, style: black16RegularTextStyle, textAlign: TextAlign.left,),
                      //SizedBox(height: 1.h,),
                      SizedBox(height: 3.h,),
                      Text('OUR VISION', style: black26MediumTextStyle,),
                      SizedBox(height: 1.h,),
                      Text(ourVision, style: black16RegularTextStyle, textAlign: TextAlign.left,),
                      SizedBox(height: 1.h,),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(3.w),
                  color: primaryColor,
                  child: Column(
                    children: [
                      SizedBox(height: 3.h,),
                      Text('VALUE PROPOSITION', style: black26MediumTextStyle.copyWith(color: whiteColor),),
                      SizedBox(height: 1.h,),
                      Text(value1, style: black16RegularTextStyle.copyWith(color: whiteColor), textAlign: TextAlign.left,),
                      SizedBox(height: 1.h,),
                      Text(value2, style: black16RegularTextStyle.copyWith(color: whiteColor), textAlign: TextAlign.left,),
                      SizedBox(height: 1.h,),
                      Text(value3, style: black16RegularTextStyle.copyWith(color: whiteColor), textAlign: TextAlign.left,),
                      SizedBox(height: 1.h,),
                      Text(value4, style: black16RegularTextStyle.copyWith(color: whiteColor), textAlign: TextAlign.left,),
                      SizedBox(height: 1.h,),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(3.w),
                  //color: primaryColor,
                  child: Column(
                    children: [
                      SizedBox(height: 3.h,),
                      Text('OUR TEAM', style: black26MediumTextStyle.copyWith(color: blackColor),),
                      SizedBox(height: 1.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            color: Colors.black12,
                            width: 45.w,
                            height: 350,
                            child: Column(
                              children: [
                                Image.asset('assets/Teamwork.jpg', width: 60.w,),
                                SizedBox(height: 1.5.h,),
                                Container(
                                  padding: EdgeInsets.all(1.h),
                                    child: Text(team1, style: black16RegularTextStyle, textAlign: TextAlign.left,)),
                              ],
                            ),
                          ),
                          Container(
                            color: Colors.black12,
                            width: 45.w,
                            height: 350,
                            child: Column(
                              children: [
                                Image.asset('assets/team02.jpg', width: 60.w,),
                                SizedBox(height: 1.5.h,),
                                Container(
                                  padding: EdgeInsets.all(1.h),
                                    child: Text(team2, style: black16RegularTextStyle, textAlign: TextAlign.left,)),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(3.w),
                  //color: primaryColor,
                  child: Column(
                    children: [
                      SizedBox(height: 3.h,),
                      Text('COMPETITIVE ADVANTAGES', style: black26MediumTextStyle.copyWith(color: blackColor),),
                      SizedBox(height: 1.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            //color: Colors.black12,
                            width: 45.w,
                            //height: 250,
                            child: Column(
                              children: [
                                Image.asset('assets/services.png', width: 50.w,),
                                SizedBox(height: 1.5.h,),
                                Container(
                                  padding: EdgeInsets.all(1.h),
                                    child: Text('Quality Services', style: black16RegularTextStyle, textAlign: TextAlign.left,)),
                              ],
                            ),
                          ),
                          Container(
                            //color: Colors.black12,
                            width: 45.w,
                            //height: 250,
                            child: Column(
                              children: [
                                Image.asset('assets/satisfaction1.png', width: 50.w,),
                                SizedBox(height: 1.5.h,),
                                Container(
                                  padding: EdgeInsets.all(1.h),
                                    child: Text('Satisfaction \n Guaranteed', style: black16RegularTextStyle, textAlign: TextAlign.left,)),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            //color: Colors.black12,
                            width: 45.w,
                            //height: 250,
                            child: Column(
                              children: [
                                Image.asset('assets/hand.png', width: 50.w,),
                                SizedBox(height: 1.5.h,),
                                Container(
                                  padding: EdgeInsets.all(1.h),
                                    child: Text('Personalized Services', style: black16RegularTextStyle, textAlign: TextAlign.left,)),
                              ],
                            ),
                          ),
                          Container(
                            //color: Colors.black12,
                            width: 45.w,
                            //height: 250,
                            child: Column(
                              children: [
                                Image.asset('assets/affordable.png', width: 50.w,),
                                SizedBox(height: 1.5.h,),
                                Container(
                                  padding: EdgeInsets.all(1.h),
                                    child: Text('Affordable Price', style: black16RegularTextStyle, textAlign: TextAlign.left,)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage())),
                      child: Container(
                        height: 60,
                        width: 50.w,
                        color: primaryColor,
                        alignment: Alignment.center,
                        child: Text('Read More', style: white16RegularTextStyle,),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 2.h,),
              ],
            )
          )),
    );
  }
}
