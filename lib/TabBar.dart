import 'package:flutter/material.dart';

class FlutterTabBar extends StatefulWidget {
  @override
  _FlutterTabBarState createState() => _FlutterTabBarState();
}

class _FlutterTabBarState extends State<FlutterTabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(bottom: TabBar(
          tabs: <Widget>[
            Tab(icon: Icon(Icons.home), text: "Home",),
            Tab(icon: Icon(Icons.person), text: "Profile",),
            Tab(icon: Icon(Icons.favorite), text: "Favorite",),
          ],
        ),
        title: Text("Tabs Demo"),),
        body: TabBarView(
          children: <Widget>[
            Center(child: Text("Home")),
            Center(child: Text("Profile")),
            Center(child: Text("Favorite")),
          ],
        ),
      ),
    );
  }
}
