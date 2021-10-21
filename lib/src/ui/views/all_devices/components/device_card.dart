import 'package:flutter/material.dart';

class DeviceCard extends StatelessWidget {
  const DeviceCard({
    Key key,
    @required this.accountId,
    @required this.assignedTo,
    @required this.status,
    @required this.deviceType,
  }) : super(key: key);
  final String accountId;
  final String assignedTo;
  final String status;
  final String deviceType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(
                    child: RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: accountId,
                            style: TextStyle(
                              color: Color(0xff99a6b7),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Poppins",
                            ),
                          ),
                          TextSpan(
                            text: assignedTo,
                            style: TextStyle(
                              color: Color(0xff99a6b7),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Poppins",
                            ),
                          ),
                        ],
                      ),
                    ),
                    width: 95,
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: status == 'active'
                          ? Color(0xff4eb181)
                          : Color(0xffE53935),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    height: 12,
                    width: 73,
                    child: Center(
                        child: Text(
                      status,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 9,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Poppins",
                      ),
                      textAlign: TextAlign.center,
                    )),
                  ),
                  Opacity(
                    opacity: 0.5,
                    child: SizedBox(
                      child: Text(
                        deviceType,
                        style: TextStyle(
                          color: Color(0xff334d6e),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins",
                        ),
                      ),
                      width: 88,
                      height: 19,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
