String? emailValidator(String? value) {
  if (value == null || value.trim().isEmpty) {
    return "Email is required";
  }

  final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

  if (!emailRegex.hasMatch(value.trim())) {
    return "Enter a valid email";
  }

  return null;
}

String? passwordValidator(String? value) {
  if (value == null || value.trim().isEmpty) {
    return "Password is required";
  }

  if (value.length < 6) {
    return "Password must be at least 6 characters";
  }

  return null;
}

String? usernameValidator(String? value) {
  if (value == null || value.trim().isEmpty) {
    return "Username is required";
  }
  if (value.length < 3) {
    return "Username must be at least 3 characters";
  }
  return null;
}
