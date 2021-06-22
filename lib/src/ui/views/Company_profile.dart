import 'package:flutter/material.dart';
import 'package:mobile/src/ui/shared/appBar.dart';
import 'package:mobile/src/ui/shared/bottomNavigationBar.dart';
import 'package:mobile/src/ui/themes/const_color.dart';

import 'dashboard.dart';

class CompanyProfileView extends StatefulWidget {
  @override
  _CompanyProfileViewState createState() => _CompanyProfileViewState();
}

class _CompanyProfileViewState extends State<CompanyProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF5F6F8),
        appBar: AppBarView(),
        bottomNavigationBar: BottomNavigationBarView(),
        body: SingleChildScrollView(
          child: Container(
            height: 1050,
            color: Color(0xFFFFFFFF),
            margin: EdgeInsets.fromLTRB(20, 40, 20, 20),
            child: Center(
              child: Column(
                children: [
                  Container(
                      margin: EdgeInsets.all(20),
                      width: 120.0,
                      height: 121.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image:
                                NetworkImage("https://i.imgur.com/BoN9kdC.png"),
                          ))),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Touristic Voyage ',
                        style: TextStyle(
                          color: Color(0xFF000000),
                          fontSize: 30,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'voyage@touristic.com',
                        style: TextStyle(
                            color: Color(0xFF192A3E),
                            fontSize: 18,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w200),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "+237 765890021",
                        style: TextStyle(
                            color: Color(0xFF192A3E),
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    color: Color(0xFF2F80ED),
                    indent: 50,
                    endIndent: 50,
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Company Details',
                          style: TextStyle(
                            color: Color(0xFF4CAF50),
                            fontSize: 12,
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Address: ',
                          style: TextStyle(
                            color: Color(0xFF818E9B),
                            fontSize: 14,
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Text('Mvan, Yaounde, CM.',
                            style: TextStyle(
                              color: Color(0xFF192A3E),
                              fontSize: 14,
                            )),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Industry:',
                          style: TextStyle(
                            color: Color(0xFF818E9B),
                            fontSize: 14,
                          )),
                      Text('Transport and Logistics',
                          style: TextStyle(
                            color: Color(0xFF192A3E),
                            fontSize: 14,
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Size',
                          style: TextStyle(
                            color: Color(0xFF818E9B),
                            fontSize: 14,
                          )),
                      Text('20',
                          style: TextStyle(
                            color: Color(0xFF192A3E),
                            fontSize: 14,
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Founded on',
                          style: TextStyle(
                            color: Color(0xFF818E9B),
                            fontSize: 14,
                          )),
                      Text('September 30th, 2011',
                          style: TextStyle(
                            color: Color(0xFF192A3E),
                            fontSize: 14,
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Contact person',
                          style: TextStyle(
                            color: Color(0xFF818E9B),
                            fontSize: 14,
                          )),
                      GestureDetector(
                        onTap: () {
                          print('Jane Doe');
                        },
                        child: Text('Jane Doe',
                            style: TextStyle(
                              color: Color(0xFF109CF1),
                              fontSize: 14,
                              decoration: TextDecoration.underline,
                            )),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Founded on',
                          style: TextStyle(
                            color: Color(0xFF818E9B),
                            fontSize: 14,
                          )),
                      Text('September 30th, 2011',
                          style: TextStyle(
                            color: Color(0xFF192A3E),
                            fontSize: 14,
                          )),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                  Divider(
                    color: Color(0xFF2F80ED),
                    indent: 50,
                    endIndent: 50,
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(' Documents',
                          style: TextStyle(
                              color: Color(0xFF4CAF50),
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.right),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('National Identity card',
                              style: TextStyle(
                                color: Color(0xFF2ED47A),
                                fontSize: 14,
                              )),
                          Icon(
                            Icons.done_outline_rounded,
                            color: Color(0xFF2ED47A),
                          ),
                          Text(
                            'Submited',
                            style: TextStyle(
                                color: Color(0xFF818E9B), fontSize: 14),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Proof of address',
                            style: TextStyle(
                                color: Color(0xFFF7685B), fontSize: 14),
                          ),
                          Icon(
                            Icons.clear,
                            color: Color(0xFFF7685B),
                          ),
                          Text(
                            'Submited',
                            style: TextStyle(
                                color: Color(0xFF818E9B), fontSize: 14),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        child: Card(
                          margin: EdgeInsets.all(30),
                          clipBehavior: Clip.none,
                          elevation: 5,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text(
                              'Please contact support if any of these details are not correct or need to be updated',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Color(0xFF818E9B), fontSize: 14),
                            ),
                          ),
                        ),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // SizedBox(
                      //   width: 20,
                      // ),
                      FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          side: BorderSide(color: ThemeColors.Buttons),
                        ),
                        child: Text(
                          'Close',
                          style: TextStyle(fontSize: 13),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DashBoard()),
                          );
                        },
                        color: Color(0xFF4EB181),
                        textColor: Color(0xFFFFFFFF),
                        height: 33,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}