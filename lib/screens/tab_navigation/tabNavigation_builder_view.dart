import 'package:auto_route/auto_route.dart';
import 'package:daily_sillimanian_beta/app_layout/drawer/dsb_drawer.dart';
import 'package:daily_sillimanian_beta/helpers/constants.dart';
import 'package:daily_sillimanian_beta/screens/tab_navigation/tabNavigationItem.dart';
import 'package:daily_sillimanian_beta/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TabNavigationBuilderView extends ConsumerWidget {
  const TabNavigationBuilderView({Key? key}) : super(key: key);
  Widget build(BuildContext context, WidgetRef ref) {
    return WillPopScope(
      onWillPop: () async => await showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(
            'Log Out',
            style: Theme.of(context).primaryTextTheme.subtitle2,
          ),
          content: Text(
            "Are you sure you want to log out?",
            style: Theme.of(context)
                .primaryTextTheme
                .bodyText1!
                .copyWith(color: greyAppColor),
          ),
          actions: <Widget>[
            TextButton(
              child: Text(
                'CANCEL',
                style: Theme.of(context)
                    .primaryTextTheme
                    .overline!
                    .copyWith(color: primaryAppColor),
              ),
              onPressed: () => context.router.pop(false),
            ),
            TextButton(
              child: Text(
                'OK',
                style: Theme.of(context)
                    .primaryTextTheme
                    .overline!
                    .copyWith(color: blackAppColor),
              ),
              onPressed: () async {
                await ref.read(userServiceProvider.notifier).logOut();
                context.router.removeLast();
              },
            ),
          ],
        ),
      ),
      child: AutoTabsScaffold(
        drawer: DsbDrawer(),
        drawerEdgeDragWidth: 50,
        routes: [
          for (final tabItem in TabNavigationItem.items) tabItem.page,
        ],
        bottomNavigationBuilder: (context, tabsRouter) {
          return ScrollToHideWidget(
            controller: ref.watch(scrollControlerProvider).state,
            child: BottomNavigationBar(
              selectedIconTheme:
                  Theme.of(context).bottomNavigationBarTheme.selectedIconTheme,
              unselectedIconTheme: Theme.of(context)
                  .bottomNavigationBarTheme
                  .unselectedIconTheme,
              selectedLabelStyle:
                  Theme.of(context).bottomNavigationBarTheme.selectedLabelStyle,
              unselectedLabelStyle: Theme.of(context)
                  .bottomNavigationBarTheme
                  .unselectedLabelStyle,
              currentIndex: tabsRouter.activeIndex,
              onTap: tabsRouter.setActiveIndex,
              items: [
                for (final tabItem in TabNavigationItem.items)
                  BottomNavigationBarItem(
                    icon: tabItem.icon,
                    activeIcon: tabItem.activeIcon,
                    label: tabItem.title,
                  )
              ],
            ),
          );
        },
      ),
    );
  }
}

class ScrollToHideWidget extends StatefulWidget {
  final Widget child;
  final ScrollController controller;
  final Duration duration;

  const ScrollToHideWidget({
    Key? key,
    required this.controller,
    required this.child,
    this.duration = const Duration(milliseconds: 200),
  }) : super(key: key);
  @override
  _ScrollToHideWidgetState createState() => _ScrollToHideWidgetState();
}

class _ScrollToHideWidgetState extends State<ScrollToHideWidget> {
  bool isVisible = true;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(listen);
  }

  @override
  void dispose() {
    widget.controller.removeListener(listen);
    super.dispose();
  }

  void listen() {
    final direction = widget.controller.position.userScrollDirection;
    if (direction == ScrollDirection.forward) {
      show();
    } else if (direction == ScrollDirection.reverse) {
      hide();
    }
  }

  void show() {
    if (!isVisible) setState(() => isVisible = true);
  }

  void hide() {
    if (isVisible) setState(() => isVisible = false);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: widget.duration,
      height: isVisible ? kBottomNavigationBarHeight : 0,
      child: Wrap(
        children: [
          widget.child,
        ],
      ),
    );
  }
}

final scrollControlerProvider = StateProvider<ScrollController>((ref) {
  ScrollController controller = ScrollController();
  ref.onDispose(() {
    controller.dispose();
  });
  return controller;
});
