import 'package:auto_route/auto_route.dart';
import 'package:daily_sillimanian_beta/screens/landing_screen/landing_page_builder.dart';
import 'package:daily_sillimanian_beta/screens/landing_screen/login/login_view.dart';
import 'package:daily_sillimanian_beta/screens/landing_screen/register/register_view.dart';
import 'package:daily_sillimanian_beta/screens/landing_screen/start_up/startup_view.dart';
import 'package:daily_sillimanian_beta/screens/tab_navigation/home/home_view.dart';
import 'package:daily_sillimanian_beta/screens/tab_navigation/tabNavigation_builder_view.dart';
import 'package:daily_sillimanian_beta/screens/tab_navigation/inbox/inbox_view.dart';
import 'package:daily_sillimanian_beta/screens/tab_navigation/organization/orgs_view.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'View,Route',
  routes: [
    AutoRoute(page: LandingPageBuilder, initial: true),
    AutoRoute(page: StartUpView),
    AutoRoute(page: LoginView),
    AutoRoute(page: RegisterView),
    AutoRoute(
      page: TabNavigationBuilderView,
      children: [
        RedirectRoute(path: '', redirectTo: 'home'),
        CustomRoute(
          path: 'home',
          page: HomeView,
          transitionsBuilder: TransitionsBuilders.zoomIn,
        ),
        CustomRoute(
          path: 'organization',
          page: OrganizationView,
          transitionsBuilder: TransitionsBuilders.zoomIn,
        ),
        CustomRoute(
          path: 'inbox',
          page: InboxView,
          transitionsBuilder: TransitionsBuilders.zoomIn,
        ),
        // AutoRoute(path: 'inbox', page: InboxView),
      ],
    ),
    // AutoRoute(page: DetailView),
    RedirectRoute(path: '*', redirectTo: '/'),
  ],
)
class $AppRouter {}
