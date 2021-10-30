import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile/src/core/common/screens_arguments.dart';
import 'package:mobile/src/core/providers/providers.dart';
import 'package:mobile/src/ui/shared/routes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'components/accounts_card_with_text.dart';

class AccountsView extends StatefulWidget {
  @override
  _AccountsViewState createState() => _AccountsViewState();
}

class _AccountsViewState extends State<AccountsView> {
  final List<String> entries = <String>['Active', 'Blocked' 'Active'];

  Map<String, dynamic> account = {
    'accountNumber': 'CMR122334455-01',
    'balance': "27,0987",
    'alias': 'Jane doe',
    'status': 'Active'
  };

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 55),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Color(
                0x23000000,
              ),
              offset: const Offset(0, 1),
              blurRadius: 4,
            ),
          ],
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    AppLocalizations.of(context).allAccount,
                    style: TextStyle(
                      color: Color(
                        0xFF3C4858,
                      ),
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
                const Divider(
                  color: Color(
                    0xFFD2D2D2,
                  ),
                  indent: 5,
                  endIndent: 5,
                ),
                const SizedBox(height: 15),
                Consumer(
                  builder: (context, watch, __) {
                    final userDetail =
                        watch(UserDetailProvider.userDetailProvider);

                    return userDetail.when(
                      data: (user) {
                        if (user.accounts.isEmpty) {
                          return Center(
                            child: Padding(
                                padding: const EdgeInsets.only(bottom: 16),
                                child: Text(
                                  AppLocalizations.of(context).noAccount,
                                )),
                          );
                        }
                        return ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          padding: const EdgeInsets.only(bottom: 16),
                          itemCount: user.accounts.length,
                          shrinkWrap: true,
                          separatorBuilder: (context, i) => Container(
                            height: .75,
                            width: double.infinity,
                            color: Colors.grey,
                          ),
                          itemBuilder: (context, i) => AccountsCard(
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                AppRoutes.accoutsDetailsView,
                                arguments: AccountViewDetailArguments(
                                  accounts: user.accounts[i],
                                  accountName: user.name,
                                ),
                              );
                            },
                            status: user.accounts[i].status,
                            text: "",
                            balance: user.accounts[i].balance.toString(),
                            accountNumber: user.accounts[i].number,
                            alias: user.accounts[i].tag,
                            type: ' - ${user.accounts[i].type}',
                          ),
                        );
                      },
                      loading: () => Center(
                        child: CircularProgressIndicator(),
                      ),
                      error: (err, stack) => Center(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(err),
                              const SizedBox(height: 4),
                              ElevatedButton(
                                onPressed: () async => await context
                                    .read(AuthProvider.authProvider)
                                    .getUserInfo(),
                                child:
                                    Text(AppLocalizations.of(context).tryAgain),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
            _AccountBoxIcon(),
          ],
        ),
      ),
    );
  }
}

class _AccountBoxIcon extends StatelessWidget {
  const _AccountBoxIcon({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -30,
      left: 15,
      height: 63,
      width: 63,
      child: Container(
        width: 49.8,
        height: 51.39,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              const Color(0xff00cdac),
              const Color(0xff4eb181),
            ],
            stops: [
              0,
              0.98,
            ],
          ),
        ),
        child: Center(
          child: const Icon(
            Icons.person_outline_outlined,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
