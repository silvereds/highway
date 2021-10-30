// Confirm Tranfer Step Widget
import 'package:flutter/material.dart';
import 'package:mobile/src/ui/shared/highweh_buttons.dart';
import 'package:mobile/src/ui/shared/routes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mobile/src/ui/themes/const_color.dart';

class ConfirmTransferStepWidget extends StatefulWidget {
  final PageController pageController;

  const ConfirmTransferStepWidget({Key key, this.pageController})
      : super(key: key);
  @override
  _ConfirmTransferStepWidgetState createState() =>
      _ConfirmTransferStepWidgetState();
}

class _ConfirmTransferStepWidgetState extends State<ConfirmTransferStepWidget> {
  String dropdownValue = 'CMR18897656001';
  String dropdownPayment = "MTN MOMO";

  void _moveBack() {
    widget.pageController.previousPage(
        duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  void _moveNext() {
    widget.pageController.nextPage(
        duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 437,
        width: 329,
        margin: EdgeInsets.fromLTRB(10, 40, 10, 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            6,
          ),
          boxShadow: [
            BoxShadow(
              color: Color(
                0x23000000,
              ),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ButtonPrint(
                  text: AppLocalizations.of(context).bntBackText,
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, AppRoutes.homeScreen);
                  },
                  icon: Icons.arrow_back_ios,
                  color: ThemeColors.RegisterCl),
              Center(
                child: Text(
                  AppLocalizations.of(context).transferCompleted,
                  style: TextStyle(
                    color: Color(
                      0xff14a09f,
                    ),
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Poppins",
                  ),
                ),
              ),
              Center(
                child: SizedBox(
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: AppLocalizations.of(context).aboutToSendText,
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 14,
                              color: Color(0xFF6A707E),
                              fontFamily: 'Poppins'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'FCFA 12,000',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          color: Color(0xFF14A09F),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: AppLocalizations.of(context).toText,
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          color: Color(0xFF6A707E),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Jean Paul Tchoi',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          color: Color(0xFF14A09F),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: '(CMR1234344309-02)',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          color: Color(0xFF6A707E),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: AppLocalizations.of(context).withComment,
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          color: Color(0xFF6A707E),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: AppLocalizations.of(context).commentTxt,
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          color: Color(0xFF14A09F),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: AppLocalizations.of(context).withcharges,
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          color: Color(0xFF6A707E),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'FCFA 25',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          color: Color(0xFF14A09F),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: AppLocalizations.of(context).totalAmount,
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 16,
                            color: Color(0xff818e9b),
                            fontFamily: 'Poppins'),
                      ),
                      TextSpan(
                        text: '  FCFA 12,025',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          color: Color(0xff192a3e),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 70,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Color(
                        0xffffffff,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextFormField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              hintText: AppLocalizations.of(context)
                                  .enterPasswordConfirmTxt,
                              hintStyle: TextStyle(
                                color: Color(
                                  0xff14a09f,
                                ),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ))),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  HighwehButton(
                      onPress: _moveBack,
                      text: AppLocalizations.of(context).cancel,
                      height: 40.14,
                      color: ThemeColors.deficiteColor,
                      width: 114.85),
                  HighwehButton(
                      onPress: _moveNext,
                      text: AppLocalizations.of(context).send,
                      height: 40.14,
                      color: ThemeColors.RegisterCl,
                      width: 114.85)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
