import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile/src/core/providers/providers.dart';
import 'package:mobile/src/ui/shared/routes.dart';

import 'components/accounts_card_with_text.dart';
import 'components/accounts_status.dart';

class AccountsView extends StatefulWidget {
  @override
  _AccountsViewState createState() => _AccountsViewState();
}

class _AccountsViewState extends State<AccountsView> {
  final List<String> entries = <String>['Active', 'Blocked' 'Active'];

  Map<String, dynamic> account = {
    'accountNumber': 'CMR122334455-01',
    'balance': "27,0987",
    'alias': 'Jane doe',
    'status': 'Active'
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F8),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 55),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(
                color: Color(
                  0x23000000,
                ),
                offset: const Offset(0, 1),
                blurRadius: 4,
              ),
            ],
          ),
          child: Stack(
            alignment: AlignmentDirectional.centerEnd,
            clipBehavior: Clip.none,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(
                      'All accounts',
                      style: TextStyle(
                        color: Color(
                          0xFF3C4858,
                        ),
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        fontFamily: "Poppins",
                      ),
                    ),
                  ),
                  const Divider(
                    color: Color(
                      0xFFD2D2D2,
                    ),
                    indent: 5,
                    endIndent: 5,
                  ),
                  const SizedBox(height: 15),
                  Consumer(
                    builder: (context, watch, __) {
                      final branches = watch(branchesProvider);
                      return branches.when(
                        data: (data) {
                          if (data.isEmpty) {
                            return Center(
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 16),
                                child: Text('You have no account.'),
                              ),
                            );
                          }
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const SizedBox(height: 20),
                              AccountsCard(
                                press: () {
                                  Navigator.pushNamed(
                                      context, AppRoutes.accoutsDetailsView);
                                },
                                text: "DEFAULT",
                                amount: 'FCFA 24,00',
                                accountNumber: 'CMR12344459876-0',
                                alias: 'Jane Doe',
                                type: ' - personal',
                              ),
                              const SizedBox(height: 15),
                              const Divider(thickness: 1),
                              const SizedBox(height: 8),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AccountStatus(
                                      status: "Blocked",
                                    ),
                                    const SizedBox(height: 20),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "CMR12344459876-02",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: "Poppins",
                                              ),
                                            ),
                                            const SizedBox(height: 5),
                                            RichText(
                                              text: TextSpan(
                                                children: <TextSpan>[
                                                  TextSpan(
                                                    text: 'Jane Doe ',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontSize: 14,
                                                      color: const Color(
                                                          0xFF000000),
                                                      fontFamily: 'Poppins',
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: '-  Business',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontFamily: 'Poppins',
                                                      color: Color(0xFF333333),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(width: 15),
                                        Text(
                                          "FCFA  -900",
                                          style: TextStyle(
                                            color: Color(
                                              0xFFF44336,
                                            ),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: "Roboto",
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 15),
                              const Divider(),
                              const SizedBox(height: 8),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AccountStatus(
                                      status: "Active",
                                    ),
                                    const SizedBox(height: 20),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              "CMR12344459876-03",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: "Poppins",
                                              ),
                                            ),
                                            const SizedBox(height: 5),
                                            RichText(
                                              text: TextSpan(
                                                children: <TextSpan>[
                                                  TextSpan(
                                                    text: 'Jane Doe ',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        fontSize: 14,
                                                        color:
                                                            Color(0xFF000000),
                                                        fontFamily: 'Poppins'),
                                                  ),
                                                  TextSpan(
                                                    text: '-  Others',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontFamily: 'Poppins',
                                                      color: Color(0xFF333333),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(width: 15),
                                        Text(
                                          "FCFA  3,700",
                                          style: TextStyle(
                                            color: Color(
                                              0xFF27AE60,
                                            ),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: "Roboto",
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const Divider(),
                            ],
                          );
                        },
                        loading: () => Center(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 16),
                            child: CircularProgressIndicator(),
                          ),
                        ),
                        error: (err, stackTrace) => Center(
                          child: Text('Error to load data'),
                        ),
                      );
                    },
                  ),
                ],
              ),
              _AccountBoxIcon(),
            ],
          ),
        ),
      ),
    );
  }
}

class _AccountBoxIcon extends StatelessWidget {
  const _AccountBoxIcon({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -30,
      left: 15,
      height: 63,
      width: 63,
      child: Container(
        width: 49.8,
        height: 51.39,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              const Color(0xff00cdac),
              const Color(0xff4eb181),
            ],
            stops: [
              0,
              0.98,
            ],
          ),
        ),
        child: Center(
          child: const Icon(
            Icons.person_outline_outlined,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
