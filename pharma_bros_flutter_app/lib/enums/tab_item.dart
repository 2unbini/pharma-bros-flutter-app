import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pharma_bros_flutter_app/screens/home/home_screen.dart';
import 'package:pharma_bros_flutter_app/screens/profile/profile_screen.dart';

enum TabItem { home, profile }

const Map<TabItem, String> tabName = {
  TabItem.home: '홈',
  TabItem.profile: '내 정보',
};

Map<TabItem, Map<String, Widget>> tabIcon = {
  TabItem.home: {
    'active': SvgPicture.asset('assets/icons/svg_Icon-home-selected.svg'),
    'inactive': SvgPicture.asset('assets/icons/svg_Icon-home-default.svg')
  },
  TabItem.profile: {
    'active': SvgPicture.asset('assets/icons/svg_Icon-my-selected.svg'),
    'inactive': SvgPicture.asset('assets/icons/svg_Icon-my-default.svg')
  },
};

const Map<TabItem, Widget> tabScreen = {
  TabItem.home: HomeScreen(),
  TabItem.profile: ProfileScreen()
};
