// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:daily_sillimanian_beta/screens/landing_screen/landing_page_builder.dart'
    as _i3;
import 'package:daily_sillimanian_beta/screens/landing_screen/login_view.dart'
    as _i5;
import 'package:daily_sillimanian_beta/screens/landing_screen/register_view.dart'
    as _i6;
import 'package:daily_sillimanian_beta/screens/landing_screen/startup_view.dart'
    as _i4;
import 'package:daily_sillimanian_beta/screens/tab_navigation/home/home_detail_view.dart'
    as _i9;
import 'package:daily_sillimanian_beta/screens/tab_navigation/home/home_view.dart'
    as _i8;
import 'package:daily_sillimanian_beta/screens/tab_navigation/inbox/inbox_detail_view.dart'
    as _i13;
import 'package:daily_sillimanian_beta/screens/tab_navigation/inbox/inbox_view.dart'
    as _i12;
import 'package:daily_sillimanian_beta/screens/tab_navigation/organization/organization_detail_view.dart'
    as _i11;
import 'package:daily_sillimanian_beta/screens/tab_navigation/organization/organization_view.dart'
    as _i10;
import 'package:daily_sillimanian_beta/screens/tab_navigation/tabNavigation_builder_view.dart'
    as _i7;
import 'package:flutter/material.dart' as _i2;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    LandingPageBuilder.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.LandingPageBuilder();
        }),
    StartUpRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.StartUpView();
        }),
    LoginRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.LoginView();
        }),
    RegisterRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i6.RegisterView();
        }),
    TabNavigationBuilderRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i7.TabNavigationBuilderView();
        }),
    HomeTab.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i1.EmptyRouterPage();
        },
        transitionsBuilder: _i1.TransitionsBuilders.slideRight,
        opaque: true,
        barrierDismissible: false),
    OrganizationTab.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i1.EmptyRouterPage();
        },
        transitionsBuilder: _i1.TransitionsBuilders.slideRight,
        opaque: true,
        barrierDismissible: false),
    InboxTab.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i1.EmptyRouterPage();
        },
        transitionsBuilder: _i1.TransitionsBuilders.slideRight,
        opaque: true,
        barrierDismissible: false),
    HomeRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i8.HomeView();
        }),
    HomeDetailRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i9.HomeDetailView();
        }),
    OrganizationRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i10.OrganizationView();
        }),
    OrganizationDetailRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i11.OrganizationDetailView();
        }),
    InboxRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i12.InboxView();
        }),
    InboxDetailRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i13.InboxDetailView();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(LandingPageBuilder.name, path: '/'),
        _i1.RouteConfig(StartUpRoute.name, path: '/start-up-view'),
        _i1.RouteConfig(LoginRoute.name, path: '/login-view'),
        _i1.RouteConfig(RegisterRoute.name, path: '/register-view'),
        _i1.RouteConfig(TabNavigationBuilderRoute.name,
            path: '/tab-navigation-builder-view',
            children: [
              _i1.RouteConfig(HomeTab.name, path: 'home', children: [
                _i1.RouteConfig(HomeRoute.name, path: ''),
                _i1.RouteConfig(HomeDetailRoute.name, path: 'home-detail')
              ]),
              _i1.RouteConfig(OrganizationTab.name,
                  path: 'organization',
                  children: [
                    _i1.RouteConfig(OrganizationRoute.name, path: ''),
                    _i1.RouteConfig(OrganizationDetailRoute.name,
                        path: 'organization-detail')
                  ]),
              _i1.RouteConfig(InboxTab.name, path: 'inbox', children: [
                _i1.RouteConfig(InboxRoute.name, path: ''),
                _i1.RouteConfig(InboxDetailRoute.name, path: 'inbox-detail')
              ]),
              _i1.RouteConfig('#redirect',
                  path: '', redirectTo: 'home', fullMatch: true)
            ]),
        _i1.RouteConfig('*#redirect',
            path: '*', redirectTo: '/', fullMatch: true)
      ];
}

class LandingPageBuilder extends _i1.PageRouteInfo {
  const LandingPageBuilder() : super(name, path: '/');

  static const String name = 'LandingPageBuilder';
}

class StartUpRoute extends _i1.PageRouteInfo {
  const StartUpRoute() : super(name, path: '/start-up-view');

  static const String name = 'StartUpRoute';
}

class LoginRoute extends _i1.PageRouteInfo {
  const LoginRoute() : super(name, path: '/login-view');

  static const String name = 'LoginRoute';
}

class RegisterRoute extends _i1.PageRouteInfo {
  const RegisterRoute() : super(name, path: '/register-view');

  static const String name = 'RegisterRoute';
}

class TabNavigationBuilderRoute extends _i1.PageRouteInfo {
  const TabNavigationBuilderRoute({List<_i1.PageRouteInfo>? children})
      : super(name,
            path: '/tab-navigation-builder-view', initialChildren: children);

  static const String name = 'TabNavigationBuilderRoute';
}

class HomeTab extends _i1.PageRouteInfo {
  const HomeTab({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'home', initialChildren: children);

  static const String name = 'HomeTab';
}

class OrganizationTab extends _i1.PageRouteInfo {
  const OrganizationTab({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'organization', initialChildren: children);

  static const String name = 'OrganizationTab';
}

class InboxTab extends _i1.PageRouteInfo {
  const InboxTab({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'inbox', initialChildren: children);

  static const String name = 'InboxTab';
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '');

  static const String name = 'HomeRoute';
}

class HomeDetailRoute extends _i1.PageRouteInfo {
  const HomeDetailRoute() : super(name, path: 'home-detail');

  static const String name = 'HomeDetailRoute';
}

class OrganizationRoute extends _i1.PageRouteInfo {
  const OrganizationRoute() : super(name, path: '');

  static const String name = 'OrganizationRoute';
}

class OrganizationDetailRoute extends _i1.PageRouteInfo {
  const OrganizationDetailRoute() : super(name, path: 'organization-detail');

  static const String name = 'OrganizationDetailRoute';
}

class InboxRoute extends _i1.PageRouteInfo {
  const InboxRoute() : super(name, path: '');

  static const String name = 'InboxRoute';
}

class InboxDetailRoute extends _i1.PageRouteInfo {
  const InboxDetailRoute() : super(name, path: 'inbox-detail');

  static const String name = 'InboxDetailRoute';
}
