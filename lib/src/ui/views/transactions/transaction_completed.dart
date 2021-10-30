import 'package:flutter/material.dart';
import 'package:mobile/src/ui/shared/highweh_buttons.dart';

import 'package:mobile/src/ui/shared/routes.dart';
import 'package:mobile/src/ui/themes/const_color.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TransactionConfirmTransaction extends StatefulWidget {
  final PageController pageController;

  const TransactionConfirmTransaction({Key key, this.pageController})
      : super(key: key);
  @override
  _TransactionConfirmTransactionState createState() =>
      _TransactionConfirmTransactionState();
}

class _TransactionConfirmTransactionState
    extends State<TransactionConfirmTransaction> {
  void _moveNext() {
    widget.pageController.nextPage(
        duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 470,
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
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: 20,
              ),
              ButtonPrint(
                  text: AppLocalizations.of(context).print,
                  onPressed: () {},
                  icon: Icons.print,
                  color: ThemeColors.RegisterCl),
              Center(
                child: Text(
                  AppLocalizations.of(context).transferCompletedTxt,
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
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: AppLocalizations.of(context).youTxt,
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
              Center(
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Jane Doe',
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
                        text: '(CMR1298644309-01)',
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
                        text: AppLocalizations.of(context).haveSuccesText,
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
                        text: 'Jean Paul Tchio',
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
                            fontWeight: FontWeight.w300,
                            fontSize: 12,
                            color: Color(0xFF14A09F),
                            fontFamily: 'Poppins'),
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
                            fontWeight: FontWeight.w300,
                            fontSize: 12,
                            color: Color(0xFF6A707E),
                            fontFamily: 'Poppins'),
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
                            fontWeight: FontWeight.w300,
                            fontSize: 12,
                            color: Color(0xFF6A707E),
                            fontFamily: 'Poppins'),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    HighwehButton(
                        onPress: _moveNext,
                        text: AppLocalizations.of(context).closeTxt,
                        height: 40.14,
                        color: ThemeColors.RegisterCl,
                        width: 114.85)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
