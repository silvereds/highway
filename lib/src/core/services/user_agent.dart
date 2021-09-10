import 'package:flutter_user_agent/flutter_user_agent.dart';
import 'package:mobile/src/core/services/services.dart';

class UserAgentService {
  Future<void> getUserAgent() async {
    var _userAgent = '';
    try {
      _userAgent = await FlutterUserAgent.getPropertyAsync('userAgent');
      SharedPrefService()
          .saveString('deviceName', 'mobile-$_userAgent'.toLowerCase());
    } catch (e) {
      _userAgent = 'mobile';
    }
    print('user agent: $_userAgent');
  }
}
