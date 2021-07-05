import 'package:flutter/material.dart';
import 'package:mobile/src/ui/shared/appBar.dart';
import 'package:mobile/src/ui/shared/bottomNavigationBar.dart';
import 'package:mobile/src/ui/shared/navDrawer.dart';

class AllMaps extends StatefulWidget {
  @override
  _AllMapsState createState() => _AllMapsState();
}

class _AllMapsState extends State<AllMaps> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      backgroundColor: Color(0xFFF5F6F8),
      appBar: AppBarView(),
      
      body: Center(child: Text("All Maps"),),
    );
  }
}
