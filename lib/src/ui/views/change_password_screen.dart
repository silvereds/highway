import 'package:flutter/material.dart';
import 'package:mobile/src/ui/shared/default_elevated_button.dart';
import 'package:mobile/src/ui/shared/default_textfield.dart';
import 'package:mobile/src/ui/shared/navDrawer.dart';
import 'package:mobile/src/ui/themes/const_color.dart';
import 'package:mobile/src/ui/views/user_profile.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword();
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F8),
      drawer: NavDrawer(),
      appBar: AppBar(
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
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        'Change Password',
                        style: TextStyle(
                          fontSize: 26,
                          color: ThemeColors.TextGreen,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      const SizedBox(height: 20),
                      DefaultTextFormField(
                        hinText: 'Old Password',
                        hintStyle: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF14A09F),
                        ),
                      ),
                      const SizedBox(height: 20),
                      DefaultTextFormField(
                        hinText: 'New Password',
                        hintStyle: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF14A09F),
                        ),
                      ),
                      const SizedBox(height: 20),
                      DefaultTextFormField(
                        hinText: 'Confirm Password',
                        hintStyle: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF14A09F),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    alignment: Alignment.bottomRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        DefaultElevatedButton(
                          text: 'Cancel',
                          onPressed: () {},
                          backgroundColor: Color(0xFFF44336),
                        ),
                        const SizedBox(width: 20),
                        DefaultElevatedButton(
                          text: 'Save',
                          onPressed: () {},
                          backgroundColor: ThemeColors.Buttons,
                        ),
                        const SizedBox(width: 20),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
