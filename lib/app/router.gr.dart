// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:daily_sillimanian_beta/screens/home_screen/activities/activities_view.dart'
    as _i9;
import 'package:daily_sillimanian_beta/screens/home_screen/events/events_view.dart'
    as _i8;
import 'package:daily_sillimanian_beta/screens/home_screen/home_builder_view.dart'
    as _i7;
import 'package:daily_sillimanian_beta/screens/home_screen/orgs/orgs_view.dart'
    as _i10;
import 'package:daily_sillimanian_beta/screens/landing_screen/landing_page_builder.dart'
    as _i3;
import 'package:daily_sillimanian_beta/screens/landing_screen/login/signin_view.dart'
    as _i5;
import 'package:daily_sillimanian_beta/screens/landing_screen/register/signup_view.dart'
    as _i6;
import 'package:daily_sillimanian_beta/screens/landing_screen/start_up/startup_view.dart'
    as _i4;
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
    SignInRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.SignInView();
        }),
    SignUpRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i6.SignUpView();
        }),
    HomeBuilderRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i7.HomeBuilderView();
        }),
    EventsRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i8.EventsView();
        }),
    ActivitiesRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i9.ActivitiesView();
        }),
    OrgsRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i10.OrgsView();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(LandingPageBuilder.name, path: '/'),
        _i1.RouteConfig(StartUpRoute.name, path: '/start-up-view'),
        _i1.RouteConfig(SignInRoute.name, path: '/sign-in-view'),
        _i1.RouteConfig(SignUpRoute.name, path: '/sign-up-view'),
        _i1.RouteConfig(HomeBuilderRoute.name,
            path: '/home-builder-view',
            children: [
              _i1.RouteConfig('#redirect',
                  path: '', redirectTo: 'events', fullMatch: true),
              _i1.RouteConfig(EventsRoute.name, path: 'events'),
              _i1.RouteConfig(ActivitiesRoute.name, path: 'activities'),
              _i1.RouteConfig(OrgsRoute.name, path: 'orgs')
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

class SignInRoute extends _i1.PageRouteInfo {
  const SignInRoute() : super(name, path: '/sign-in-view');

  static const String name = 'SignInRoute';
}

class SignUpRoute extends _i1.PageRouteInfo {
  const SignUpRoute() : super(name, path: '/sign-up-view');

  static const String name = 'SignUpRoute';
}

class HomeBuilderRoute extends _i1.PageRouteInfo {
  const HomeBuilderRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: '/home-builder-view', initialChildren: children);

  static const String name = 'HomeBuilderRoute';
}

class EventsRoute extends _i1.PageRouteInfo {
  const EventsRoute() : super(name, path: 'events');

  static const String name = 'EventsRoute';
}

class ActivitiesRoute extends _i1.PageRouteInfo {
  const ActivitiesRoute() : super(name, path: 'activities');

  static const String name = 'ActivitiesRoute';
}

class OrgsRoute extends _i1.PageRouteInfo {
  const OrgsRoute() : super(name, path: 'orgs');

  static const String name = 'OrgsRoute';
}
