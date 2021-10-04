import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/src/core/entities/all.dart';
import 'package:mobile/src/ui/shared/default_elevated_button.dart';
import 'package:mobile/src/ui/shared/routes.dart';

import '../../../routes.dart';
import 'components/linked_devices.dart';

class AccountsDetailsView extends StatefulWidget {
  final Accounts account;
  final String accountName;

  const AccountsDetailsView({Key key, this.account, this.accountName})
      : super(key: key);
  @override
  _AccountsDetailsViewState createState() => _AccountsDetailsViewState();
}

class _AccountsDetailsViewState extends State<AccountsDetailsView> {
  @override
  Widget build(BuildContext context) {
    // final dates = widget.account.createdOn.$date;
    // final createOn = DateTime.parse(dates).toString();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 16, right: 16),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(
                color: const Color(0x23000000),
                blurRadius: 4,
                offset: Offset(
                  0,
                  1,
                ),
              ),
            ],
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(4.0),
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
                              icon: const Icon(
                                  Icons.keyboard_arrow_left_outlined),
                              color: const Color(0xFFFFFFFF),
                              onPressed: () => Navigator.of(context).pop(),
                            ),
                            Text(
                              "Back",
                              style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 14,
                                fontFamily: 'Poppins',
                              ),
                            )
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
                      Container(
                        height: 42,
                        width: 127,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: Icon(Icons.print),
                              color: Color(0xFFFFFFFF),
                              onPressed: () {},
                            ),
                            Text(
                              "Print",
                              style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 14,
                                fontFamily: 'Poppins',
                              ),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Color(
                            0xff4eb181,
                          ),
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x23000000),
                          offset: Offset(
                            0,
                            1,
                          ),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 200,
                            child: RichText(
                              text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'Account Number: ',
                                    style: TextStyle(
                                      color: Color(
                                        0xff818e9b,
                                      ),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Poppins",
                                    ),
                                  ),
                                  TextSpan(
                                    text: widget.account.number,
                                    style: TextStyle(
                                      color: Color(
                                        0xff192a3e,
                                      ),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Poppins",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Account Name: \n',
                                  style: TextStyle(
                                    color: Color(
                                      0xff818e9b,
                                    ),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                                TextSpan(
                                  text: widget.accountName,
                                  style: TextStyle(
                                    color: const Color(0xff192a3e),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                              ],
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Alias/Tag:  \n',
                                  style: const TextStyle(
                                    color: Color(0xff818e9b),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                                TextSpan(
                                  text: widget.account.tag,
                                  style: const TextStyle(
                                    color: Color(0xff2f80ed),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 8),
                          RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Account Balance \n',
                                  style: const TextStyle(
                                    color: Color(
                                      0xff818e9b,
                                    ),
                                    fontSize: 22,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                                TextSpan(
                                  text: 'FCFA ${widget.account.balance}',
                                  style: const TextStyle(
                                    color: Color(0xff192a3e),
                                    fontSize: 22,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 8),
                          RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Date Opened:    ',
                                  style: TextStyle(
                                    color: Color(0xff818e9b),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                                TextSpan(
                                  text: 'createOn',
                                  style: TextStyle(
                                    color: Color(0xff323c47),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 8),
                          RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Status: ',
                                  style: TextStyle(
                                    color: Color(
                                      0xff818e9b,
                                    ),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                                TextSpan(
                                  text: '    ${widget.account.status}',
                                  style: TextStyle(
                                    color: Color(
                                      0xff2ed47a,
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
                    )),
                const SizedBox(height: 20),
                const Text(
                  "Linked Devices",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Poppins",
                  ),
                ),
                const SizedBox(height: 10),
                Opacity(
                  opacity: 0.5,
                  child: LinkedDevicesSubTiltles(
                    alias: 'Alias',
                    id: 'ID',
                  ),
                ),
                if (widget.account == null)
                  const Center(
                    child: Text('You have no devices'),
                  ),
                if (widget.account != null)
                  ListView.builder(
                    itemCount: widget.account.devices.length,
                    padding: EdgeInsets.zero,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, i) => LinkedDevices(
                      alias: widget.account.tag,
                      id: widget.account.devices[i]?.pin ?? '',
                    ),
                  ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    DefaultElevatedButton(
                      text: 'Block Account',
                      backgroundColor: const Color(0xfff44336),
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                      onPressed: () {},
                    ),
                    DefaultElevatedButton(
                      text: 'Change Alias',
                      backgroundColor: const Color(0xFF4EB181),
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(
                            context, RouteGenerator.changeAlias);
                      },
                    ),
                    DefaultElevatedButton(
                      text: 'Recharge Account',
                      backgroundColor: const Color(0xFF4EB181),
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(
                            context, RouteGenerator.rechargeAccountpage);
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LinkedDevicesSubTiltles extends StatelessWidget {
  const LinkedDevicesSubTiltles({
    Key key,
    this.id,
    this.alias,
  }) : super(key: key);
  final String id, alias;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            id,
            style: const TextStyle(
              color: Color(
                0xff323c47,
              ),
              fontSize: 15,
              fontWeight: FontWeight.bold,
              fontFamily: "Poppins",
            ),
          ),
          Text(
            alias,
            style: const TextStyle(
              color: Color(
                0xff323c47,
              ),
              fontSize: 15,
              fontWeight: FontWeight.bold,
              fontFamily: "Poppins",
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color(
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
    );
  }
}
