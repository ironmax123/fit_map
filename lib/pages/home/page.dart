import 'package:fit_map/pages/home/drawer.dart';
import 'package:fit_map/pages/list/page.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:latlong2/latlong.dart';

import '../map/page.dart';

// ignore: must_be_immutable
class HomePage extends HookConsumerWidget {
  final LatLng start;
  LatLng goal;
  final double total;
  HomePage(
      {required this.start,
      required this.goal,
      required this.total,
      super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final roundedTotal = total.toStringAsFixed(2);
    return DefaultTabController(
      length: 2, // タブの数
      child: Scaffold(
        endDrawer: const drawer(),
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.map), text: 'Map'),
              Tab(icon: Icon(Icons.list), text: '履歴'),
            ],
            indicatorColor: Colors.white,
          ),
          backgroundColor: Colors.blue,
        ),
        body: TabBarView(
          children: <Widget>[
            MapPage(
                pin: start, goal: goal, distLim: double.parse(roundedTotal)),
            const ListPage(),
          ],
        ),
      ),
    );
  }
}
