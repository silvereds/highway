import 'package:flutter/material.dart';
import 'package:mobile/shared/appbar.dart';
import 'package:mobile/shared/bottomNavigationBar.dart';
import 'package:mobile/shared/navDrawer.dart';
import 'package:mobile/shared/routes.dart';
import 'package:mobile/themes/const_color.dart';
import 'package:mobile/views/change_password_screen.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavDrawer(),
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
                            image: NetworkImage(
                                "https://avatars.githubusercontent.com/u/26025717?s=460&u=158987f9f457e1f3ec80e0aedb0ee4cc8b5ea9e4&v=4"),
                          ))),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Jane Doe ',
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
                        'janedoe@email.com',
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
                        "+237 654678765",
                        style: TextStyle(
                            color: Color(0xFF192A3E),
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () =>
                            Navigator.pushNamed(context, '/companyProfile'),
                        child: RichText(
                            text: TextSpan(
                                style: TextStyle(
                                    color: Color(0xFF109CF1),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                                children: [
                              TextSpan(text: "Touristic Voyage"),
                            ])),
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
                      Text('Personal Details',
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
                      Text('Maison Rose, Maeture',
                          style: TextStyle(
                            color: Color(0xFF192A3E),
                            fontSize: 14,
                          )),
                      Text('Mendong, Yaounde, CM.',
                          style: TextStyle(
                            color: Color(0xFF192A3E),
                            fontSize: 14,
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Date of Birth:',
                          style: TextStyle(
                            color: Color(0xFF818E9B),
                            fontSize: 14,
                          )),
                      Text('January 21st, 1990',
                          style: TextStyle(
                            color: Color(0xFF192A3E),
                            fontSize: 14,
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Place Of Birth:',
                          style: TextStyle(
                            color: Color(0xFF818E9B),
                            fontSize: 14,
                          )),
                      Text('Baffoussam',
                          style: TextStyle(
                            color: Color(0xFF192A3E),
                            fontSize: 14,
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Profession:',
                          style: TextStyle(
                            color: Color(0xFF818E9B),
                            fontSize: 14,
                          )),
                      Text('Driver',
                          style: TextStyle(
                            color: Color(0xFF192A3E),
                            fontSize: 14,
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Gender:',
                          style: TextStyle(
                            color: Color(0xFF818E9B),
                            fontSize: 14,
                          )),
                      Text('Female',
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
                      FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          side: BorderSide(color: ThemeColors.Buttons),
                        ),
                        child: Text(
                          'Change Password',
                          style: TextStyle(fontSize: 13),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChangePassword()),
                          );
                        },
                        color: Color(0xFF4EB181),
                        textColor: Color(0xFFFFFFFF),
                        height: 33,
                      ),
                      SizedBox(
                        width: 30,
                      ),
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
                          // Navigator.pop(context);
                          Navigator.pushNamed(context, AppRoutes.dashboard);
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
