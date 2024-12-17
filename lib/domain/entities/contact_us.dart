class ContactUs {
  String? email, contact, message;

  ContactUs({this.message, this.email, this.contact});

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'contact': contact,
      'message': message,
    };
  }
}
