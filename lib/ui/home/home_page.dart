import 'package:flutter/material.dart';
//import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:webview_flutter/webview_flutter.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    WebView.platform = SurfaceAndroidWebView();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        child: WebView(
          initialUrl: 'https://www.trash-collectors.com/',
        ),
      ),
    );

/*
    return WebviewScaffold(
      url: 'https://www.trash-collectors.com/',
      //withZoom: true,
      appBar: AppBar(
        title: Text('Home'),
      ),
      withLocalStorage: true,
      hidden: true,
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
