import 'package:fit_map/pages/list/page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:latlong2/latlong.dart';

import '../map/page.dart';

// ignore: must_be_immutable
class HomePage extends HookWidget {
  LatLng center;
  HomePage({required this.center, super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // タブの数
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
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
            MapPage(pin: center),
            const ListPage(),
          ],
        ),
      ),
    );
  }
}
