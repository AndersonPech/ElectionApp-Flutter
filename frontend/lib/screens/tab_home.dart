import 'package:flutter/material.dart';
import 'package:frontend/screens/poll_page.dart';
import 'package:frontend/screens/data.dart';

class TabHome extends StatelessWidget {
  const TabHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const _TabBar();
  }
}

class _TabBar extends StatelessWidget {
  const _TabBar();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.trending_up)),
                Tab(icon: Icon(Icons.analytics)),
                Tab(icon: Icon(Icons.map_rounded))
              ],
            ),
            title: const Center(child: Text("Election News")),
          ),
          body: const TabBarView(
            children: [
              HomePage(),
              PollNumbers(),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      )
    );
  }
}