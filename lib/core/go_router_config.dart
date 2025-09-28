import 'package:fcm_poc/core/not_found_page.dart';
import 'package:fcm_poc/features/auth/pages/login_page.dart';
import 'package:fcm_poc/features/employee/views/employee_page.dart';
import 'package:fcm_poc/features/home/pages/hompage.dart';
import 'package:fcm_poc/main.dart';
import 'package:fcm_poc/notifications_page.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// The route configuration.
class AppRouter {
  static final GoRouter goRouter = GoRouter(
    initialLocation: '/home',
    routes: <RouteBase>[
      GoRoute(
        path: '/home',
        builder: (BuildContext context, GoRouterState state) {
          return const HomePage();
        },
      ),
      GoRoute(
        path: '/notification',
        builder: (BuildContext context, GoRouterState state) {
          return const NotificationsPage();
        },
      ),
      GoRoute(
        path: '/login',
        builder: (BuildContext context, GoRouterState state) {
          return const LoginPage();
        },
      ),
      GoRoute(path: '/employee',
      builder: (context, state) {
        // final msg=state.extra as RemoteMessage;
        return EmployeePage(message: "msg");
      },
      )
    ],
    errorBuilder: (context, state) => NotFoundPage(state.uri.toString()),
  );
}
