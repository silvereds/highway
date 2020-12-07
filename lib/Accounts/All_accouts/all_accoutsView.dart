import 'package:flutter/material.dart';
import 'package:mobile/shared/navDrawer.dart';

class AccountsView extends StatefulWidget {
  @override
  _AccountsViewState createState() => _AccountsViewState();
}

class _AccountsViewState extends State<AccountsView> {
  int _currentIndex = 0;

  final List<String> entries = <String>['Active', 'Blocked' 'Active'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavDrawer(),
        backgroundColor: Color(0xFFF5F6F8),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black, size: 36),
          backgroundColor: Colors.white,
          title: Image.asset(
            'assets/images/HIGHWEH_HORIZONTAL.png',
            fit: BoxFit.contain,
            height: 45,
          ),
          centerTitle: true,
          actions: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
              child: GestureDetector(
                child: CircleAvatar(
                  radius: 25,
                  child: Container(
                      decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage("https://i.imgur.com/BoN9kdC.png"),
                    ),
                  )),
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          backgroundColor: Color(0xFFFFFFFF),
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 18,
          selectedItemColor: Color(0xFF53B27F),
          unselectedItemColor: Color(0xFF334D6E),
          onTap: (index) {
            setState(() => _currentIndex = index);
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.dashboard_outlined,
                  size: 30,
                ),
                label: ('Dashboad')),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.credit_card,
                  size: 30,
                ),
                label: 'Accounts'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.local_atm_outlined,
                  size: 30,
                ),
                label: 'Transactions'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.credit_card,
                  size: 30,
                ),
                label: 'Devices'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.place_outlined,
                  size: 30,
                ),
                label: 'Map'),
          ],
        ),
        body: Container(
          margin: EdgeInsets.fromLTRB(20, 55, 20, 20),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(
                color: Color(
                  0x23000000,
                ),
                offset: Offset(
                  0,
                  1,
                ),
                blurRadius: 4,
              ),
            ],
          ),
          child: Stack(
              alignment: AlignmentDirectional.centerEnd,
              clipBehavior: Clip.none,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "All Accounts",
                      style: TextStyle(
                        color: Color(
                          0xFF3C4858,
                        ),
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        fontFamily: "Poppins",
                      ),
                    ),

                    Divider(
                      color: Color(
                        0xFFD2D2D2,
                      ),
                      indent: 5,
                      endIndent: 5,
                    ),

                    SizedBox(height: 15),
                    // contiunue here
                    Container(
                      //  color: Colors.blue,
                      width: 326,
                      height: 133,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Color(
                                      0xFF4EB181,
                                    ),
                                    borderRadius: BorderRadius.circular(4)),
                                height: 15.81,
                                width: 93.43,
                                child: Center(
                                    child: SizedBox(
                                  child: Text(
                                    "Active",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Poppins",
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  width: 140,
                                  height: 22,
                                )),
                              ),
                              SizedBox(
                                child: Text(
                                  "DEFAULT",
                                  style: TextStyle(
                                    color: Color(
                                      0xff14a09f,
                                    ),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                                width: 65.9879150390625,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "CMR12344459876-01",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Poppins",
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'Jane Doe ',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w300,
                                              fontSize: 14,
                                              color: Color(0xFF000000),
                                              fontFamily: 'Poppins'),
                                        ),
                                        TextSpan(
                                          text: '-  Personal',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF333333),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "FCFA  24,000",
                                style: TextStyle(
                                  color: Color(
                                    0xff27ae60,
                                  ),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Roboto",
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Color(
                        0xFFD2D2D2,
                      ),
                      indent: 5,
                      endIndent: 5,
                    ),

                    Container(
                      //  color: Colors.blue,
                      width: 326,
                      height: 133,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Color(
                                      0xFFF44336,
                                    ),
                                    borderRadius: BorderRadius.circular(4)),
                                height: 15.81,
                                width: 93.43,
                                child: Center(
                                    child: SizedBox(
                                  child: Text(
                                    "Blocked",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Poppins",
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  width: 140,
                                  height: 22,
                                )),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "CMR12344459876-02",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Poppins",
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'Jane Doe ',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w300,
                                              fontSize: 14,
                                              color: Color(0xFF000000),
                                              fontFamily: 'Poppins'),
                                        ),
                                        TextSpan(
                                          text: '-  Business',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF333333),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "FCFA  -900",
                                style: TextStyle(
                                  color: Color(
                                    0xFFF44336,
                                  ),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Roboto",
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    Divider(
                      color: Color(
                        0xFFD2D2D2,
                      ),
                      indent: 5,
                      endIndent: 5,
                    ),

                    Container(
                      //  color: Colors.blue,
                      width: 326,
                      height: 133,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Color(
                                      0xFF4EB181,
                                    ),
                                    borderRadius: BorderRadius.circular(4)),
                                height: 15.81,
                                width: 93.43,
                                child: Center(
                                    child: SizedBox(
                                  child: Text(
                                    "Active",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Poppins",
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  width: 140,
                                  height: 22,
                                )),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "CMR12344459876-03",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Poppins",
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'Jane Doe ',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w300,
                                              fontSize: 14,
                                              color: Color(0xFF000000),
                                              fontFamily: 'Poppins'),
                                        ),
                                        TextSpan(
                                          text: '-  Others',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF333333),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "FCFA  3,700",
                                style: TextStyle(
                                  color: Color(
                                    0xFF27AE60,
                                  ),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Roboto",
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    Divider(
                      color: Color(
                        0xFFD2D2D2,
                      ),
                      indent: 5,
                      endIndent: 5,
                    ),
                  ],
                ),
                Positioned(
                  top: -30,
                  left: 15,
                  height: 63,
                  width: 63,
                  child: Container(
                    width: 49.8,
                    height: 51.39,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        3,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(
                            0x23000000,
                          ),
                          offset: Offset(
                            0,
                            4,
                          ),
                          blurRadius: 4,
                        ),
                        BoxShadow(
                          color: Color(
                            0x66e91e63,
                          ),
                          offset: Offset(
                            0,
                            7,
                          ),
                          blurRadius: 10,
                          spreadRadius: -5,
                        ),
                      ],
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(
                            0xff00cdac,
                          ),
                          Color(
                            0xff4eb181,
                          ),
                        ],
                        stops: [
                          0,
                          0.98,
                        ],
                      ),
                    ),
                    child: Center(child: Icon(Icons.person_outline_outlined)),
                  ),
                ),
              ]),
        ));
  }
}
