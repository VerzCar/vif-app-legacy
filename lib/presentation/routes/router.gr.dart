// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import '../home/home.dart' as _i5;
import '../login/login.dart' as _i2;
import '../ranking_list/ranking_list.dart' as _i6;
import '../search/search.dart' as _i7;
import '../settings/view/settings_page.dart' as _i8;
import '../sign_up/view/sign_up_page.dart' as _i3;
import '../splash/splash.dart' as _i1;
import '../verification/view/verification_page.dart' as _i4;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    LoginPageRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.LoginPage());
    },
    SignUpPageRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SignUpPage());
    },
    VerificationPageRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.VerificationPage());
    },
    HomePageRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.HomePage());
    },
    RankingListPageRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.RankingListPage());
    },
    SearchPageRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.SearchPage());
    },
    SettingsPageRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.SettingsPage());
    }
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(SplashPageRoute.name, path: '/'),
        _i9.RouteConfig(LoginPageRoute.name, path: '/login-page'),
        _i9.RouteConfig(SignUpPageRoute.name, path: '/sign-up-page'),
        _i9.RouteConfig(VerificationPageRoute.name, path: '/verification-page'),
        _i9.RouteConfig(HomePageRoute.name, path: '/home-page'),
        _i9.RouteConfig(RankingListPageRoute.name, path: '/ranking-list-page'),
        _i9.RouteConfig(SearchPageRoute.name, path: '/search-page'),
        _i9.RouteConfig(SettingsPageRoute.name, path: '/settings-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashPageRoute extends _i9.PageRouteInfo<void> {
  const SplashPageRoute() : super(SplashPageRoute.name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [_i2.LoginPage]
class LoginPageRoute extends _i9.PageRouteInfo<void> {
  const LoginPageRoute() : super(LoginPageRoute.name, path: '/login-page');

  static const String name = 'LoginPageRoute';
}

/// generated route for
/// [_i3.SignUpPage]
class SignUpPageRoute extends _i9.PageRouteInfo<void> {
  const SignUpPageRoute() : super(SignUpPageRoute.name, path: '/sign-up-page');

  static const String name = 'SignUpPageRoute';
}

/// generated route for
/// [_i4.VerificationPage]
class VerificationPageRoute extends _i9.PageRouteInfo<void> {
  const VerificationPageRoute()
      : super(VerificationPageRoute.name, path: '/verification-page');

  static const String name = 'VerificationPageRoute';
}

/// generated route for
/// [_i5.HomePage]
class HomePageRoute extends _i9.PageRouteInfo<void> {
  const HomePageRoute() : super(HomePageRoute.name, path: '/home-page');

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i6.RankingListPage]
class RankingListPageRoute extends _i9.PageRouteInfo<void> {
  const RankingListPageRoute()
      : super(RankingListPageRoute.name, path: '/ranking-list-page');

  static const String name = 'RankingListPageRoute';
}

/// generated route for
/// [_i7.SearchPage]
class SearchPageRoute extends _i9.PageRouteInfo<void> {
  const SearchPageRoute() : super(SearchPageRoute.name, path: '/search-page');

  static const String name = 'SearchPageRoute';
}

/// generated route for
/// [_i8.SettingsPage]
class SettingsPageRoute extends _i9.PageRouteInfo<void> {
  const SettingsPageRoute()
      : super(SettingsPageRoute.name, path: '/settings-page');

  static const String name = 'SettingsPageRoute';
}
