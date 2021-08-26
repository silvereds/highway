import 'package:flutter/material.dart';
import 'package:mobile/src/ui/shared/appBar.dart';
import 'package:mobile/src/ui/shared/bottomNavigationBar.dart';
import 'package:mobile/src/ui/shared/navDrawer.dart';
import 'package:mobile/src/ui/shared/routes.dart';

import 'components/main_container.dart';

class SupportPage extends StatefulWidget {
  @override
  _SupportPageState createState() => _SupportPageState();
}

class _SupportPageState extends State<SupportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBarView(),
      // bottomNavigationBar: BottomNavigationBarView(),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Center(
                child: Container(
                  height: 42,
                  width: 161,
                  decoration: BoxDecoration(
                    color: Color(
                      0xff4eb181,
                    ),
                    borderRadius: BorderRadius.circular(
                      4,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(
                          0x3d109cf1,
                        ),
                        offset: Offset(
                          0,
                          4,
                        ),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(
                          context, AppRoutes.newConversationPage);
                    },
                    child: Center(
                      child: Text(
                        "New Conversation",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Poppins",
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              MainContainer(
                process: 'OPEN',
                topic: 'Request New RFID Card',
                date: 'December 23, 2018',
                message: 'Hello support, i would like to request...',
              ),
              MainContainer(
                process: 'CLOSED',
                topic: "Update my profile info",
                date: "Date: December 23, 2018",
                message: "Hello Support, I would like to request ....",
              ),
              SizedBox(
                height: 10,
              ),
              MainContainer(
                process: 'CLOSED',
                topic: 'Need help with card',
                date: 'Date: December 23, 2018',
                message: 'Helo support, i will like to request',
              ),
              SizedBox(
                height: 10,
              ),
              MainContainer(
                process: 'CLOSED',
                topic: 'Need help with card',
                date: 'Date: December 23, 2018',
                message: 'Helo support, i will like to request',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
