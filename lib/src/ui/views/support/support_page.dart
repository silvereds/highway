import 'package:flutter/material.dart';
import 'package:mobile/src/ui/shared/appBar.dart';
import 'package:mobile/src/ui/shared/highweh_buttons.dart';
import 'package:mobile/src/ui/shared/navDrawer.dart';
import 'package:mobile/src/ui/shared/routes.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mobile/src/ui/themes/const_color.dart';

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
                  child: HighwehButton(
                color: ThemeColors.RegisterCl,
                height: 42,
                onPress: () {
                  Navigator.pushNamed(context, AppRoutes.newConversationPage);
                },
                text: AppLocalizations.of(context).newConversationTxt,
                width: 200,
              )
                  // Container(
                  //   height: 42,
                  //   width: 161,
                  //   decoration: BoxDecoration(
                  //     color: Color(
                  //       0xff4eb181,
                  //     ),
                  //     borderRadius: BorderRadius.circular(
                  //       4,
                  //     ),
                  //     boxShadow: [
                  //       BoxShadow(
                  //         color: Color(
                  //           0x3d109cf1,
                  //         ),
                  //         offset: Offset(
                  //           0,
                  //           4,
                  //         ),
                  //         blurRadius: 10,
                  //       ),
                  //     ],
                  //   ),
                  //   child: FlatButton(
                  //     onPressed: () {
                  //       Navigator.pushNamed(
                  //           context, AppRoutes.newConversationPage);
                  //     },
                  //     child: Center(
                  //       child: Text(
                  //         "New Conversation",
                  //         style: TextStyle(
                  //           color: Colors.white,
                  //           fontSize: 13,
                  //           fontWeight: FontWeight.w600,
                  //           fontFamily: "Poppins",
                  //         ),
                  //         textAlign: TextAlign.center,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  ),
              SizedBox(
                height: 10,
              ),
              MainContainer(
                process: AppLocalizations.of(context).opentxt.toUpperCase(),
                topic: AppLocalizations.of(context).requestRfid,
                date: AppLocalizations.of(context).date,
                message: 'Hello support, i would like to request...',
              ),
              MainContainer(
                process: AppLocalizations.of(context).closeTxt.toUpperCase(),
                topic: AppLocalizations.of(context).updateInfo,
                date: AppLocalizations.of(context).date,
                message: 'Hello support, i would like to request...',
              ),
              SizedBox(
                height: 10,
              ),
              MainContainer(
                process: AppLocalizations.of(context).closeTxt.toUpperCase(),
                topic: AppLocalizations.of(context).needHelpCard,
                date: AppLocalizations.of(context).date,
                message: 'Hello support, i would like to request...',
              ),
              SizedBox(
                height: 10,
              ),
              MainContainer(
                process: AppLocalizations.of(context).closeTxt.toUpperCase(),
                topic: AppLocalizations.of(context).needSecondAccount,
                date: AppLocalizations.of(context).date,
                message: 'Hello support, i would like to request...',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
