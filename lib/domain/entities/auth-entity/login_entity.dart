class LoginEntity {
  String email;
  String password;

  LoginEntity({
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'password': password,
    };
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LoginEntity && runtimeType == other.runtimeType && email == other.email && password == other.password;

  @override
  int get hashCode => email.hashCode ^ password.hashCode;
}
