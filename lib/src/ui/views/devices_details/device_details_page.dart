import 'package:flutter/material.dart';
import 'package:mobile/src/core/entities/all.dart';
import 'package:mobile/src/core/providers/providers.dart';
import 'package:mobile/src/ui/shared/appBar.dart';
import 'package:mobile/src/ui/shared/highweh_buttons.dart';
import 'package:mobile/src/ui/shared/navDrawer.dart';
import 'package:mobile/src/ui/shared/routes.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile/src/ui/themes/const_color.dart';
import 'package:mobile/src/ui/views/all_accounts_view/components/accounts_card_with_text.dart';
import 'components/button_alias_history.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DeviceDetailsPage extends StatefulWidget {
  final Devices devices;

  const DeviceDetailsPage({Key key, this.devices}) : super(key: key);
  @override
  _DeviceDetailsPageState createState() => _DeviceDetailsPageState();
}

class _DeviceDetailsPageState extends State<DeviceDetailsPage> {
  @override
  void initState() {
    super.initState();

    Future.microtask(() => context
        .read(linkedAccountToDevicesNotifer)
        .getAccountLinkedToDevices(widget.devices));
  }

  @override
  Widget build(BuildContext context) {
    // final dates = widget.devices.returnedOn.$date;
    // final createOn = DateTime.parse(dates).toString();
    return Scaffold(
      drawer: NavDrawer(),
      backgroundColor: const Color(0xFFF5F6F8),
      appBar: AppBarView(),
      body: SingleChildScrollView(
        child: Container(
            margin: const EdgeInsets.fromLTRB(10, 35, 10, 15),
            width: double.infinity,
            height: 800,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
              boxShadow: [
                BoxShadow(
                  color: Color(
                    0x23000000,
                  ),
                  blurRadius: 4,
                  offset: Offset(0, 1),
                ),
              ],
            ),
            child: Column(
              children: [
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(10.0),
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
                Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 15),
                    height: 250,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        6,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x23000000),
                          offset: Offset(0, 1),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 70,
                                child: RichText(
                                  text: TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: AppLocalizations.of(context)
                                            .deviceId,
                                        style: TextStyle(
                                          color: Color(
                                            0xff818e9b,
                                          ),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Poppins",
                                        ),
                                      ),
                                      TextSpan(
                                        text: widget.devices.id
                                                ?.substring(0, 9) ??
                                            '--',
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
                              SizedBox(
                                width: 85,
                                child: RichText(
                                  text: TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: AppLocalizations.of(context)
                                            .aliasName,
                                        style: TextStyle(
                                          color: Color(
                                            0xff818e9b,
                                          ),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Poppins",
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' Peter Ndi',
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
                              SizedBox(
                                width: 75,
                                child: RichText(
                                  text: TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: AppLocalizations.of(context)
                                            .devicePin,
                                        style: TextStyle(
                                          color: Color(
                                            0xff818e9b,
                                          ),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Poppins",
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' ${widget.devices.pin}' ?? '--',
                                        style: TextStyle(
                                          color: Color(0xff192a3e),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Poppins",
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 120,
                                child: RichText(
                                  text: TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: AppLocalizations.of(context)
                                            .aliasNumber,
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
                                        text: '\n+237 85940321',
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
                              SizedBox(
                                width: 120,
                                child: RichText(
                                  text: TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: AppLocalizations.of(context)
                                            .deviceType,
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
                                        text: ' RFID CARD',
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
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            HighwehButton(
                                onPress: () {
                                  Navigator.pushNamed(
                                      context, AppRoutes.changePinPage);
                                },
                                text: AppLocalizations.of(context).changePin,
                                height: 41,
                                color: ThemeColors.RegisterCl,
                                width: 144)
                          ],
                        ),
                        Divider(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: AppLocalizations.of(context)
                                          .dateIssued,
                                      style: TextStyle(
                                        color: Color(
                                          0xff818e9b,
                                        ),
                                        fontSize: 11,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' 12/12/2020',
                                      style: TextStyle(
                                        color: Color(
                                          0xff323c47,
                                        ),
                                        fontSize: 13,
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
                                      text: AppLocalizations.of(context).status,
                                      style: TextStyle(
                                        color: Color(
                                          0xff818e9b,
                                        ),
                                        fontSize: 11,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                    TextSpan(
                                      text: AppLocalizations.of(context).active,
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
                        ),
                      ],
                    )),
                SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Container(
                        width: 48,
                        height: 50,
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
                          ],
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color(0xff00cdac),
                              Color(0xff4eb181),
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
                          size: 30,
                          color: Colors.white,
                        )),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      SizedBox(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              AppLocalizations.of(context).linkedDevices,
                              style: TextStyle(
                                color: Color(0xff3c4858),
                                fontSize: 18,
                                fontWeight: FontWeight.w300,
                                fontFamily: "Roboto",
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Consumer(builder: (context, watch, __) {
                  final deviceState =
                      watch(linkedAccountToDevicesNotifer.state);

                  return deviceState.when(
                    intial: () => Container(),
                    loadInProgress: () => Center(
                      child: CircularProgressIndicator(),
                    ),
                    loadInSuccess: (data) {
                      if (data.isEmpty) {
                        return Center(
                            child: Text(
                                AppLocalizations.of(context).noLinkedAcct));
                      }
                      return Expanded(
                        child: ListView.builder(
                          itemCount: 4,
                          itemBuilder: (context, i) => ListView.separated(
                            physics: NeverScrollableScrollPhysics(),
                            padding: const EdgeInsets.only(bottom: 16),
                            itemCount: data.length,
                            shrinkWrap: true,
                            separatorBuilder: (context, i) => Container(
                              height: .75,
                              width: double.infinity,
                              color: Colors.grey,
                            ),
                            itemBuilder: (context, i) => AccountsCard(
                              onPressed: () {},
                              status: data[i].status,
                              text: "",
                              balance: data[i].balance.toString(),
                              accountNumber: data[i].number,
                              alias: data[i].tag,
                              type: ' - ${data[i].type}',
                            ),
                          ),
                        ),
                      );
                    },
                    loadFailure: (message) => Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(message),
                            TextButton(
                                onPressed: () async {
                                  await context
                                      .read(linkedAccountToDevicesNotifer)
                                      .getAccountLinkedToDevices(
                                          widget.devices);
                                },
                                child: Text(
                                  AppLocalizations.of(context).tryAgain,
                                ))
                          ],
                        ),
                      ),
                    ),
                  );
                }),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    HighwehButton(
                        onPress: () {
                          //  print('Alias History');
                        },
                        text: AppLocalizations.of(context).aliasHIstorybtn,
                        height: 45,
                        color: ThemeColors.RegisterCl,
                        width: 144),
                    const SizedBox(
                      width: 20,
                    )
                  ],
                ),
                // ButtonAliasHistory(),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 8,
                      ),
                      HighwehButton(
                          onPress: () {
                            Navigator.pushNamed(
                                context, AppRoutes.blockDevicePage);
                          },
                          text: AppLocalizations.of(context).blockDevicebtn,
                          height: 45,
                          color: ThemeColors.deficiteColor,
                          width: 128),
                      SizedBox(
                        width: 20,
                      ),
                      HighwehButton(
                          onPress: () {
                            Navigator.pushNamed(context, AppRoutes.changeAlias);
                          },
                          text: AppLocalizations.of(context).changeAlias,
                          height: 45,
                          color: ThemeColors.RegisterCl,
                          width: 128)
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
