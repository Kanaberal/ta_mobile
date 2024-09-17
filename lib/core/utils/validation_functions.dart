bool isText(String? inputString, {bool isRequired = false}) {
  bool isInputStringValid = false;

  // Jika tidak wajib dan input kosong atau null, anggap valid
  if (!isRequired && (inputString == null || inputString.isEmpty)) {
    isInputStringValid = true;
  }

  // Jika input tidak kosong, lakukan validasi dengan RegExp
  if (inputString != null && inputString.isNotEmpty) {
    const pattern = r'^[a-zA-Z]+$';
    final regExp = RegExp(pattern);
    isInputStringValid = regExp.hasMatch(inputString);
  }

  return isInputStringValid;
}

bool isValidPassword(String? inputString, {bool isRequired = false}) {
  bool isInputStringValid = false;

  // Jika tidak wajib dan input kosong atau null, anggap valid
  if (!isRequired && (inputString == null || inputString.isEmpty)) {
    isInputStringValid = true;
  }

  // Jika input tidak kosong, lakukan validasi dengan RegExp untuk password
  if (inputString != null && inputString.isNotEmpty) {
    const pattern = r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[\w]).{8,}$';
    final regExp = RegExp(pattern);
    isInputStringValid = regExp.hasMatch(inputString);
  }

  return isInputStringValid;
}
