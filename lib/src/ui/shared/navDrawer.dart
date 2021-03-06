import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile/src/core/common/utils.dart';
import 'package:mobile/src/core/providers/providers.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class NavDrawer extends StatefulWidget {
  @override
  _NavDrawerState createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  // This function logout the user
  void _logout() async {
    try {
      await context.read(AuthProvider.authProvider).logout().then(
        (_) {
          Navigator.of(context).pop();
        },
      );
    } catch (e) {
      Navigator.of(context).pop();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            parseApiError(e),
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    // var _pageSize = MediaQuery.of(context).size.height;
    // var _notifySize = MediaQuery.of(context).padding.top;
    // var _appBarSize = AppBar().preferredSize.height;
    return SafeArea(
      child: Drawer(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: AssetImage('assets/images/bg.png'),
                ),
              ),
            ),
            _Overlay(),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const SizedBox(height: 24),
                ListTile(
                  leading: Icon(
                    Icons.notifications_outlined,
                    size: 30,
                    color: Color(0xFFDADADA),
                  ),
                  title: Text(
                    AppLocalizations.of(context).notification,
                    style: TextStyle(
                      color: Color(
                        0xffdadada,
                      ),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/notificationScreen');
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.chat_outlined,
                    color: Color(0xFFDADADA),
                  ),
                  title: Text(
                    AppLocalizations.of(context).support,
                    style: TextStyle(
                      color: Color(
                        0xffdadada,
                      ),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/supportPage');
                  },
                ),
                ExpansionTile(
                  collapsedIconColor: Color(0xFFDADADA),
                  iconColor: Color(0xFFDADADA),
                  leading: Icon(
                    Icons.settings,
                    color: Color(0xFFDADADA),
                  ),
                  title: Text(
                    AppLocalizations.of(context).settings,
                    style: TextStyle(
                      color: Color(
                        0xffdadada,
                      ),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                    ),
                  ),
                  childrenPadding: EdgeInsets.only(bottom: 16),
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 32),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _SubMenuTextButton(
                            onTap: () {
                              Navigator.pop(context);
                              Navigator.pushNamed(
                                  context, '/settingPreference');
                            },
                            text: AppLocalizations.of(context).preferences,
                            fontSize: 16,
                          ),
                          _SubMenuTextButton(
                            onTap: () {},
                            text:
                                AppLocalizations.of(context).generalInformation,
                            fontSize: 16,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 24),
                            child: Column(
                              children: [
                                _SubMenu(
                                  onTap: () {
                                    Navigator.pop(context);
                                    Navigator.pushNamed(context, '/policyPage');
                                  },
                                  text: AppLocalizations.of(context).policy,
                                ),
                                _SubMenu(
                                    onTap: () {
                                      Navigator.pop(context);
                                      Navigator.pushNamed(
                                          context, '/termsAndConditions');
                                    },
                                    text: AppLocalizations.of(context)
                                        .termsAndCondition),
                                _SubMenu(
                                  onTap: () {
                                    Navigator.pop(context);
                                    Navigator.pushNamed(
                                        context, '/licenceAgreement');
                                  },
                                  text:
                                      AppLocalizations.of(context).licenseText,
                                ),
                                _SubMenu(
                                  onTap: () {
                                    Navigator.pop(context);
                                    Navigator.pushNamed(
                                        context, '/productServicesPage');
                                  },
                                  text: AppLocalizations.of(context)
                                      .productServices,
                                ),
                              ],
                            ),
                          ),
                          _SubMenuTextButton(
                            onTap: () {},
                            text: AppLocalizations.of(context).about,
                            fontSize: 16,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 24),
                            child: Column(
                              children: [
                                _SubMenu(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  text: AppLocalizations.of(context).aboutUs,
                                ),
                                _SubMenu(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  text: AppLocalizations.of(context).followUs,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 16,
              child: ListTile(
                onTap: _logout,
                leading: Icon(
                  Icons.logout,
                  color: Color(0xFFDADADA),
                ),
                title: Text(
                  AppLocalizations.of(context).logout,
                  style: TextStyle(
                    color: Color(
                      0xffdadada,
                    ),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Poppins",
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _Overlay extends StatelessWidget {
  const _Overlay({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF191919).withOpacity(0.77),
            Color(0xFF191919).withOpacity(0.77),
          ],
          stops: [
            0.77,
            0.77,
          ],
        ),
      ),
    );
  }
}

class _SubMenu extends StatelessWidget {
  final String text;
  final Function onTap;

  const _SubMenu({
    Key key,
    @required this.text,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFDADADA),
              ),
              height: 10,
              width: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: SizedBox(
                width: 200,
                child: Text(
                  text,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                    decoration: TextDecoration.underline,
                    fontFamily: "Poppins",
                    color: Color(0xFFDADADA),
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
          crossAxisAlignment: CrossAxisAlignment.center,
        ),
      ),
    );
  }
}

class _SubMenuTextButton extends StatelessWidget {
  final String text;
  final Function onTap;
  final double fontSize;

  const _SubMenuTextButton({
    Key key,
    @required this.text,
    @required this.onTap,
    this.fontSize = 16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            decoration: TextDecoration.underline,
            fontFamily: "Poppins",
            color: Color(0xFFDADADA),
          ),
        ),
      ),
    );
  }
}
