import 'package:flutter/material.dart';
import 'package:mobile/shared/navDrawer.dart';
import 'package:mobile/shared/bottomNavigationBar.dart';
import 'package:mobile/shared/appBar.dart';

class RechargeAccountPage extends StatefulWidget {
  @override
  _RechargeAccountPageState createState() => _RechargeAccountPageState();
}

class _RechargeAccountPageState extends State<RechargeAccountPage> {
  String dropdownValue = 'CMR18897656001';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBarView(),
      bottomNavigationBar: BottomNavigationBarView(),
      body: Center(
        child: Container(
          height: 545,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.fromLTRB(10, 40, 10, 15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              6,
            ),
            boxShadow: [
              BoxShadow(
                color: Color(
                  0x23000000,
                ),
                blurRadius: 4,
                offset: Offset(
                  0,
                  1,
                ),
              ),
            ],
          ),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 42,
                      width: 99,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            icon: Icon(Icons.keyboard_arrow_left_outlined),
                            color: Color(0xFFFFFFFF),
                            onPressed: () {
                              print('Back');
                            },
                          ),
                          Text("Back",
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontSize: 14,
                                  fontFamily: 'Poppins'))
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Color(
                          0xff4eb181,
                        ),
                        borderRadius: BorderRadius.circular(
                          3,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 290,
                height: 60,
                child: Center(
                  child: Text(
                    "Recharge Account",
                    style: TextStyle(
                      color: Color(
                        0xff14a09f,
                      ),
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
              ),
              Container(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(children: [
                      SizedBox(
                        child: Text(
                          "Account Number",
                          style: TextStyle(
                            color: Color(
                              0xff14a09f,
                            ),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Poppins",
                          ),
                        ),
                        width: 172.21,
                        height: 19.61,
                      ),
                      DropdownButton<String>(
                        value: dropdownValue,
                        icon: Icon(Icons.arrow_downward),
                        iconSize: 15,
                        elevation: 10,
                        style: TextStyle(
                          color: Color(
                            0xff323c47,
                          ),
                        ),
                        underline: Container(),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue = newValue;
                          });
                        },
                        items: <String>[
                          'CMR18897656001',
                          'CMR18897656002',
                          'CMR18897656003',
                          'CMR18897656004'
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                      Divider(),
                    ]),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
