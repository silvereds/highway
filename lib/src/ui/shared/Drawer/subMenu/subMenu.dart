import 'package:flutter/material.dart';
import 'package:mobile/src/ui/shared/Drawer/subMenu/subMenuItem.dart';
import 'package:mobile/src/ui/shared/Drawer/subMenu/sub_menu_text_button.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SubMenu extends StatelessWidget {
  const SubMenu({Key key, @required this.onTap}) : super(key: key);
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SubMenuTextButton(
          onTap: () => onTap(7), //{
          //   Navigator.pop(context);
          //   Navigator.pushNamed(context, '/settingPreference');
          //   //widget.showInTap(7);
          // },
          text: AppLocalizations.of(context).preferences,
          fontSize: 16,
        ),
        SubMenuTextButton(
          onTap: () {},
          text: AppLocalizations.of(context).generalInformation,
          fontSize: 16,
        ),
        Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Column(
              children: [
                SubMenuItem(
                  onTap: () => onTap(8), //() {
                  //Navigator.pop(context);
                  //Navigator.pushNamed(context, '/policyPage');
                  //},
                  text: AppLocalizations.of(context).policy,
                ),
                SubMenuItem(
                    onTap: () => onTap(9),
                    // onTap: () {
                    //   Navigator.pop(context);
                    //   Navigator.pushNamed(context, '/termsAndConditions');
                    // },
                    text: AppLocalizations.of(context).termsAndCondition),
                SubMenuItem(
                  onTap: () => onTap(10),
                  // onTap: () {
                  //   Navigator.pop(context);
                  //   Navigator.pushNamed(context, '/licenceAgreement');
                  // },
                  text: AppLocalizations.of(context).licenseText,
                ),
                SubMenuItem(
                  onTap: () => onTap(11),
                  // onTap: () {
                  //   Navigator.pop(context);
                  //   Navigator.pushNamed(context, '/productServicesPage');
                  // },
                  text: AppLocalizations.of(context).productServices,
                ),
              ],
            )),
        SubMenuTextButton(
          onTap: () {},
          text: AppLocalizations.of(context).about,
          fontSize: 16,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Column(
            children: [
              SubMenuItem(
                onTap: () {
                  Navigator.pop(context);
                },
                text: AppLocalizations.of(context).aboutUs,
              ),
              SubMenuItem(
                onTap: () {
                  Navigator.pop(context);
                },
                text: AppLocalizations.of(context).followUs,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
