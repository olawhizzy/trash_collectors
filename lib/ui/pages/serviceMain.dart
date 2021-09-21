import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:trash_collectors/ui/pages/services.dart';
import 'package:trash_collectors/ui/shared/strings.dart';
import 'package:trash_collectors/ui/shared/variables.dart';
class ServiceMain extends StatefulWidget {
  const ServiceMain({Key? key}) : super(key: key);

  @override
  _ServiceMainState createState() => _ServiceMainState();
}

class _ServiceMainState extends State<ServiceMain> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      child: SafeArea(
          child: Scaffold(
              appBar: AppBar(
                title: Text('Services'),
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
                        Text('PREMIUM VALET TRASH & RECYCLING SERVICE.', style: black26MediumTextStyle,textAlign: TextAlign.center,),
                        SizedBox(height: 2.h,),
                        Text(premiumTravel, style: black18MediumTextStyle, textAlign: TextAlign.center,),
                        SizedBox(height: 2.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Services())),
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

                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ServiceMain())),
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
