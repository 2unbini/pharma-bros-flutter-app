import 'package:flutter/material.dart';
import 'package:pharma_bros_flutter_app/enums/tab_item.dart';
import 'package:pharma_bros_flutter_app/widgets/general/bottom_tab_navigation.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  TabItem currentTab = TabItem.home;

  void handleTap(TabItem tabItem) {
    setState(() {
      currentTab = tabItem;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentTab.index,
        children: tabScreen.entries.map((entry) => entry.value).toList(),
      ),
      bottomNavigationBar: BottomTabNavigation(
        currentTab: currentTab,
        onTap: handleTap,
      ),
    );
  }
}
