class UserObject {
  String? id;
  String? role;
  String? fullName;
  String? lastName;
  String? email;
  String? mobile;
  String? socialMedia;
  String? gender;
  String? address;
  String? city;
  String? yearOfExperince;
  int? step;
  String? imageUrl;
  String? createdAt;
  String? updatedAt;
  String? emailConfirmationToken;
  String? accessToken;

  UserObject(
      {this.id,
      this.role,
      this.fullName,
      this.lastName,
      this.email,
      this.mobile,
      this.socialMedia,
      this.gender,
      this.address,
      this.city,
      this.yearOfExperince,
      this.step,
      this.imageUrl,
      this.createdAt,
      this.updatedAt,
      this.emailConfirmationToken,
      this.accessToken});

  UserObject.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    role = json['role'];
    fullName = json['full_name'];
    lastName = json['last_name'];
    email = json['email'];
    mobile = json['mobile'];
    socialMedia = json['social_media'];
    gender = json['gender'];
    address = json['address'];
    city = json['city'];
    yearOfExperince = json['year_of_experince'];
    step = json['step'];
    imageUrl = json['image_url'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    emailConfirmationToken = json['email_confirmation_token'];
    accessToken = json['accessToken'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['role'] = this.role;
    data['full_name'] = this.fullName;
    data['last_name'] = this.lastName;
    data['email'] = this.email;
    data['mobile'] = this.mobile;
    data['social_media'] = this.socialMedia;
    data['gender'] = this.gender;
    data['address'] = this.address;
    data['city'] = this.city;
    data['year_of_experince'] = this.yearOfExperince;
    data['step'] = this.step;
    data['image_url'] = this.imageUrl;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['email_confirmation_token'] = this.emailConfirmationToken;
    return data;
  }
}
