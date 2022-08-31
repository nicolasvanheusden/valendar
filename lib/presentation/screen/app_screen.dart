

import 'package:flutter/material.dart';
import 'package:valendar/presentation/core/colors.dart';
import 'package:valendar/presentation/screen/analytics_screen.dart';
import 'package:valendar/presentation/screen/home_screen.dart';
import 'package:valendar/presentation/screen/team_screen.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({Key? key}) : super(key: key);

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {

  int _selectedTabIndex = 0;
  late final List<Widget> _bodys;

  @override
  void initState() {
    super.initState();
    _bodys = const [
      HomeScreen(),
      AnalyticsScreen(),
      TeamScreen()
    ];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        top: false,
        bottom: false,
        child: Stack(
          fit: StackFit.expand,
          children: [
            _bodys.elementAt(_selectedTabIndex),
            _bottomNavBar(),
          ],
        )
      ),
    );
  }


  Widget _bottomNavBar() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
        ), 
        margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.05),
        elevation: 10,
        color: whiteFAFAFA,
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.08,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            IconButton(
              onPressed: () {
                setState(() {
                  _selectedTabIndex = 0;
                });
              },
              icon: Icon(
                Icons.home_rounded,
                size: MediaQuery.of(context).size.height * 0.05,
                color: _selectedTabIndex == 0 ? blue064F60 : blue064F60.withOpacity(0.5),
              )
            ),
            IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                setState(() {
                  _selectedTabIndex = 1;
                });
                // TODO(nico): navigate to analytics screen
              },
              icon: Icon(
                Icons.analytics_outlined,
                size: MediaQuery.of(context).size.height * 0.05,
                color: _selectedTabIndex == 1 ? blue064F60 : blue064F60.withOpacity(0.5),
              )
            ),
            IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                setState(() {
                  _selectedTabIndex = 2;
                });
                // TODO(nico): display team screen
              },
              icon: Icon(
                Icons.group_outlined,
                size: MediaQuery.of(context).size.height * 0.05,
                color: _selectedTabIndex == 2 ? blue064F60 : blue064F60.withOpacity(0.5),
              )
            ),
          ]),
        ),
      ),
    );
  }


}