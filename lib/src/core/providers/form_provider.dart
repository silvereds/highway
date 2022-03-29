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
  Validation _resetPasswordEmail = Validation(null, null);
  Validation _newPassword = Validation(null, null);
  Validation _passCode = Validation(null, null);

  Validation get email => _email;
  Validation get password => _password;
  Validation get phone => _phone;
  Validation get name => _name;
  Validation get resetPasswordEmail => _resetPasswordEmail;
  Validation get newPassword => _newPassword;
  Validation get passCode => _passCode;

  void validateEmailOrPhoneNumber(String val) {
    if (val.isValidEmail || val.isValidPhone) {
      _email = Validation(val, null);
    } else {
      _email = Validation(null, 'Please enter a valid Email or Phone number');
    }
    notifyListeners();
  }

  void validateResetPasswordEmail(String val) {
    if (val.isValidEmail) {
      _resetPasswordEmail = Validation(val, null);
    } else {
      _resetPasswordEmail = Validation(null, 'Please Enter a valid Email');
    }
    notifyListeners();
  }

  void validatePassword(String val) {
    if (val.isValidPassword) {
      _password = Validation(val, null);
    } else {
      _password = Validation(null,
          'Password must contain an uppercase, lowercase, numeric digit and special character');
    }
    notifyListeners();
  }

  void validateNewPassword(String val) {
    if (val.isValidPassword) {
      _newPassword = Validation(val, null);
    } else {
      _newPassword = Validation(null,
          'Password must contain an uppercase, lowercase, numeric digit and special character');
    }
    notifyListeners();
  }

  void validatePasscode(String val) {
    if (val.isValidPassCode) {
      _passCode = Validation(val, null);
    } else {
      _passCode = Validation(null, 'Please enter a valid passcode');
    }
    notifyListeners();
  }

  bool get isEmailOrPhoneIsValid {
    if (_email.value.isNotNull) {
      return true;
    } else {
      return false;
    }
  }

  bool get isValidateAuthForm {
    if (_email.value.isNotNull && _password.value.isNotNull) {
      return true;
    } else {
      return false;
    }
  }

  bool get isResetPasswordFormValid {
    if (_resetPasswordEmail.value.isNotNull) {
      return true;
    } else {
      return false;
    }
  }

  bool get isResetPasswordAuthFormValid {
    if (_newPassword.value.isNotNull && _passCode.value.isNotNull) {
      return true;
    } else {
      return false;
    }
  }
}
