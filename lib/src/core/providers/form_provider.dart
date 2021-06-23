import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile/src/core/entities/entities.dart';

import '../extensions/string_extension.dart';

abstract class ValidationProvider {
  static final validationProvider =
      ChangeNotifierProvider((ref) => FormProvider());
}

class FormProvider extends ChangeNotifier {
  Validation _email = Validation(null, null);
  Validation _password = Validation(null, null);
  Validation _phone = Validation(null, null);
  Validation _name = Validation(null, null);

  Validation get email => _email;

  Validation get password => _password;

  Validation get phone => _phone;

  Validation get name => _name;

  String validateEmail(String val) {
    if (val.isValidEmail) {
      _email = Validation(val, null);
    } else {
      _email = Validation(null, 'Please Enter a Valid Email');
    }
    notifyListeners();
  }

  String validatePassword(String val) {
    if (val.isValidPassword) {
      _password = Validation(val, null);
    } else {
      _password = Validation(null,
          'Password must contain an uppercase, lowercase, numeric digit and special character');
    }
    notifyListeners();
  }

  bool get validate {
    if (_email.value.isNotNull && _password.value.isNotNull) {
      return true;
    } else {
      return false;
    }
  }
}
