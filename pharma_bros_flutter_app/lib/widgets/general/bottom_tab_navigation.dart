import 'package:flutter/material.dart';
import 'package:pharma_bros_flutter_app/enums/tab_item.dart';

class BottomTabNavigation extends StatelessWidget {
  final TabItem currentTab;
  final void Function(TabItem) onTap;

  const BottomTabNavigation({
    super.key,
    required this.currentTab,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: TabItem.values
          .map((tab) => BottomNavigationBarItem(
                label: tabName[tab],
                icon: tabIcon[tab]!['inactive']!,
                activeIcon: tabIcon[tab]!['active'],
              ))
          .toList(),
      currentIndex: currentTab.index,
      onTap: (index) => onTap(TabItem.values[index]),
    );
  }
}
