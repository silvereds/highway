import 'package:flutter/material.dart';
import 'package:mobile/shared/navDrawer.dart';
import 'package:mobile/shared/bottomNavigationBar.dart';
import 'package:mobile/shared/appBar.dart';

class AllDevicesPage extends StatefulWidget {
  @override
  _AllDevicesPageState createState() => _AllDevicesPageState();
}

class _AllDevicesPageState extends State<AllDevicesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      backgroundColor: Color(0xFFF5F6F8),
      appBar: AppBarView(),
      bottomNavigationBar: BottomNavigationBarView(),
    );
  }
}
