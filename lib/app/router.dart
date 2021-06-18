import 'package:auto_route/auto_route.dart';
import 'package:daily_sillimanian_beta/screens/home_screen/activities/activities_view.dart';
import 'package:daily_sillimanian_beta/screens/home_screen/events/events_view.dart';
import 'package:daily_sillimanian_beta/screens/home_screen/home_builder_view.dart';
import 'package:daily_sillimanian_beta/screens/home_screen/orgs/orgs_view.dart';
import 'package:daily_sillimanian_beta/screens/landing_screen/landing_page_builder.dart';
import 'package:daily_sillimanian_beta/screens/landing_screen/login/signin_view.dart';
import 'package:daily_sillimanian_beta/screens/landing_screen/register/signup_view.dart';
import 'package:daily_sillimanian_beta/screens/landing_screen/start_up/startup_view.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'View,Route',
  routes: [
    AutoRoute(page: LandingPageBuilder, initial: true),
    AutoRoute(page: StartUpView),
    AutoRoute(page: SignInView),
    AutoRoute(page: SignUpView),
    AutoRoute(
      page: HomeBuilderView,
      children: [
        RedirectRoute(path: '', redirectTo: 'events'),
        AutoRoute(path: 'events', page: EventsView),
        AutoRoute(path: 'activities', page: ActivitiesView),
        AutoRoute(path: 'orgs', page: OrgsView),
        // CustomRoute(
          // path: 'events',
          // page: EventsView,
          // transitionsBuilder: TransitionsBuilders.zoomIn,
        // ),
      ],
    ),
    // AutoRoute(page: DetailView),
    RedirectRoute(path: '*', redirectTo: '/'),
  ],
)
class $AppRouter {}
