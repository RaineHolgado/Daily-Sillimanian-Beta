import 'package:daily_sillimanian_beta/common/main_filters.dart';
import 'package:daily_sillimanian_beta/helpers/constants.dart';
import 'package:daily_sillimanian_beta/screens/tab_navigation/home/today_view.dart';
import 'package:daily_sillimanian_beta/screens/tab_navigation/home/upcoming_view.dart';
import 'package:daily_sillimanian_beta/screens/tab_navigation/tabNavigation_builder_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ionicons/ionicons.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,
        titleSpacing: 0,
        leadingWidth: 75,
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 16,
              backgroundColor: Color(0xFF0AC18A),
              child: Text(
                "T",
                style: Theme.of(context)
                    .primaryTextTheme
                    .bodyText2!
                    .copyWith(color: whiteAppcolor),
              ),
            ),
          ],
        ),
        title: Text(
          "Home",
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Ionicons.search_outline,
                color: blackAppColor,
              ),
            ),
          )
        ],
      ),
      body: Consumer(
        builder: (context, ref, _) {
          EventsProvider _events = ref.watch(eventsProvider);
          return Container(
            child: Column(
              children: [
                MainFilters(
                  selectedIndex: _events.selectedPageIndex,
                  onUpcomingPressed: () => _events.setSelectedPageIndex(0),
                  onTodayPressed: () => _events.setSelectedPageIndex(1),
                ),
                SizedBox(height: 10),
                Expanded(
                  child: ListView(
                    controller: ref.watch(scrollControlerProvider).state,
                    keyboardDismissBehavior:
                        ScrollViewKeyboardDismissBehavior.onDrag,
                    children: [
                      Container(
                        child: IndexedStack(
                          index: _events.selectedPageIndex,
                          children: [
                            UpcomingView(),
                            TodayView(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

final eventsProvider = ChangeNotifierProvider((ref) => EventsProvider());

class EventsProvider extends ChangeNotifier {
  int selectedPageIndex = 0;
  void setSelectedPageIndex(int index) {
    selectedPageIndex = index;
    notifyListeners();
  }
}
