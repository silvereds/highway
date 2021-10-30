import 'package:flutter/material.dart';
import 'package:mobile/src/core/services/services.dart';
import 'package:mobile/src/routes.dart';
import 'package:mobile/src/ui/shared/highweh_buttons.dart';
import 'package:mobile/src/ui/themes/const_color.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SplashScreenPage extends StatefulWidget {
  SplashScreenPage({Key key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  void _isAlreadySee() {
    SharedPrefService().saveBool('isSee', true);
    Navigator.of(context)
        .pushNamedAndRemoveUntil(RouteGenerator.loginPage, (route) => false);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color(0xff02aab0),
              const Color(0xff00cdac),
            ],
          ),
        ),
        child: Container(
          margin: const EdgeInsets.fromLTRB(30, 50, 30, 50),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(height: 20),
                Text(
                  AppLocalizations.of(context).welcomeText,
                  style: TextStyle(
                    color: Color(
                      0xff4eb181,
                    ),
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Poppins",
                  ),
                  textAlign: TextAlign.center,
                ),
                // SizedBox(height: 20),
                Container(
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            child: const Icon(
                              Icons.timeline,
                              color: ThemeColors.Timeline,
                            ),
                            width: 40,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  child: Text(
                                    AppLocalizations.of(context).transferMoney,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300,
                                      fontFamily: "Roboto",
                                    ),
                                  ),
                                  width: 115,
                                ),
                                const SizedBox(height: 5),
                                SizedBox(
                                  child: Text(
                                    AppLocalizations.of(context).subText,
                                    style: TextStyle(
                                      color: Color(
                                        0xff999999,
                                      ),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                      fontFamily: "Roboto",
                                    ),
                                  ),
                                  width: 207,
                                  // height: 9,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                Container(
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            child: Icon(
                              Icons.code,
                              color: ThemeColors.Code,
                            ),
                            width: 40,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  child: Text(
                                    AppLocalizations.of(context).manageDevices,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300,
                                      fontFamily: "Roboto",
                                    ),
                                  ),
                                  width: 160,
                                  height: 18,
                                ),
                                const SizedBox(height: 5),
                                SizedBox(
                                  child: Text(
                                    AppLocalizations.of(context).subText2,
                                    style: TextStyle(
                                      color: Color(
                                        0xff999999,
                                      ),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                      fontFamily: "Roboto",
                                    ),
                                  ),
                                  width: 228.54,
                                  height: 81.09,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            child: Icon(Icons.group, color: Color(0xFF4CAF50)),
                            width: 40,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  child: Text(
                                    AppLocalizations.of(context)
                                        .manageYourEwalletAccount,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300,
                                      fontFamily: "Roboto",
                                    ),
                                  ),
                                  width: 222.15,
                                  height: 17.51,
                                ),
                                SizedBox(height: 5),
                                SizedBox(
                                  child: Text(
                                    AppLocalizations.of(context).subText3,
                                    style: TextStyle(
                                      color: Color(
                                        0xff999999,
                                      ),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                      fontFamily: "Roboto",
                                    ),
                                  ),
                                  width: 281.32,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                // SizedBox(
                //   height: 45,
                // ),
                HighwehButton(
                  text: AppLocalizations.of(context).btnNextText,
                  onPress: _isAlreadySee,
                  color: ThemeColors.Buttons,
                  height: 40.32,
                  width: 120.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
