import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const PharmaBrosFlutterApp());
}

class PharmaBrosFlutterApp extends StatelessWidget {
  const PharmaBrosFlutterApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: CustomCupertinoTabBar(),
    );
  }
}

class CustomCupertinoTabBar extends StatelessWidget {
  const CustomCupertinoTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon:
                    SvgPicture.asset('assets/icons/svg_Icon-home-default.svg'),
                activeIcon:
                    SvgPicture.asset('assets/icons/svg_Icon-home-selected.svg'),
                label: '홈'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/svg_Icon-my-default.svg'),
                activeIcon:
                    SvgPicture.asset('assets/icons/svg_Icon-my-selected.svg'),
                label: '내 정보'),
          ],
          activeColor: Colors.black,
          height: 60,
        ),
        tabBuilder: (BuildContext context, int index) {
          return CupertinoTabView(
            builder: (BuildContext context) {
              return Center(child: Text('View Index $index'));
            },
          );
        });
  }
}
