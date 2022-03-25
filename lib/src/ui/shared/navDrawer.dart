import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile/src/core/common/utils.dart';
import 'package:mobile/src/core/providers/providers.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mobile/src/ui/shared/Drawer/drawer_item.dart';
import 'package:mobile/src/ui/shared/Drawer/profile_info.dart';
import 'package:mobile/src/ui/shared/Drawer/subMenu/subMenu.dart';

class NavDrawer extends StatefulWidget {
  const NavDrawer({Key key, @required this.showInTap}) : super(key: key);
  final Function showInTap;

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
            ListView(
              //mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const SizedBox(height: 10),
                Center(
                  child: Image(
                    width: 80,
                    height: 80,
                    image: AssetImage('assets/images/H_transparent.png'),
                  ),
                ),
                const SizedBox(height: 10),
                DrawerProfileInfo(
                    image: 'assets/images/HIGHWEH_HORIZONTAL.png',
                    label: "silvere",
                    icon: Icons.notifications_outlined),
                SizedBox(height: 20),
                DrawerItem(
                    icon: Icons.notifications_outlined,
                    label: AppLocalizations.of(context).notification,
                    index: 5,
                    onTap: widget.showInTap),
                DrawerItem(
                  icon: Icons.chat_outlined,
                  label: AppLocalizations.of(context).support,
                  index: 6,
                  onTap: widget.showInTap, /*route: '/supportPage'*/
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
                        child: SubMenu(onTap: widget.showInTap))
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
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
