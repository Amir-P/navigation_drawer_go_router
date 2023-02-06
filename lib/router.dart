import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_drawer_go_router/pages/feed.dart';
import 'package:navigation_drawer_go_router/pages/home.dart';
import 'package:navigation_drawer_go_router/pages/intro.dart';
import 'package:navigation_drawer_go_router/pages/settings.dart';

final homeNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  initialLocation: '/intro',
  redirect: (context, state) {
    if (state.location.isEmpty) {
      return '/feed';
    }
    return null;
  },
  routes: [
    GoRoute(
      path: '/intro',
      builder: (context, state) => const IntroPage(),
    ),
    ShellRoute(
        navigatorKey: homeNavigatorKey,
        builder: (context, state, child) => HomePage(child: child),
        routes: [
          GoRoute(path: '/feed', builder: (context, state) => const FeedPage()),
          GoRoute(
              path: '/settings',
              builder: (context, state) => const SettingsPage()),
        ]),
  ],
);
