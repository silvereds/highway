import 'package:flutter/material.dart';
import 'package:mobile/src/ui/shared/appBar.dart';
import 'package:mobile/src/ui/shared/navDrawer.dart';

class ConversationDetails extends StatefulWidget {
  ConversationDetails({
    Key key,
  }) : super(key: key);

  @override
  _ConversationDetailsState createState() => _ConversationDetailsState();
}

class _ConversationDetailsState extends State<ConversationDetails> {
  List<ChatUser> chatUser = [
    ChatUser(message: "Jane Russel", time: "Now"),
    ChatUser(message: "Jane Doe", time: "Yesterday"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: NavDrawer(),
      //appBar: AppBarView(),
      body: Container(
        margin: EdgeInsets.fromLTRB(30, 10, 30, 30),
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
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                height: 97.6,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 8,
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: '   Topic: ',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Poppins",
                                color: Color(0xFF192A3E)),
                          ),
                          TextSpan(
                            text: '  Request new RFID Cards',
                            style: TextStyle(
                              color: Color(
                                0xFF14A09F,
                              ),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Poppins",
                            ),
                          ),
                        ],
                      ),
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: '   Operator: ',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Poppins",
                                color: Color(0xFF192A3E)),
                          ),
                          TextSpan(
                            text: '  Jean Marie',
                            style: TextStyle(
                              color: Color(
                                0xFF14A09F,
                              ),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Poppins",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
                child: Row(
                  children: <Widget>[
                    CircleAvatar(),
                    _ChatContainer(
                        message: "Hello, Jane Doe and thanks for",
                        time: "(December 23, 2018 - 10:31)"),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
                child: Row(
                  children: <Widget>[
                    _ReplyContainer(
                        message: "Hello, Jane Doe and thanks for",
                        time: "(December 23, 2018 - 10:30)"),
                    CircleAvatar(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 56,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFF4EB181),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(4))),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 180,
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Your message here",
                                hintStyle: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Poppins",
                                  color: Color(0xFF4EB181),
                                ),
                              ),
                            )),
                      ),
                      ElevatedButton.icon(
                        label: Text('Send'),
                        icon: Icon(Icons.mail_outline_outlined),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _ChatContainer extends StatelessWidget {
  final String message;
  final String time;

  const _ChatContainer({Key key, @required this.message, @required this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 105,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            message,
            style: TextStyle(
              color: Color(
                0xff828282,
              ),
              fontSize: 9,
              fontWeight: FontWeight.w700,
              fontFamily: "Poppins",
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            time,
            style: TextStyle(
              color: Color(
                0xff939599,
              ),
              fontSize: 10,
              fontWeight: FontWeight.w400,
              fontFamily: "Poppins",
            ),
          ),
        ],
      ),
    );
  }
}

class _ReplyContainer extends StatelessWidget {
  final String message;
  final String time;

  const _ReplyContainer({Key key, @required this.message, @required this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 105,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            message,
            style: TextStyle(
              color: Color(
                0xff828282,
              ),
              fontSize: 9,
              fontWeight: FontWeight.w700,
              fontFamily: "Poppins",
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            time,
            style: TextStyle(
              color: Color(
                0xff939599,
              ),
              fontSize: 10,
              fontWeight: FontWeight.w400,
              fontFamily: "Poppins",
            ),
          ),
        ],
      ),
    );
  }
}

class ChatUser {
  String message;

  String time;

  ChatUser({@required this.message, @required this.time});
}
