import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:frontend/constants/color_constant.dart';
import 'package:truncate/truncate.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _selectedTab = _SelectedTab.home;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _homeTab(),
      extendBody: true,
      bottomNavigationBar: DotNavigationBar(
        currentIndex: _SelectedTab.values.indexOf(_selectedTab),
        unselectedItemColor: Colors.grey,
        onTap: _handleIndexChanged,
        // dotIndicatorColor: Colors.black,
        items: [
          /// Home
          DotNavigationBarItem(
            icon: Icon(Icons.home),
            selectedColor: mPrimaryColor,
          ),

          /// Likes
          DotNavigationBarItem(
            icon: Icon(Icons.messenger),
            selectedColor: mPrimaryColor,
          ),

          /// Search
          DotNavigationBarItem(
            icon: Icon(Icons.history),
            selectedColor: mPrimaryColor,
          ),

          /// Profile
          DotNavigationBarItem(
            icon: Icon(Icons.article_outlined),
            selectedColor: mPrimaryColor,
          ),
        ],
      ),
    );
  }

  Widget _homeTab() {
    return Container(
      color: mPrimaryColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100.0),
                  child: Image.asset(
                    'assets/pictures/profile.png',
                    width: 42,
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            Text(
              'Selamat Datang!',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              // truncate('Dany Ahmad Prakoso', 16),
              'Dany Ahmad',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}

enum _SelectedTab { home, message, history, article }
