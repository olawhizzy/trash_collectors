import 'package:flutter/material.dart';
import 'package:trash_collectors/ui/shared/strings.dart';
import 'package:trash_collectors/ui/shared/variables.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class AboutMainPage extends StatefulWidget {
  const AboutMainPage({Key? key}) : super(key: key);

  @override
  _AboutMainPageState createState() => _AboutMainPageState();
}

class _AboutMainPageState extends State<AboutMainPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: Text('About Us'),
              elevation: 0.0,
              centerTitle: true,
            ),
              body: ListView(
                children: [
                  Container(
                    padding: EdgeInsets.all(3.w),
                    child: Column(
                      children: [
                        Image.asset('assets/logo.png', width: 100.w,),
                        SizedBox(height: 3.h,),
                        Text('WE ARE TRASH COLLECTORS.', style: black26MediumTextStyle,textAlign: TextAlign.left,),
                        SizedBox(height: 1.h,),
                        Text(topAbout, style: black16RegularTextStyle, textAlign: TextAlign.left,),
                        SizedBox(height: 1.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => AboutMainPage())),
                              child: Container(
                                height: 60,
                                width: 50.w,
                                color: primaryColor,
                                alignment: Alignment.center,
                                child: Text('Request A Free Quote', style: white16RegularTextStyle,),
                              ),
                            )
                          ],
                        ),

                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(3.w),
                    color: primaryColor,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 3.h,),
                        Text('WHY CHOOSE TRASH COLLECTORS?', style: black26MediumTextStyle.copyWith(color: whiteColor),),
                        SizedBox(height: 1.h,),
                        Text.rich(
                          TextSpan(
                            // with no TextStyle it will have default text style
                            style: TextStyle(color: whiteColor,fontWeight: FontWeight.bold, fontSize: 16),
                            text: savetimeHeade,
                            children: <TextSpan>[
                              TextSpan(text: savetime, style: TextStyle(fontWeight: FontWeight.normal)),
                            ],
                          ),
                        ),
                        SizedBox(height: 1.h,),
                        Text.rich(
                          TextSpan(
                            // with no TextStyle it will have default text style
                            style: TextStyle(color: whiteColor,fontWeight: FontWeight.bold,fontSize: 16),
                            text: worrylessHeader,
                            children: <TextSpan>[
                              TextSpan(text: worryless, style: TextStyle(fontWeight: FontWeight.normal)),
                            ],
                          ),
                        ),
                        SizedBox(height: 1.h,),
                        Text.rich(
                          TextSpan(
                            // with no TextStyle it will have default text style
                            style: TextStyle(color: whiteColor,fontWeight: FontWeight.bold,fontSize: 16),
                            text: customizheader,
                            children: <TextSpan>[
                              TextSpan(text: customiz, style: TextStyle(fontWeight: FontWeight.normal)),
                            ],
                          ),
                        ),
                        SizedBox(height: 1.h,),
                        Text.rich(
                          TextSpan(
                            // with no TextStyle it will have default text style
                            style: TextStyle(color: whiteColor,fontWeight: FontWeight.bold,fontSize: 16),
                            text: increazHeader,
                            children: <TextSpan>[
                              TextSpan(text: increaz, style: TextStyle(fontWeight: FontWeight.normal)),
                            ],
                          ),
                        ),
                        SizedBox(height: 1.h,),
                        Text.rich(
                          TextSpan(
                            // with no TextStyle it will have default text style
                            style: TextStyle(color: whiteColor,fontWeight: FontWeight.bold,fontSize: 16),
                            text: dizcounHeader,
                            children: <TextSpan>[
                              TextSpan(text: dizcoun, style: TextStyle(fontWeight: FontWeight.normal)),
                            ],
                          ),
                        ),
                        SizedBox(height: 1.h,),
                        Text(enlist, style: white16MediumTextStyle,),
                        //Text(whyUs, style: black16RegularTextStyle.copyWith(color: whiteColor), textAlign: TextAlign.left,),
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
                        Text('PRICING STRATEGY', style: black26MediumTextStyle,),
                        SizedBox(height: 1.h,),
                        Text(priceStregy, style: black16RegularTextStyle, textAlign: TextAlign.left,),
                        //SizedBox(height: 1.h,),
                        SizedBox(height: 1.h,),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => AboutMainPage())),
                        child: Container(
                          height: 60,
                          width: 50.w,
                          color: primaryColor,
                          alignment: Alignment.center,
                          child: Text('Request A Free Quote', style: white16RegularTextStyle,),
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
