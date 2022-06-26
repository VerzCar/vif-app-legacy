import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:user_repository/user_repository.dart';
import 'package:vote_your_face/presentation/camera/view/camera_page.dart';
import 'package:vote_your_face/presentation/circle_detail/view/circle_detail_page.dart';
import 'package:vote_your_face/presentation/home/home.dart';
import 'package:vote_your_face/presentation/login/login.dart';
import 'package:vote_your_face/presentation/profile/profile.dart';
import 'package:vote_your_face/presentation/profile/view/edit/profile_edit_image_page.dart';
import 'package:vote_your_face/presentation/profile/view/edit/profile_edit_page.dart';
import 'package:vote_your_face/presentation/ranking_list/ranking_list.dart';
import 'package:vote_your_face/presentation/search/search.dart';
import 'package:vote_your_face/presentation/settings/view/settings_page.dart';
import 'package:vote_your_face/presentation/sign_up/view/sign_up_page.dart';
import 'package:vote_your_face/presentation/splash/splash.dart';
import 'package:vote_your_face/presentation/verification/view/verification_page.dart';

part 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: LoginPage, initial: false),
    AutoRoute(page: SignUpPage, initial: false),
    AutoRoute(page: VerificationPage, initial: false),
    AutoRoute(page: HomePage, initial: false),
    AutoRoute(
        path: '/circle-detail-page/:id',
        page: CircleDetailPage,
        initial: false),
    AutoRoute(page: RankingListPage, initial: false),
    AutoRoute(page: SearchPage, initial: false),
    AutoRoute(page: SettingsPage, initial: false),
    AutoRoute(page: ProfilePage, initial: false),
    CustomRoute(
        page: ProfileImagePage,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
        durationInMilliseconds: 200),
    CustomRoute(
        page: ProfileEditPage,
        transitionsBuilder: TransitionsBuilders.slideBottom,
        durationInMilliseconds: 200),
    CustomRoute(
        page: ProfileEditImagePage,
        transitionsBuilder: TransitionsBuilders.fadeIn,
        durationInMilliseconds: 200),
    AutoRoute(page: CameraPage, initial: false),
  ],
)
class AppRouter extends _$AppRouter {}
