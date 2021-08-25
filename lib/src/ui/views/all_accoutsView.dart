import 'package:flutter/material.dart';
import 'package:mobile/src/ui/shared/routes.dart';

class AccountsView extends StatefulWidget {
  @override
  _AccountsViewState createState() => _AccountsViewState();
}

class _AccountsViewState extends State<AccountsView> {
  final List<String> entries = <String>['Active', 'Blocked' 'Active'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F8),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.fromLTRB(16, 55, 16, 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(
                color: Color(
                  0x23000000,
                ),
                offset: Offset(0, 1),
                blurRadius: 4,
              ),
            ],
          ),
          child: Stack(
            alignment: AlignmentDirectional.centerEnd,
            clipBehavior: Clip.none,
            children: [
              Column(
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    "All Accounts",
                    style: TextStyle(
                      color: Color(
                        0xFF3C4858,
                      ),
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      fontFamily: "Poppins",
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
                  // contiunue here
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                            context, AppRoutes.accoutsDetailsView);
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AccountStatus(
                                status: "Active",
                              ),
                              SizedBox(
                                child: Text(
                                  "DEFAULT",
                                  style: TextStyle(
                                    color: Color(
                                      0xff14a09f,
                                    ),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                                width: 65.9879150390625,
                              )
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "CMR12344459876-01",
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
                                              fontWeight: FontWeight.w300,
                                              fontSize: 14,
                                              color: Color(0xFF000000),
                                              fontFamily: 'Poppins'),
                                        ),
                                        TextSpan(
                                          text: '-  Personal',
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
                                "FCFA  24,000",
                                style: TextStyle(
                                  color: Color(
                                    0xff27ae60,
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
                  ),
                  const SizedBox(height: 15),
                  const Divider(),
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AccountStatus(
                          status: "Blocked",
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                          fontWeight: FontWeight.w300,
                                          fontSize: 14,
                                          color: const Color(0xFF000000),
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
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                            fontWeight: FontWeight.w300,
                                            fontSize: 14,
                                            color: Color(0xFF000000),
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
          child: Icon(
            Icons.person_outline_outlined,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class AccountStatus extends StatelessWidget {
  final String status;

  const AccountStatus({
    Key key,
    this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: status == "Active" ? const Color(0xFF4EB181) : Colors.red,
        borderRadius: BorderRadius.circular(4),
      ),
      height: 15.81,
      width: 93.43,
      child: Center(
        child: SizedBox(
          child: Text(
            status,
            style: TextStyle(
              color: Colors.white,
              fontSize: 11,
              fontWeight: FontWeight.w600,
              fontFamily: "Poppins",
            ),
            textAlign: TextAlign.center,
          ),
          width: 140,
          height: 22,
        ),
      ),
    );
  }
}
