class VendorSignUpEntity {
  String email;
  String password;
  String passwordConfirmation;
  String? referrals;
  String name;
  String phone;
  String businessName;
  String role;
  String location;
  String radius;
  String vendorId;
  List<String> vendorCategoriesIds;

  VendorSignUpEntity(
      {required this.email,
      required this.password,
      required this.passwordConfirmation,
      this.referrals,
      required this.name,
      required this.businessName,
      required this.phone,
      required this.vendorId,
      required this.location,
      required this.vendorCategoriesIds,
      required this.radius,
      required this.role});

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'password': password,
      'password_confirmation': password,
      'location': location,
      'business_name': businessName,
      'phone': phone,
      'radius': radius,
      'name': name,
      'vendor_type_id': vendorId,
      'vendor_category_id': vendorCategoriesIds,
      'role': role
    };
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VendorSignUpEntity &&
          runtimeType == other.runtimeType &&
          email == other.email &&
          password == other.password;

  @override
  int get hashCode => email.hashCode ^ password.hashCode;
}
