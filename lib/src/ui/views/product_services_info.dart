import 'package:flutter/material.dart';
import 'package:mobile/src/ui/shared/appBar.dart';
import 'package:mobile/src/ui/shared/navDrawer.dart';

class ProductServicesInfo extends StatelessWidget {
  const ProductServicesInfo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F8),
      //drawer: NavDrawer(),
      //appBar: AppBarView(),
      body: Container(
        margin: EdgeInsets.fromLTRB(30, 30, 30, 30),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color(
                0x3f000000,
              ),
              offset: Offset(
                0,
                4,
              ),
              blurRadius: 4,
            ),
          ],
        ),
        child: Column(
          children: [
            SizedBox(height: 10),
            Center(
              child: Text(
                "Product & services Info",
                style: TextStyle(
                  color: Color(
                    0xff14a09f,
                  ),
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Poppins",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
