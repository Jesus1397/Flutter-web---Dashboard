import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class RegisterFormProvider extends ChangeNotifier {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';
  String name = '';

  validateForm() {
    if (formKey.currentState!.validate()) {
      if (kDebugMode) {
        print('$email === $password === $name');
      }
    } else {
      if (kDebugMode) {
        print('Form not valid');
      }
    }
  }
}
