import 'package:flutter/material.dart';

class TransactionWidgetNewTransfer extends StatefulWidget {
  final PageController pageController;
  const TransactionWidgetNewTransfer({Key key, this.pageController})
      : super(key: key);

  @override
  _TransactionWidgetNewTransferState createState() =>
      _TransactionWidgetNewTransferState();
}

class _TransactionWidgetNewTransferState
    extends State<TransactionWidgetNewTransfer> {
  String dropdownValue = 'CMR188976560-01';
  String recieverownValue = 'CMR188976560-01';

  void _moveBack() {
    widget.pageController.previousPage(
        duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  void _moveToNextStep() {
    widget.pageController.nextPage(
        duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 30, 20, 20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color(0x23000000),
            blurRadius: 16,
          ),
        ],
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 5,
              ),
              Center(
                child: const Text(
                  "Send Money",
                  style: TextStyle(
                    color: Color(0xff14a09f),
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Poppins",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Sending Account",
                      style: TextStyle(
                        color: Color(0xff14a09f),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins",
                      ),
                    ),
                    DropdownButton<String>(
                      isExpanded: true,
                      value: dropdownValue,
                      style: TextStyle(
                        color: Color(0xff323c47),
                      ),
                      underline: Container(),
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownValue = newValue;
                        });
                      },
                      items: <String>[
                        'CMR188976560-01',
                        'CMR188976560-02',
                        'CMR188976560-03',
                        'CMR188976560-04'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                    const SizedBox(height: 4),
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Color(
                            0xffeeeeee,
                          ),
                          width: 1,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const SizedBox(width: 10),
                              RichText(
                                text: TextSpan(
                                  text: 'Account Name: ',
                                  style: TextStyle(
                                    color: Color(
                                      0xff818e9b,
                                    ),
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Poppins",
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: ' Jane Doe',
                                      style: TextStyle(
                                        color: Color(
                                          0xff323c47,
                                        ),
                                        fontSize: 11,
                                        fontWeight: FontWeight.w200,
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const SizedBox(width: 10),
                              RichText(
                                text: TextSpan(
                                  text: 'Balance: ',
                                  style: TextStyle(
                                    color: Color(
                                      0xff818e9b,
                                    ),
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Poppins",
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: ' FCFA 32,500',
                                      style: TextStyle(
                                        color: Color(
                                          0xff323c47,
                                        ),
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      "Reciever Account",
                      style: TextStyle(
                        color: Color(0xff14a09f),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins",
                      ),
                    ),
                    DropdownButton<String>(
                      value: recieverownValue,
                      isExpanded: true,
                      style: TextStyle(
                        color: Color(0xff323c47),
                      ),
                      underline: Container(),
                      onChanged: (String newValue) {
                        setState(() {
                          recieverownValue = newValue;
                        });
                      },
                      items: <String>[
                        'CMR188976560-01',
                        'CMR188976560-02',
                        'CMR188976560-03',
                        'CMR188976560-04'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Color(
                            0xffeeeeee,
                          ),
                          width: 1,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              RichText(
                                text: TextSpan(
                                  text: 'Account Name: ',
                                  style: TextStyle(
                                    color: Color(
                                      0xff818e9b,
                                    ),
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Poppins",
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: ' Jean Paual Tchoi',
                                      style: TextStyle(
                                        color: Color(
                                          0xff323c47,
                                        ),
                                        fontSize: 11,
                                        fontWeight: FontWeight.w200,
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      "Amount",
                      style: TextStyle(
                        color: Color(
                          0xff14a09f,
                        ),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins",
                      ),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Color(
                            0xffeeeeee,
                          ),
                          width: 1,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              RichText(
                                text: TextSpan(
                                  text: 'Charges: ',
                                  style: TextStyle(
                                    color: Color(
                                      0xff818e9b,
                                    ),
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Poppins",
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: ' FCFA  25',
                                      style: TextStyle(
                                        color: Color(
                                          0xff323c47,
                                        ),
                                        fontSize: 11,
                                        fontWeight: FontWeight.w200,
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      "Commentt",
                      style: TextStyle(
                        color: Color(
                          0xff14a09f,
                        ),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins",
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'School fees for the kids',
                        border: InputBorder.none,
                      ),
                    ),
                    Divider(),
                    Row(
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'Total Amount: ',
                            style: TextStyle(
                              color: Color(
                                0xff818e9b,
                              ),
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Poppins",
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: '              FCFA  12,025',
                                style: TextStyle(
                                  color: Color(
                                    0xff323c47,
                                  ),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Poppins",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        FlatButton(
                            minWidth: 97,
                            height: 37,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            onPressed: _moveBack,
                            color: Color(0xFFF44336),
                            textColor: Colors.white,
                            child: Text(
                              "Cancel",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Poppins",
                              ),
                            )),
                        // SizedBox(
                        //   width: 10,
                        // ),
                        FlatButton(
                            minWidth: 100,
                            height: 40,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            onPressed: _moveToNextStep,
                            color: Color(0xFF4EB181),
                            textColor: Colors.white,
                            child: Text(
                              "Send",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Roboto",
                              ),
                            ))
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          Positioned(
            top: -15,
            left: 10,
            height: 38.91,
            width: 37.71,
            child: Container(
              width: 49.8,
              height: 51.39,
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
                child: Icon(
                  Icons.local_atm_outlined,
                  size: 16,
                  color: Color(0xFFFFFFFF),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
