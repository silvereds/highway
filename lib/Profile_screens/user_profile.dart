import 'package:flutter/material.dart';
import 'package:mobile/shared/const_color.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  final _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF5F6F8),
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            color: Colors.black,
            onPressed: () {},
            iconSize: 36,
          ),
          backgroundColor: Colors.white,
          title: Image.asset(
            'assets/images/HIGHWEH_HORIZONTAL.png',
            fit: BoxFit.contain,
            height: 45,
          ),
          centerTitle: true,
          actions: [CircleAvatar()],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFFFFFFFF),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: ThemeColors.SelectedItemColor,
          unselectedItemColor: ThemeColors.UnSelectedItemColor,
          onTap: (v) {
            //  Respond to item press.
            setState(() => _currentIndex == 0);
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.grid_on,
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
                        'Jane Doe ',
                        style: TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'janedoe@email.com',
                        style: TextStyle(
                            color: Color(0xFF192A3E),
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
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
                      Text(
                        "Touristic Voyage",
                        style: TextStyle(
                            color: Color(0xFF109CF1),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
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
                    thickness: 2,
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
                        child: Text(
                          'Change Password',
                          style: TextStyle(fontSize: 13),
                        ),
                        onPressed: () {},
                        color: Color(0xFF4EB181),
                        textColor: Color(0xFFFFFFFF),
                        height: 33,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      FlatButton(
                        child: Text(
                          'Close',
                          style: TextStyle(fontSize: 13),
                        ),
                        onPressed: () {},
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
