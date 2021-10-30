import 'package:flutter/material.dart';
import 'package:mobile/src/core/entities/all.dart';
import 'package:mobile/src/ui/shared/default_elevated_button.dart';
import 'package:mobile/src/ui/shared/highweh_buttons.dart';
import 'package:mobile/src/ui/themes/const_color.dart';

import '../../../routes.dart';
import 'components/linked_devices.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
                      ButtonPrint(
                        text: AppLocalizations.of(context).bntBackText,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        color: ThemeColors.RegisterC,
                        icon: Icons.arrow_back_ios,
                      ),
                      ButtonPrint(
                        text: AppLocalizations.of(context).printBntTxt,
                        onPressed: () {},
                        color: ThemeColors.RegisterC,
                        icon: Icons.print,
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
                                    text: AppLocalizations.of(context)
                                        .accountNumber,
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
                                  text:
                                      '${AppLocalizations.of(context).accountName}\n',
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
                                  text: '${AppLocalizations.of(context).tag}\n',
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
                                  text:
                                      '${AppLocalizations.of(context).accountBalance}\n',
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
                                  text: AppLocalizations.of(context).dateOpened,
                                  style: TextStyle(
                                    color: Color(0xff818e9b),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                                TextSpan(
                                  text: widget.account.createdOn?.$date
                                          .toString()
                                          .substring(0, 10) ??
                                      '',
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
                                  text: AppLocalizations.of(context).status,
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
                Text(
                  AppLocalizations.of(context).linkedDevices,
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
                    alias: AppLocalizations.of(context).alias,
                    id: 'ID',
                  ),
                ),
                if (widget.account == null)
                  Center(
                    child: Text(AppLocalizations.of(context).noDevice),
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
                    HighwehButton(
                        onPress: () {
                          Navigator.pushNamed(
                              context, RouteGenerator.blockAccount);
                        },
                        text: AppLocalizations.of(context).accountBlock,
                        height: 40,
                        color: ThemeColors.deficiteColor,
                        width: 93),
                    HighwehButton(
                        onPress: () {
                          Navigator.pushNamed(
                              context, RouteGenerator.changeAlias);
                        },
                        text: AppLocalizations.of(context).changeAlias,
                        height: 40,
                        color: ThemeColors.RegisterCl,
                        width: 93),
                    HighwehButton(
                        onPress: () {
                          Navigator.pushNamed(
                              context, RouteGenerator.rechargeAccountpage);
                        },
                        text: AppLocalizations.of(context).recharge,
                        height: 40,
                        color: ThemeColors.RegisterCl,
                        width: 93)
                  ],
                ),
                const SizedBox(height: 16),
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
              color: ThemeColors.subtitleTxt,
              fontSize: 15,
              fontWeight: FontWeight.bold,
              fontFamily: "Poppins",
            ),
          ),
          Text(
            alias,
            style: const TextStyle(
              color: ThemeColors.subtitleTxt,
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
            offset: const Offset(
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
