// First Widget Step to initiate transfer
import 'package:flutter/material.dart';
import 'package:mobile/src/ui/shared/default_elevated_button.dart';
import 'package:mobile/src/ui/shared/highweh_buttons.dart';
import 'package:mobile/src/ui/themes/const_color.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TransactionWidgetFirstStep extends StatefulWidget {
  final PageController pageController;
  const TransactionWidgetFirstStep({
    Key key,
    this.pageController,
  }) : super(key: key);

  @override
  _TransactionWidgetFirstStepState createState() =>
      _TransactionWidgetFirstStepState();
}

class _TransactionWidgetFirstStepState
    extends State<TransactionWidgetFirstStep> {
  void _moveToNextStep() {
    widget.pageController.nextPage(
        duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DefaultElevatedButton(
                    text: AppLocalizations.of(context).newTransfer,
                    onPressed: _moveToNextStep,
                    backgroundColor: ThemeColors.RegisterCl,
                  ),
                  ButtonPrint(
                      text: AppLocalizations.of(context).print,
                      onPressed: () {},
                      icon: Icons.print,
                      color: ThemeColors.RegisterCl)
                ],
              ),
            ),
            _DateFromDateToWidget(),

            Container(
                width: 199.08,
                height: 30,
                decoration: BoxDecoration(
                  color: Color(0xfff5f6f8),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: AppLocalizations.of(context).filterBy,
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                                color: Color(0xFF6A707E),
                                fontFamily: 'Poppins'),
                          ),
                          TextSpan(
                            text: AppLocalizations.of(context).status,
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              color: Color(0xFF109CF1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.arrow_drop_down),
                      color: Color(0xFFAEAEAE),
                      onPressed: () {},
                    )
                  ],
                )),

            Container(
              margin: const EdgeInsets.fromLTRB(16, 15, 16, 20),
              width: 328,
              height: 350,
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
                    offset: Offset(
                      0,
                      1,
                    ),
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Column(
                    children: [
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          const SizedBox(width: 50),
                          Text(
                            AppLocalizations.of(context).allTransactions,
                            style: TextStyle(
                              color: Color(
                                0xff3c4858,
                              ),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Poppins",
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Container(
                        width: 328,
                        height: 71,
                        decoration: BoxDecoration(
                          color: Color(
                            0xffcde9ce,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color(
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
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    AppLocalizations.of(context)
                                        .status
                                        .toUpperCase(),
                                    style: TextStyle(
                                      color: Color(
                                        0xff333333,
                                      ),
                                      fontSize: 8,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Poppins",
                                    ),
                                  ),
                                  Text(
                                    "FCFA",
                                    style: TextStyle(
                                      color: Color(
                                        0xff333333,
                                      ),
                                      fontSize: 8,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Poppins",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.done_outline,
                                    size: 20,
                                    color: Color(
                                      0xff2ed47a,
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: 'Jane Doe ',
                                              style: TextStyle(
                                                color: Color(
                                                  0xff334d6e,
                                                ),
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "Poppins",
                                              ),
                                            ),
                                            TextSpan(
                                              text: '->  Jean Paul',
                                              style: TextStyle(
                                                color: Color(
                                                  0xff334d6e,
                                                ),
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "Poppins",
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text(
                                        AppLocalizations.of(context).commentTxt,
                                        style: TextStyle(
                                          color: Color(
                                            0xff334d6e,
                                          ),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Lato",
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "—250",
                                    style: TextStyle(
                                      color: Color(
                                        0xfff7685b,
                                      ),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Poppins",
                                    ),
                                    textAlign: TextAlign.right,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const SizedBox(height: 5),
                      Container(
                        width: 328,
                        height: 71,
                        decoration: BoxDecoration(
                          color: Color(
                            0xffb8ecf3,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color(
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
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.done_outline,
                                    size: 20,
                                    color: Color(
                                      0xff109cf1,
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: 'Grace Che ',
                                              style: TextStyle(
                                                color: Color(
                                                  0xff334d6e,
                                                ),
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "Poppins",
                                              ),
                                            ),
                                            TextSpan(
                                              text: '->  Jean Paul',
                                              style: TextStyle(
                                                color: Color(
                                                  0xff334d6e,
                                                ),
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "Poppins",
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text(
                                        AppLocalizations.of(context)
                                            .commentTxt2,
                                        style: TextStyle(
                                          color: Color(
                                            0xff334d6e,
                                          ),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Lato",
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "+950",
                                    style: TextStyle(
                                      color: Color(
                                        0xfff7685b,
                                      ),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Poppins",
                                    ),
                                    textAlign: TextAlign.right,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 5),
                      Container(
                        width: 328,
                        height: 71,
                        decoration: BoxDecoration(
                          color: Color(
                            0xFFFFFFFF,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color(
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
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.close,
                                    size: 24,
                                    color: Color(
                                      0xfff7685b,
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: 'Jane Doe ',
                                              style: TextStyle(
                                                color: Color(
                                                  0xff334d6e,
                                                ),
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "Poppins",
                                              ),
                                            ),
                                            TextSpan(
                                              text: '->  HIGHWEH',
                                              style: TextStyle(
                                                color: Color(
                                                  0xff334d6e,
                                                ),
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "Poppins",
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text(
                                        AppLocalizations.of(context)
                                            .platformcharges,
                                        style: TextStyle(
                                          color: Color(
                                            0xff334d6e,
                                          ),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Lato",
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "—50",
                                    style: TextStyle(
                                      color: Color(
                                        0xfff7685b,
                                      ),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Poppins",
                                    ),
                                    textAlign: TextAlign.right,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 5),
                      TransactionItem(),
                    ],
                  ),
                  Positioned(
                    top: -15,
                    left: 10,
                    height: 30,
                    width: 30,
                    child: Container(
                      width: 49.8,
                      height: 51.39,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          3,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(
                              0x23000000,
                            ),
                            offset: Offset(
                              0,
                              4,
                            ),
                            blurRadius: 4,
                          ),
                          BoxShadow(
                            color: Color(
                              0x66e91e63,
                            ),
                            offset: Offset(
                              0,
                              7,
                            ),
                            blurRadius: 10,
                            spreadRadius: -5,
                          ),
                        ],
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
                          Icons.assignment,
                          size: 10,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //Continue Here
          ],
        ),
      ),
    );
  }
}

class _DateFromDateToWidget extends StatelessWidget {
  const _DateFromDateToWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            width: 142.78,
            height: 54.03,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
              boxShadow: [
                BoxShadow(
                  color: Color(
                    0x23000000,
                  ),
                  offset: Offset(
                    0,
                    1,
                  ),
                  blurRadius: 4,
                ),
              ],
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    Center(
                      child: Text(
                        AppLocalizations.of(context).dateFrom,
                        style: TextStyle(
                          color: Color(
                            0xff3c4858,
                          ),
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          fontFamily: "Roboto",
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        "10/06/2018",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Color(
                            0xff3c4858,
                          ),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto",
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: -10,
                  left: 5,
                  height: 23,
                  width: 25,
                  child: Container(
                    width: 49.8,
                    height: 51.39,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        3,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(
                            0x23000000,
                          ),
                          offset: Offset(
                            0,
                            4,
                          ),
                          blurRadius: 4,
                        ),
                        BoxShadow(
                          color: Color(
                            0x66e91e63,
                          ),
                          offset: Offset(
                            0,
                            7,
                          ),
                          blurRadius: 10,
                          spreadRadius: -5,
                        ),
                      ],
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
                      child: const Icon(
                        Icons.library_add,
                        size: 10,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(
              10,
              10,
              10,
              10,
            ),
            width: 142.78,
            height: 54.03,
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
                  offset: Offset(
                    0,
                    1,
                  ),
                  blurRadius: 4,
                ),
              ],
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const SizedBox(height: 10),
                    Center(
                      child: Text(
                        AppLocalizations.of(context).dateTo,
                        style: TextStyle(
                          color: Color(
                            0xff3c4858,
                          ),
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          fontFamily: "Roboto",
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Text(
                        "10/16/2018",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Color(
                            0xff3c4858,
                          ),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto",
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: -10,
                  left: 5,
                  height: 23,
                  width: 25,
                  child: Container(
                    width: 49.8,
                    height: 51.39,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        3,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(
                            0x23000000,
                          ),
                          offset: Offset(
                            0,
                            4,
                          ),
                          blurRadius: 4,
                        ),
                        BoxShadow(
                          color: Color(
                            0x66e91e63,
                          ),
                          offset: Offset(
                            0,
                            7,
                          ),
                          blurRadius: 10,
                          spreadRadius: -5,
                        ),
                      ],
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
                    child: const Center(
                      child: Icon(
                        Icons.library_add,
                        size: 10,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class TransactionItem extends StatelessWidget {
  const TransactionItem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328,
      height: 71,
      decoration: BoxDecoration(
        color: Color(
          0xFFFFFFFF,
        ),
        boxShadow: [
          BoxShadow(
            color: Color(
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
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.close,
                  size: 24,
                  color: Color(
                    0xfff7685b,
                  ),
                ),
                Column(
                  children: [
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Peter Ndi ',
                            style: TextStyle(
                              color: Color(
                                0xff334d6e,
                              ),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Poppins",
                            ),
                          ),
                          TextSpan(
                            text: '->  Jean Paul',
                            style: TextStyle(
                              color: Color(
                                0xff334d6e,
                              ),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Poppins",
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      AppLocalizations.of(context).rent,
                      style: TextStyle(
                        color: Color(
                          0xff334d6e,
                        ),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Lato",
                      ),
                    ),
                  ],
                ),
                Text(
                  "+1500",
                  style: TextStyle(
                    color: Color(
                      0xff2ed47a,
                    ),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Poppins",
                  ),
                  textAlign: TextAlign.right,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
