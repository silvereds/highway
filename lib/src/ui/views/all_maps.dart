import 'package:flutter/material.dart';


class AllMaps extends StatefulWidget {
  @override
  _AllMapsState createState() => _AllMapsState();
}

class _AllMapsState extends State<AllMaps> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: NavDrawer(),
      // backgroundColor: Color(0xFFF5F6F8),
      // appBar: AppBarView(),
      
      body: Center(child: Text("GOOGLE MAPS", style: TextStyle(color: Color(0xFF14A09F), fontSize: 30),),),
    );
  }
}
