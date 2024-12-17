class UserSignUp {
  String email;
  String password;
  String confirmPassword;
  String name;
  String role;

  UserSignUp(
      {required this.email,
      required this.password,
      required this.confirmPassword,
      required this.name,
      required this.role});

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'password': password,
      'confirm_password': confirmPassword,
      'full_name': name,
      'role': "user",
    };
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserSignUp && runtimeType == other.runtimeType && email == other.email && password == other.password;

  @override
  int get hashCode => email.hashCode ^ password.hashCode;
}
