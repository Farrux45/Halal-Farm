import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lesson_x/constants/color_const.dart';
import 'package:lesson_x/constants/size_config.dart';
import 'package:lesson_x/core/widgets/cntainer_button.dart';
import 'package:lesson_x/screens/home%20Page/home_page_2.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        elevation: 0,
        title: Text(
          "home_page".tr(),
          style: TextStyle(
            fontSize: getHeight(18.0),
            fontWeight: FontWeight.w700,
            color: ConsColors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: getHeight(80.0),
            ),
            child: Container(
              height: getHeight(150),
              width: getWidth(365),
              child: const Image(
                image: AssetImage('assets/images/image1.png'),
              ),
            ),
          ),
          SizedBox(
            height: getHeight(40.0),
          ),
          Column(
            children: [
              Text(
                "home_page_2".tr(),
                style: TextStyle(
                  fontSize: getHeight(20.0),
                  fontWeight: FontWeight.w600,
                ),
              ),
              Container(
                width: getWidth(250),
                child: Text(
                  "home_page_3".tr(),
                  style: TextStyle(
                    fontSize: getHeight(13.0),
                    color: Colors.grey.shade500,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: getHeight(50.0),
          ),
          ContainerButton(
              name: "home_page_4".tr(),
              color: const Color(0xFF058F1A),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (_) => MyHomePage2()),
                    (route) => false);
              }),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          iconSize: 30.0,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: "Notif",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Person",
            ),
          ]),
    );
  }
}
