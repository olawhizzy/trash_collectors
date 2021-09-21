import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:trash_collectors/ui/home/home_page.dart';
import 'package:trash_collectors/ui/home/landing_page.dart';
import 'package:trash_collectors/ui/pages/about.dart';
import 'package:trash_collectors/ui/pages/aboutMain.dart';
import 'package:trash_collectors/ui/pages/contact.dart';
import 'package:trash_collectors/ui/pages/quote.dart';
import 'package:trash_collectors/ui/pages/serviceMain.dart';
import 'package:trash_collectors/ui/pages/services.dart';
import 'package:trash_collectors/ui/shared/variables.dart';
class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> with TickerProviderStateMixin {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    LandingPage(),
    //HomePage(),
    AboutMainPage(),
    //AboutUs(),
    ServiceMain(),
    //Services(),
    Contact(),
    QoutePage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Feather.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Feather.briefcase),
            label: 'About',
          ),
          BottomNavigationBarItem(
            icon: Icon(Feather.sliders),
            label: 'Services',
          ),
          BottomNavigationBarItem(
            icon: Icon(Feather.file_text),
            label: 'Feedback',
          ),
          BottomNavigationBarItem(
            icon: Icon(Feather.edit),
            label: 'Quote',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}
