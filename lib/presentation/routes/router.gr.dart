// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const SplashPage());
    },
    LoginRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const LoginPage());
    },
    SignUpRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const SignUpPage());
    },
    VerificationRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const VerificationPage());
    },
    HomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const HomePage());
    },
    CircleDetailRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<CircleDetailRouteArgs>(
          orElse: () => CircleDetailRouteArgs(id: pathParams.getInt('id')));
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: CircleDetailPage(key: args.key, id: args.id));
    },
    RankingListRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const RankingListPage());
    },
    SearchRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const SearchPage());
    },
    SettingsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const SettingsPage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(SplashRoute.name, path: '/'),
        RouteConfig(LoginRoute.name, path: '/login-page'),
        RouteConfig(SignUpRoute.name, path: '/sign-up-page'),
        RouteConfig(VerificationRoute.name, path: '/verification-page'),
        RouteConfig(HomeRoute.name, path: '/home-page'),
        RouteConfig(CircleDetailRoute.name, path: '/circle-detail-page/:id'),
        RouteConfig(RankingListRoute.name, path: '/ranking-list-page'),
        RouteConfig(SearchRoute.name, path: '/search-page'),
        RouteConfig(SettingsRoute.name, path: '/settings-page')
      ];
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login-page');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [SignUpPage]
class SignUpRoute extends PageRouteInfo<void> {
  const SignUpRoute() : super(SignUpRoute.name, path: '/sign-up-page');

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [VerificationPage]
class VerificationRoute extends PageRouteInfo<void> {
  const VerificationRoute()
      : super(VerificationRoute.name, path: '/verification-page');

  static const String name = 'VerificationRoute';
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/home-page');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [CircleDetailPage]
class CircleDetailRoute extends PageRouteInfo<CircleDetailRouteArgs> {
  CircleDetailRoute({Key? key, required int id})
      : super(CircleDetailRoute.name,
            path: '/circle-detail-page/:id',
            args: CircleDetailRouteArgs(key: key, id: id),
            rawPathParams: {'id': id});

  static const String name = 'CircleDetailRoute';
}

class CircleDetailRouteArgs {
  const CircleDetailRouteArgs({this.key, required this.id});

  final Key? key;

  final int id;

  @override
  String toString() {
    return 'CircleDetailRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [RankingListPage]
class RankingListRoute extends PageRouteInfo<void> {
  const RankingListRoute()
      : super(RankingListRoute.name, path: '/ranking-list-page');

  static const String name = 'RankingListRoute';
}

/// generated route for
/// [SearchPage]
class SearchRoute extends PageRouteInfo<void> {
  const SearchRoute() : super(SearchRoute.name, path: '/search-page');

  static const String name = 'SearchRoute';
}

/// generated route for
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute() : super(SettingsRoute.name, path: '/settings-page');

  static const String name = 'SettingsRoute';
}
