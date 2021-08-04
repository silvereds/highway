import 'package:flutter/material.dart';
import 'package:mobile/src/ui/shared/appBar.dart';
import 'package:mobile/src/ui/shared/bottomNavigationBar.dart';
import 'package:mobile/src/ui/shared/navDrawer.dart';
import 'package:mobile/src/ui/shared/routes.dart';

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

class MainContainer extends StatelessWidget {
  const MainContainer({
    Key key,
    this.process,
    this.topic,
    this.date,
    this.message,
  }) : super(key: key);

  final String process;
  final String topic;
  final String date;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
      width: 338,
      height: 110,
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
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 80,
              ),
              Text(
                process,
                style: TextStyle(
                  color: Color(
                    0xff14a09f,
                  ),
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Poppins",
                ),
              ),
            ],
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            topic,
            style: TextStyle(
              color: Color(
                0xff323c47,
              ),
              fontSize: 15,
              fontWeight: FontWeight.w500,
              fontFamily: "Poppins",
            ),
          ),
          Text(
            date,
            style: TextStyle(
              color: Colors.black,
              fontSize: 13,
              fontWeight: FontWeight.w400,
              fontFamily: "Poppins",
            ),
          ),
          SizedBox(
            width: 280,
            child: Center(
              child: Text(
                message,
                style: TextStyle(
                  color: Color(
                    0xff707683,
                  ),
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Poppins",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
