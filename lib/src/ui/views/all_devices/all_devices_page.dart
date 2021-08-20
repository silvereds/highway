import 'package:flutter/material.dart';

import 'components/device_card.dart';

class AllDevicesPage extends StatefulWidget {
  @override
  _AllDevicesPageState createState() => _AllDevicesPageState();
}

class _AllDevicesPageState extends State<AllDevicesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: NavDrawer(),
      // backgroundColor: Color(0xFFF5F6F8),
      // appBar: AppBarView(),
      // bottomNavigationBar: BottomNavigationBarView(),
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
        top: 15,
        right: 30,
        child: Container(
          width: 127,
          height: 42,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              3,
            ),
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
          child: Center(
            child: Row(
              children: [
                SizedBox(
                  width: 8,
                ),
                IconButton(
                  icon: Icon(Icons.print),
                  color: Color(0xFFFFFFFF),
                  onPressed: () {},
                ),
                Text("Print",
                    style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 14,
                        fontFamily: 'Poppins'))
              ],
            ),
          ),
        ),
      ),
      Center(
        child: Container(
            height: 450,
            width: 324,
            margin: EdgeInsets.fromLTRB(16, 55, 16, 20),
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
              alignment: AlignmentDirectional.bottomCenter,
              clipBehavior: Clip.none,
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Devices",
                        style: TextStyle(
                          color: Color(
                            0xFF3C4858,
                          ),
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Divider(
                        thickness: 2,
                        color: Color(0xFFD8D8D8),
                      ),
                      DeviceCard(
                        accountId: 'ABC00987',
                        assignedTo: ' Jane Doe',
                        deviceType: 'RFID CARD',
                        status: 'Active',
                      ),
                      Divider(),
                      DeviceCard(
                          accountId: 'DEF00345',
                          assignedTo: ' Peter Ndi',
                          status: 'Blocked',
                          deviceType: 'CARD READER'),
                      DeviceCard(
                        accountId: 'ABC00987',
                        assignedTo: ' Grace Che',
                        deviceType: 'RFID CARD',
                        status: 'Active',
                      ),
                      DeviceCard(
                        accountId: 'ABC00987',
                        assignedTo: ' Jane Doe',
                        deviceType: 'RFID CARD',
                        status: 'Active',
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: -30,
                  left: 15,
                  height: 65,
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
                    child: Center(
                        child: Icon(
                      Icons.credit_card,
                      size: 30,
                      color: Colors.white,
                    )),
                  ),
                ),
              ],
            )),
      ),
    ]);
  }
}
