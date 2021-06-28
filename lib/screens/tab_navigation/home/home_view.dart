import 'package:daily_sillimanian_beta/common/main_filters.dart';
import 'package:daily_sillimanian_beta/screens/tab_navigation/home/today_view.dart';
import 'package:daily_sillimanian_beta/screens/tab_navigation/home/upcoming_view.dart';
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
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        title: Text(
          "Home",
          style: Theme.of(context).appBarTheme.titleTextStyle!.copyWith(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
              ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Ionicons.search_outline),
            ),
          )
        ],
      ),
      body: Consumer(
        builder: (context, watch, _) {
          EventsProvider _events = watch(eventsProvider);
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
