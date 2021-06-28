import 'package:auto_route/auto_route.dart';
import 'package:daily_sillimanian_beta/screens/landing_screen/landing_page_builder.dart';
import 'package:daily_sillimanian_beta/screens/landing_screen/login/login_view.dart';
import 'package:daily_sillimanian_beta/screens/landing_screen/register/register_view.dart';
import 'package:daily_sillimanian_beta/screens/landing_screen/start_up/startup_view.dart';
import 'package:daily_sillimanian_beta/screens/tab_navigation/home/home_detail_view.dart';
import 'package:daily_sillimanian_beta/screens/tab_navigation/home/home_view.dart';
import 'package:daily_sillimanian_beta/screens/tab_navigation/inbox/inbox_detail_view.dart';
import 'package:daily_sillimanian_beta/screens/tab_navigation/organization/organization_detail_view.dart';
import 'package:daily_sillimanian_beta/screens/tab_navigation/tabNavigation_builder_view.dart';
import 'package:daily_sillimanian_beta/screens/tab_navigation/inbox/inbox_view.dart';
import 'package:daily_sillimanian_beta/screens/tab_navigation/organization/organization_view.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'View,Route',
  routes: [
    AutoRoute(page: LandingPageBuilder, initial: true),
    AutoRoute(page: StartUpView),
    AutoRoute(page: LoginView),
    AutoRoute(page: RegisterView),
    AutoRoute(
      // path: '/', //please remove
      page: TabNavigationBuilderView,
      children: [
        AutoRoute(
          path: 'home',
          page: EmptyRouterPage,
          name: "HomeTab",
          children: [
            AutoRoute(path: '', page: HomeView),
            AutoRoute(
              path: 'home-detail',
              page: HomeDetailView,
            ),
          ],
        ),
        AutoRoute(
          path: 'organization',
          name: "OrganizationTab",
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: '', page: OrganizationView),
            AutoRoute(
              path: 'organization-detail',
              page: OrganizationDetailView,
            ),
          ],
        ),
        AutoRoute(
          path: 'inbox',
          name: "InboxTab",
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: '', page: InboxView),
            AutoRoute(
              path: 'inbox-detail',
              page: InboxDetailView,
            ),
          ],
        ),
        RedirectRoute(path: '', redirectTo: 'home'),
      ],
    ),
    RedirectRoute(path: '*', redirectTo: '/'),
  ],
)
class $AppRouter {}
