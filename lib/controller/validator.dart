

class Validator {

  static bool isEmailValidate(String? email) {
    if (!RegExp(r'\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b')
        .hasMatch(email!)) {
      return true;
    } else {
      return false;
    }
  }

  static bool isPasswordValidate(String? password) {
    bool isValidPassword = password!.length >= 6 &&
        password.contains(RegExp(r'[A-Z]')) &&
        password.contains(RegExp(r'[a-z]')) &&
        password.contains(RegExp(r'[0-9]'));
    if (isValidPassword == true) {
      return false;
    } else {
      return true;
    }
  }
}