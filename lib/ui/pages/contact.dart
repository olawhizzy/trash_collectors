import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: 'https://www.trash-collectors.com/contact',
      //withZoom: true,
      withLocalStorage: true,
      appCacheEnabled: true,
      //hidden: true,
      initialChild: Container(
        color: Colors.white,
        child: Center(
          child: Lottie.network('https://assets9.lottiefiles.com/packages/lf20_YMim6w.json', width: 70.w),
        ),
      ),
    );
  }
}
