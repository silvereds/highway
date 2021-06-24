import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height -
                Scaffold.of(context).appBarMaxHeight,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Icon(
                        Icons.notifications_outlined,
                        size: 30,
                      ),
                      title: Text(
                        "Notifications",
                        style: TextStyle(
                          color: Color(
                            0xffdadada,
                          ),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins",
                        ),
                      ),
                      onTap: () => Navigator.pop(context),
                    ),
                    ListTile(
                      leading: Icon(Icons.chat_outlined),
                      title: Text(
                        "Support",
                        style: TextStyle(
                          color: Color(
                            0xffdadada,
                          ),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins",
                        ),
                      ),
                      onTap: () => Navigator.pop(context),
                    ),
                    ExpansionTile(
                      leading: Icon(Icons.settings),
                      title: Text(
                        "Settings",
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
                                },
                                text: 'Preferences',
                                fontSize: 16,
                              ),
                              _SubMenuTextButton(
                                onTap: () {},
                                text: 'General Information',
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
                                      text: 'Police',
                                    ),
                                    _SubMenu(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      text: 'Terms & Conditions',
                                    ),
                                    _SubMenu(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      text: 'License Agreement',
                                    ),
                                    _SubMenu(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      text: 'Product & Service Info',
                                    ),
                                  ],
                                ),
                              ),
                              _SubMenuTextButton(
                                onTap: () {},
                                text: 'About',
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
                                      text: 'About Us',
                                    ),
                                    _SubMenu(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      text: 'Follow Us',
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
                  bottom: 0,
                  child: ListTile(
                    onTap: () {},
                    leading: Icon(Icons.logout),
                    title: Text(
                      "Logout",
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
        ),
      ),
    );
  }
}
//
// ListTile(
// leading: Icon(Icons.logout),
// title: Text('Logout'),
// )

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
                color: Colors.green,
              ),
              height: 10,
              width: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                text,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                  decoration: TextDecoration.underline,
                  fontFamily: "Poppins",
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
          ),
        ),
      ),
    );
  }
}
