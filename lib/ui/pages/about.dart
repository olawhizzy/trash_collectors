import 'package:flutter/material.dart';
//import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:webview_flutter/webview_flutter.dart';
class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
      ),
      body: Container(
        child: WebView(
          initialUrl: 'https://www.trash-collectors.com/about',
        ),
      ),
    );
/*
    return WebviewScaffold(
      url: 'https://www.trash-collectors.com/about',
      //withZoom: true,
      withLocalStorage: true,
      //hidden: true,
      appBar: AppBar(
        title: Text('About Us'),
      ),
      initialChild: Container(
        color: Colors.white,
        child: Center(
          child: Lottie.network('https://assets9.lottiefiles.com/packages/lf20_YMim6w.json', width: 70.w),
        ),
      ),
    );
*/
  }
}
