import 'package:auto_route/auto_route.dart';
import 'package:daily_sillimanian_beta/app/router.gr.dart';
import 'package:flutter/material.dart';

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
          page: EventsRoute(),
          icon: Icon(Icons.bookmark_border),
          activeIcon: Icon(Icons.bookmark),
          title: "Events",
        ),
        TabNavigationItem(
          page: ActivitiesRoute(),
          icon: Icon(Icons.insert_invitation),
          activeIcon: Icon(Icons.insert_invitation_outlined),
          title: "Activities",
        ),
        TabNavigationItem(
          page: OrgsRoute(),
          icon: Icon(Icons.device_hub),
          activeIcon: Icon(Icons.device_hub),
          title: "Orgs",
        ),
      ];
}
