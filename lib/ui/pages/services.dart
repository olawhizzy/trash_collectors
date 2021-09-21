import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:webview_flutter/webview_flutter.dart';
class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Services'),
      ),
      body: Container(
        child: WebView(
          initialUrl: 'https://www.trash-collectors.com/services',
        ),
      ),
    );

/*
    return WebviewScaffold(
      url: 'https://www.trash-collectors.com/services',
      //withZoom: true,
      withLocalStorage: true,
      hidden: true,
      appBar: AppBar(
        title: Text('Services'),
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
