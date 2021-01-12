import 'package:flutter/material.dart';
import 'package:mobile/views/user_profile.dart';

class AppBarView extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
                  image: NetworkImage("https://i.imgur.com/BoN9kdC.png"),
                ),
              )),
            ),
          ),
        )
      ],
    );
  }
}
