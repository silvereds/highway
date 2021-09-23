import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:mobile/src/core/providers/providers.dart';
import 'package:mobile/src/routes.dart';
import 'package:mobile/src/ui/shared/appBar.dart';
import 'package:mobile/src/ui/shared/navDrawer.dart';
import 'package:mobile/src/ui/themes/const_color.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      backgroundColor: Color(0xFFF5F6F8),
      appBar: AppBarView(),
      body: Consumer(
        builder: (context, watch, __) {
          final userDetail = watch(UserDetailProvider.userDetailProvider);

          return userDetail.when(
            data: (user) {
              // Get date in a correct format
              // String date = user.bornOn;
              // String dateWithT = date.substring(0, 10);
              // DateTime dateTime = DateTime.parse(dateWithT);
              return SafeArea(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(20, 40, 20, 20),
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {});
                            },
                            child: Container(
                              margin: EdgeInsets.all(20),
                              width: 120.0,
                              height: 121.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  width: 4,
                                  color: Colors.green,
                                ),
                              ),
                              child: CachedNetworkImage(
                                fit: BoxFit.cover,
                                imageUrl: "http://via.placeholder.com/200x150",
                                imageBuilder: (context, imageProvider) =>
                                    Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(
                                        "https://avatars.githubusercontent.com/u/26025717?s=460&u=158987f9f457e1f3ec80e0aedb0ee4cc8b5ea9e4&v=4",
                                      ),
                                    ),
                                  ),
                                ),
                                placeholder: (context, url) =>
                                    Center(child: CircularProgressIndicator()),
                                errorWidget: (context, url, error) =>
                                    Icon(Icons.error),
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                user.name,
                                style: const TextStyle(
                                  color: Color(0xFF000000),
                                  fontSize: 30,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                user.email,
                                style: const TextStyle(
                                    color: Color(0xFF192A3E),
                                    fontSize: 18,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w200),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                user.phone,
                                style: const TextStyle(
                                    color: Color(0xFF192A3E),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              GestureDetector(
                                onTap: () => Navigator.pushNamed(
                                    context, '/companyProfile'),
                                child: RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                        color: Color(0xFF109CF1),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                    children: [
                                      TextSpan(text: "Touristic Voyage"),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          const Divider(
                            color: Color(0xFF2F80ED),
                            indent: 50,
                            endIndent: 50,
                            thickness: 1,
                          ),
                          const SizedBox(height: 25),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Personal Details',
                                style: TextStyle(
                                  color: Color(0xFF4CAF50),
                                  fontSize: 12,
                                ),
                              ),
                              const SizedBox(height: 20),
                              const Text(
                                'Address: ',
                                style: TextStyle(
                                  color: Color(0xFF818E9B),
                                  fontSize: 14,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(user.address,
                                  style: TextStyle(
                                    color: Color(0xFF192A3E),
                                    fontSize: 14,
                                  )),
                              const SizedBox(height: 10),
                              const Text(
                                'Date of Birth:',
                                style: TextStyle(
                                  color: Color(0xFF818E9B),
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                user.bornOn,
                                style: TextStyle(
                                  color: Color(0xFF192A3E),
                                  fontSize: 14,
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text('Place Of Birth:',
                                  style: TextStyle(
                                    color: Color(0xFF818E9B),
                                    fontSize: 14,
                                  )),
                              Text(
                                user.bornAt,
                                style: TextStyle(
                                  color: Color(0xFF192A3E),
                                  fontSize: 14,
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text('Profession:',
                                  style: TextStyle(
                                    color: Color(0xFF818E9B),
                                    fontSize: 14,
                                  )),
                              Text(
                                'Driver',
                                style: TextStyle(
                                  color: Color(0xFF192A3E),
                                  fontSize: 14,
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text('Gender:',
                                  style: TextStyle(
                                    color: Color(0xFF818E9B),
                                    fontSize: 14,
                                  )),
                              Text(user.gender,
                                  style: TextStyle(
                                    color: Color(0xFF192A3E),
                                    fontSize: 14,
                                  )),
                              const SizedBox(height: 20),
                            ],
                          ),
                          const Divider(
                            color: Color(0xFF2F80ED),
                            indent: 50,
                            endIndent: 50,
                            thickness: 1,
                          ),
                          const SizedBox(height: 30),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 16),
                                child: const Text(
                                  'Documents',
                                  style: TextStyle(
                                      color: Color(0xFF4CAF50),
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                              const SizedBox(height: 24),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Text(
                                    'National Identity card',
                                    style: TextStyle(
                                      color: Color(0xFF2ED47A),
                                      fontSize: 14,
                                    ),
                                  ),
                                  const Icon(
                                    Icons.done_outline_rounded,
                                    color: Color(0xFF2ED47A),
                                  ),
                                  const Text(
                                    'Submited',
                                    style: TextStyle(
                                        color: Color(0xFF818E9B), fontSize: 14),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Text(
                                    'Proof of address',
                                    style: TextStyle(
                                      color: Color(0xFFF7685B),
                                      fontSize: 14,
                                    ),
                                  ),
                                  const Icon(
                                    Icons.clear,
                                    color: Color(0xFFF7685B),
                                  ),
                                  const Text(
                                    'Submited',
                                    style: TextStyle(
                                        color: Color(0xFF818E9B), fontSize: 14),
                                  ),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(height: 10),
                          Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                child: Card(
                                  margin: const EdgeInsets.only(
                                      left: 30, right: 30, bottom: 30, top: 20),
                                  clipBehavior: Clip.none,
                                  elevation: 5,
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: const Text(
                                      'Please contact support if any of these details are not correct or need to be updated',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color: Color(0xFF818E9B),
                                          fontSize: 14),
                                    ),
                                  ),
                                ),
                              )),
                          Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                FlatButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                    side:
                                        BorderSide(color: ThemeColors.Buttons),
                                  ),
                                  child: Text(
                                    'Change Password',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pushNamed(
                                        RouteGenerator.changePasswordScreen);
                                  },
                                  color: Color(0xFF4EB181),
                                  textColor: Color(0xFFFFFFFF),
                                  height: 33,
                                ),
                                const SizedBox(width: 30),
                                FlatButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                    side:
                                        BorderSide(color: ThemeColors.Buttons),
                                  ),
                                  child: Text(
                                    'Close',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                  onPressed: () {
                                    // Navigator.pop(context);
                                    Navigator.of(context)
                                        .pushNamedAndRemoveUntil(
                                            RouteGenerator.homeScreen,
                                            (route) => false);
                                  },
                                  color: Color(0xFF4EB181),
                                  textColor: Color(0xFFFFFFFF),
                                  height: 33,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
            loading: () => Center(
              child: CircularProgressIndicator(),
            ),
            error: (err, _) => Center(
              child: Text('Failed to load user data'),
            ),
          );
        },
      ),
    );
  }
}
