import 'package:fit_map/pages/list/page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../map/page.dart';

class HomePage extends HookWidget {
  const HomePage({super.key});

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
        body: const TabBarView(
          children: <Widget>[
            MapPage(),
            ListPage(),
          ],
        ),
      ),
    );
  }
}
