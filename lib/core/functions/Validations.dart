bool isEmail(String email) {
  return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
}

bool isEGPhone(String phone) {
  return RegExp(r'^(010|011|012|015)[0-9]{8}$').hasMatch(phone);
}

bool isPassword(String password) {
  return RegExp(
    r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$',
  ).hasMatch(password);
}
