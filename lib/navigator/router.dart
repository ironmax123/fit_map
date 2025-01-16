import 'package:fit_map/pages/regist/page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:latlong2/latlong.dart';

import '../pages/home/page.dart';

final router = GoRouter(
  initialLocation: '/regist',
  routes: [
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
        final data = state.extra as LatLng;
        return MaterialPage(
          key: state.pageKey,
          child: HomePage(
            center: data,
          ),
        );
      },
    ),
  ],
);
