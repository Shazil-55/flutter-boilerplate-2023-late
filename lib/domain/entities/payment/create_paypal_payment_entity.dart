class CreatePayPalEntity {
  String payPalToken;
  Map<String, dynamic> transaction;

  CreatePayPalEntity({
    required this.payPalToken,
    required this.transaction,
  });

  Map<String, dynamic> toMap() {
    return {
      'token': payPalToken,
      'transaction': transaction,
    };
  }
}
