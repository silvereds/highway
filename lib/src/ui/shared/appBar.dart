import 'package:flutter/material.dart';
import 'package:mobile/src/ui/views/user_profile.dart';

class AppBarView extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      brightness: Brightness.light,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      backgroundColor: Colors.white,
      title: Image.asset(
        'assets/images/HIGHWEH_HORIZONTAL.png',
        fit: BoxFit.contain,
        height: 45,
      ),
      centerTitle: true,
      actions: [
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 15, 10),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => UserProfile()),
              );
            },
            child: CircleAvatar(
              radius: 25,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          "https://avatars.githubusercontent.com/u/26025717?s=460&u=158987f9f457e1f3ec80e0aedb0ee4cc8b5ea9e4&v=4")),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
