import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LoginFormProvider extends ChangeNotifier {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';

  bool validateForm() {
    if (formKey.currentState!.validate()) {
      if (kDebugMode) {
        print('$email === $password');
      }
      return true;
    } else {
      if (kDebugMode) {
        print('Form not valid');
      }
      return false;
    }
  }
}
