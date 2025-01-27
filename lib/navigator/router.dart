import 'package:fit_map/pages/check/page.dart';
import 'package:fit_map/pages/regist/page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../pages/home/page.dart';

final router = GoRouter(
  initialLocation: '/check',
  routes: [
    GoRoute(
      path: '/check',
      name: 'check',
      pageBuilder: (context, state) {
        return MaterialPage(
          key: state.pageKey,
          child: CheckPage(),
        );
      },
    ),
    GoRoute(
      path: '/regist',
      name: 'regist',
      pageBuilder: (context, state) {
        return MaterialPage(
          key: state.pageKey,
          child: RegistPage(),
        );
      },
    ),
    GoRoute(
      path: '/home',
      name: 'HomePage',
      pageBuilder: (context, state) {
        final data = state.extra as Map<String, dynamic>;
        final start = data['start']!;
        final goal = data['goal']!;
        return MaterialPage(
          key: state.pageKey,
          child: HomePage(
            start: start,
            goal: goal,
          ),
        );
      },
    ),
  ],
);
