import 'package:flutter/material.dart';
import 'package:mobile/src/ui/shared/appBar.dart';
import 'package:mobile/src/ui/shared/navDrawer.dart';

class ChangeAliasView extends StatefulWidget {
  @override
  _ChangeAliasViewState createState() => _ChangeAliasViewState();
}

class _ChangeAliasViewState extends State<ChangeAliasView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F8),
      drawer: NavDrawer(),
      appBar: AppBarView(),
      body: Center(
        child: Container(
          margin: const EdgeInsets.fromLTRB(20, 55, 20, 20),
          height: 380,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(
                color: const Color(0x23000000),
              ),
            ],
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 40),
                const Text(
                  "Change Alias",
                  style: TextStyle(
                    color: Color(
                      0xff14a09f,
                    ),
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Poppins",
                  ),
                  textAlign: TextAlign.end,
                ),
                const SizedBox(height: 40),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Enter new Account Alias below.",
                      style: TextStyle(
                        color: Color(
                          0xff999999,
                        ),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins",
                      ),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(height: 40),
                    const Text(
                      "Alias",
                      style: TextStyle(
                        color: Color(
                          0xff14a09f,
                        ),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Roboto",
                      ),
                    ),
                    TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                    const Divider(
                      color: Color(0xff27ae60),
                      thickness: 2,
                      indent: 30,
                      endIndent: 30,
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FlatButton(
                            minWidth: 97,
                            height: 37,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            color: const Color(0xFFF44336),
                            textColor: Colors.white,
                            child: const Text(
                              "Cancel",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Poppins",
                              ),
                            )),
                        const SizedBox(width: 20),
                        FlatButton(
                          minWidth: 100,
                          height: 40,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          onPressed: () {
                            print(' Account Blocked');
                          },
                          color: const Color(0xFF4EB181),
                          textColor: Colors.white,
                          child: const Text(
                            "Save",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Roboto",
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
