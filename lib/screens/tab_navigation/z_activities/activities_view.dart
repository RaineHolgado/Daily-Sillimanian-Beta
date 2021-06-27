// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// class ActivitiesView extends StatefulWidget {
//   const ActivitiesView({Key? key}) : super(key: key);

//   @override
//   _ActivitiesViewState createState() => _ActivitiesViewState();
// }

// class _ActivitiesViewState extends State<ActivitiesView> {
//   // late PageController pageController;

//   // @override
//   // void initState() {
//   //   pageController = PageController(
//   //     initialPage: 0,
//   //   );
//   //   super.initState();
//   // }

//   // @override
//   // void didChangeDependencies() {
//   //   ActivityProvider _activityProvider = context.read(activityProvider);
//   //   WidgetsBinding.instance?.addPersistentFrameCallback((_) {
//   //     if (_activityProvider.selectedPageIndex != pageController.page?.floor()) {
//   //       pageController.jumpToPage(_activityProvider.selectedPageIndex);
//   //     }
//   //   });
//   //   super.didChangeDependencies();
//   // }

//   @override
//   Widget build(BuildContext context) {
//     print("object activities");
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: false,
//         automaticallyImplyLeading: false,
//         title: Text(
//           "ACTIVITIES",
//           style: Theme.of(context)
//               .appBarTheme
//               .titleTextStyle!
//               .copyWith(fontSize: 25.0),
//         ),
//       ),
//       body: Container(
//         child: Column(
//           children: [
//             // Consumer(
//             //   builder: (context, watch, _) {
//             //     ActivityProvider _activities = watch(activityProvider);
//             //     return MainFilters(
//             //       selectedIndex: _activities.selectedPageIndex,
//             //       onUpcomingPressed: () => _activities.setSelectedPageIndex(0),
//             //       onTodayPressed: () => _activities.setSelectedPageIndex(1),
//             //     );
//             //   },
//             // ),
//             // Expanded(
//             //   child: Container(
//             //     child: PageView(
//             //       key: ValueKey("value"),
//             //       physics: NeverScrollableScrollPhysics(),
//             //       controller: pageController,
//             //       children: [
//             //         Container(
//             //           color: Colors.red,
//             //         ),
//             //         Container(
//             //           color: Colors.yellow,
//             //         )
//             //       ],
//             //     ),
//             //   ),
//             // ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// final activityProvider = ChangeNotifierProvider((ref) => ActivityProvider());

// class ActivityProvider extends ChangeNotifier {
//   int selectedPageIndex = 0;
//   void setSelectedPageIndex(int index) {
//     selectedPageIndex = index;
//     notifyListeners();
//   }
// }
