import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tap_app/core/Router/page_name.dart';
import 'package:tap_app/core/Router/page_transition.dart';
import 'package:tap_app/core/extensions/all_extensions.dart';
import 'package:tap_app/features/auth/presentation/screens/auth/auth_screen.dart';
import '../../features/splash/presentation/screens/splash/splash.dart';

class RouteConfigs {
  static final GlobalKey<NavigatorState> rootNavigatorKey =
      GlobalKey<NavigatorState>();

  // All Routes in the app
  static final GoRouter routerConfig = GoRouter(
    initialLocation: AppRoutes.splash.path,
    debugLogDiagnostics: true,
    navigatorKey: rootNavigatorKey,
    observers: [BotToastNavigatorObserver()],
    routes: [
      GoRoute(
        path: AppRoutes.splash.path,
        name: AppRoutes.splash.name,
        pageBuilder: (context, state) => const SplashScreen().buildPage(),
      ),
      ..._authRoutes,
    ],
  );
}

List<RouteBase> get _authRoutes => [
      GoRoute(
        path: AppRoutes.login.path,
        name: AppRoutes.login.name,
        pageBuilder: (context, state) =>
            const AuthScreen().buildPage(transition: PageTransitions.cupertino),
        routes: [
          // GoRoute(
          //   path: AppRoutes.forgetPassword.path,
          //   name: AppRoutes.forgetPassword.name,
          //   pageBuilder: (context, state) => const ForgetPasswordScreen().buildPage(
          //     transition: PageTransitions.cupertino,
          //   ),
          // ),
          // GoRoute(
          //   path: AppRoutes.forgetPasswordVerification.path,
          //   name: AppRoutes.forgetPasswordVerification.name,
          //   pageBuilder: (context, state) => ForgetPasswordVerificationScreen(
          //     phoneNumber: state.uri.queryParameters['phone']!,
          //   ).withBloc(state.extra as ForgetPasswordCubit).buildPage(transition: PageTransitions.cupertino),
          // ),
          // GoRoute(
          //   path: AppRoutes.resetPassword.path,
          //   name: AppRoutes.resetPassword.name,
          //   pageBuilder: (context, state) => const ResetPasswordScreen()
          //       .withBloc(state.extra as ForgetPasswordCubit)
          //       .buildPage(transition: PageTransitions.cupertino),
          // ),
        ],
      ),
    ];
