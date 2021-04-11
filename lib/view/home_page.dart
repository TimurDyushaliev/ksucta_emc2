import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            brightness: Brightness.dark,
            bottom: TabBar(
              indicatorColor: Colors.red,
              tabs: [
                Tab(
                  child: Text('home'),
                ),
                Tab(
                  child: Text('home'),
                ),
                Tab(
                  child: Text('home'),
                ),
                Tab(
                  child: Text('home'),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(child: Text('1')),
              Center(child: Text('1')),
              Center(child: Text('1')),
              Center(child: Text('1')),
            ],
          ),
        ),
      ),
    );
  }
}
