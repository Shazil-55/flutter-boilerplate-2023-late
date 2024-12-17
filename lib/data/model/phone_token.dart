class PhoneToken {
  bool? status;
  String? message;
  String? token;

  PhoneToken({this.status, this.message, this.token});

  PhoneToken.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    data['token'] = token;
    return data;
  }
}
