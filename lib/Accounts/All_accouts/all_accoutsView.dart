import 'package:flutter/material.dart';
import 'package:mobile/Login_views/under_construction.dart';

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
        backgroundColor: Color(0xFFF5F6F8),
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            color: Colors.black,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => UnderConstruction()),
              );
            },
            iconSize: 36,
          ),
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
              alignment: AlignmentDirectional.center,
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
                    // contiunue here

                    
             
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
