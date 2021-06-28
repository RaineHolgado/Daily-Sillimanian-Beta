import 'package:auto_route/auto_route.dart';
import 'package:daily_sillimanian_beta/app/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class TabNavigationItem {
  final PageRouteInfo<dynamic> page;
  final String title;
  final Icon icon;
  final Icon activeIcon;

  TabNavigationItem({
    required this.page,
    required this.title,
    required this.icon,
    required this.activeIcon,
  });

  static List<TabNavigationItem> get items => [
        TabNavigationItem(
          page: HomeTab(),
          icon: Icon(Icons.home, color: Color(0xFF555555)),
          activeIcon: Icon(Icons.home, color: Color(0xFFBB1017)),
          title: "Home",
        ),
        TabNavigationItem(
          page: OrganizationTab(),
          icon: Icon(Icons.people, color: Color(0xFF555555)),
          activeIcon: Icon(Icons.people, color: Color(0xFFBB1017)),
          title: "Organization",
        ),
        TabNavigationItem(
          page: InboxTab(),
          icon: Icon(Ionicons.albums_outline, color: Color(0xFF555555)),
          activeIcon: Icon(Ionicons.albums_outline, color: Color(0xFFBB1017)),
          title: "Inbox",
        ),
      ];
}
