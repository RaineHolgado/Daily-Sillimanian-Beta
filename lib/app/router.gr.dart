// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:daily_sillimanian_beta/screens/landing_screen/landing_page_builder.dart'
    as _i3;
import 'package:daily_sillimanian_beta/screens/landing_screen/login/login_view.dart'
    as _i5;
import 'package:daily_sillimanian_beta/screens/landing_screen/register/register_view.dart'
    as _i6;
import 'package:daily_sillimanian_beta/screens/landing_screen/start_up/startup_view.dart'
    as _i4;
import 'package:daily_sillimanian_beta/screens/tab_navigation/home/home_view.dart'
    as _i8;
import 'package:daily_sillimanian_beta/screens/tab_navigation/inbox/inbox_view.dart'
    as _i10;
import 'package:daily_sillimanian_beta/screens/tab_navigation/organization/orgs_view.dart'
    as _i9;
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
    HomeRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i8.HomeView();
        },
        transitionsBuilder: _i1.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false),
    OrganizationRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i9.OrganizationView();
        },
        transitionsBuilder: _i1.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false),
    InboxRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i10.InboxView();
        },
        transitionsBuilder: _i1.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false)
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
              _i1.RouteConfig('#redirect',
                  path: '', redirectTo: 'home', fullMatch: true),
              _i1.RouteConfig(HomeRoute.name, path: 'home'),
              _i1.RouteConfig(OrganizationRoute.name, path: 'organization'),
              _i1.RouteConfig(InboxRoute.name, path: 'inbox')
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

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: 'home');

  static const String name = 'HomeRoute';
}

class OrganizationRoute extends _i1.PageRouteInfo {
  const OrganizationRoute() : super(name, path: 'organization');

  static const String name = 'OrganizationRoute';
}

class InboxRoute extends _i1.PageRouteInfo {
  const InboxRoute() : super(name, path: 'inbox');

  static const String name = 'InboxRoute';
}
