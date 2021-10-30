import 'package:mobile/src/core/api/http_client.dart';
import 'package:mobile/src/core/api/json_parsers/organisation/organisation_parser.dart';
import 'package:mobile/src/core/entities/all.dart';
import 'package:mobile/src/core/repository/account_repository.dart';
import 'package:mobile/src/core/services/services.dart';

/// ************************* Accounts Infrastructture ********************** */

class AccountOperation implements AccountRepository {
  SharedPrefService _prefService;
  static const _userKey = 'userInfo';

  @override
  Future<void> changeAccountAlias() async {
    try {
      final mapData = await _prefService?.getObject(_userKey) ?? '';
      final user = User.fromJson(mapData);
      if (user != null) {
        final response = await RequestREST(
          endpoint:
              '/branches/${user.branch}/organisations/${user.organisation}',
        ).executePut<Organisation>(const OrganisationParser());
      }

      return null;
    } catch (e) {
      throw (e);
    }
  }
}

/// ************************* Accounts notifier ********************** */