import 'package:drawer_testing/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';

import 'screens/location_marker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Drawer Example'),
      ),
      drawer: responsiveDrawer(context),
      body: Center(
        child: LocationMarker(),
      ),
    );
  }
}
