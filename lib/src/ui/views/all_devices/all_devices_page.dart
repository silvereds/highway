import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile/src/core/providers/providers.dart';
import 'package:mobile/src/routes.dart';
import 'package:mobile/src/ui/shared/highweh_buttons.dart';
import 'package:mobile/src/ui/themes/const_color.dart';
import 'package:mobile/src/ui/views/all_accounts_view/components/accounts_status.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AllDevicesPage extends StatefulWidget {
  @override
  _AllDevicesPageState createState() => _AllDevicesPageState();
}

class _AllDevicesPageState extends State<AllDevicesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => context.read(devicesNotifierProvider).getListOfDevices(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
          top: 15,
          right: 30,
          child: ButtonPrint(
            color: ThemeColors.RegisterC,
            icon: Icons.print,
            onPressed: () {},
            text: AppLocalizations.of(context).printBntTxt,
          )
          // Container(
          //   width: 127,
          //   height: 42,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(
          //       3,
          //     ),
          //     gradient: LinearGradient(
          //       begin: Alignment.topRight,
          //       end: Alignment.bottomLeft,
          //       colors: [
          //         Color(0xff00cdac),
          //         Color(0xff4eb181),
          //       ],
          //       stops: [
          //         0,
          //         0.98,
          //       ],
          //     ),
          //   ),
          //   child: Center(
          //     child: Row(
          //       children: [
          //         SizedBox(width: 8),
          //         IconButton(
          //           icon: Icon(Icons.print),
          //           color: Color(0xFFFFFFFF),
          //           onPressed: () {},
          //         ),
          //         Text(
          //           "Print",
          //           style: TextStyle(
          //             color: Color(0xFFFFFFFF),
          //             fontSize: 14,
          //             fontFamily: 'Poppins',
          //           ),
          //         )
          //       ],
          //     ),
          //   ),
          ),
      Center(
        child: Container(
            height: 450,
            width: 324,
            margin: const EdgeInsets.fromLTRB(16, 55, 16, 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
              boxShadow: [
                BoxShadow(
                  color: Color(0x23000000),
                  offset: Offset(
                    0,
                    1,
                  ),
                  blurRadius: 4,
                ),
              ],
            ),
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              clipBehavior: Clip.none,
              children: [
                Column(
                  children: [
                    const SizedBox(height: 20),
                    Text(
                      AppLocalizations.of(context).devices,
                      style: TextStyle(
                        color: Color(0xFF3C4858),
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Divider(
                      thickness: 2,
                      color: Color(0xFFD8D8D8),
                    ),
                    Consumer(
                      builder: (context, watch, _) {
                        final devicesState =
                            watch(devicesNotifierProvider.state);

                        return devicesState.maybeWhen(
                          orElse: () => Center(
                            child: CircularProgressIndicator(),
                          ),
                          loadInProgress: () => Center(
                            child: CircularProgressIndicator(),
                          ),
                          loadInSuccess: (devices) {
                            if (devices.isEmpty) {
                              return Center(
                                child: Text('No Devices'),
                              );
                            }
                            return Expanded(
                              child: RefreshIndicator(
                                onRefresh: () async {
                                  await context
                                      .read(devicesNotifierProvider)
                                      .getListOfDevices();
                                },
                                child: Scrollbar(
                                  child: ListView.builder(
                                    itemCount: devices.length,
                                    itemBuilder: (context, i) => ListTile(
                                      onTap: () {
                                        Navigator.of(context).pushNamed(
                                          RouteGenerator.devicesDetailScreen,
                                          arguments: devices[i],
                                        );
                                      },
                                      title: Text('John Doe'),
                                      subtitle: Text('${devices[i]?.pin}'),
                                      trailing: AccountStatus(
                                        status: '${devices[i]?.status ?? '--'}',
                                      ),
                                    ),
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
                                          .read(devicesNotifierProvider)
                                          .getListOfDevices();
                                    },
                                    child: Text(
                                        AppLocalizations.of(context).tryAgain),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
                Positioned(
                  top: -30,
                  left: 15,
                  height: 65,
                  width: 63,
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
                        child: Icon(
                      Icons.credit_card,
                      size: 30,
                      color: Colors.white,
                    )),
                  ),
                ),
              ],
            )),
      ),
    ]);
  }
}
