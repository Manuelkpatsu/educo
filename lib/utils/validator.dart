import 'package:flutter/widgets.dart';

class Validator {
  static FormFieldValidator<String> email = (email) {
    if (email == null || email.isEmpty) {
      return 'Email is required';
    }

    String pattern = r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
    RegExp regExp = RegExp(pattern);
    if (!regExp.hasMatch(email)) {
      return 'Please enter a valid email';
    }

    return null;
  };

  static FormFieldValidator<String> username = (username) {
    if (username == null || username.isEmpty) {
      return 'Username is required';
    }

    return null;
  };

  static FormFieldValidator<String> password = (password) {
    if (password == null || password.isEmpty) {
      return 'Password is required';
    }

    if (password.length < 7) {
      return "Password must contain at least 8 characters";
    }

    return null;
  };

  static FormFieldValidator<String> newPassword = (password) {
    if (password == null || password.isEmpty) {
      return 'New Password is required';
    }

    if (password.length < 7) {
      return "Password must contain at least 8 characters";
    }

    return null;
  };
}
