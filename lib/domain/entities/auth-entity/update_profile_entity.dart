import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';

import '../../../common/logger/log.dart';

String updateProfileEntityToJson(UpdateProfileEntity data) => json.encode(data.toJson());

class UpdateProfileEntity {
  UpdateProfileEntity({
    this.id,
    this.name,
    this.phone,
    this.email,
    this.businessName,
    this.vendorTypeId,
    this.location,
    this.radius,
    this.profile,
    this.category,
    this.role,
  });

  int? id;
  String? name;
  String? phone;
  String? email;
  dynamic businessName;
  dynamic vendorTypeId;
  String? location;
  int? radius;
  XFile? profile;
  List<dynamic>? category;
  String? role;

  Future<FormData> toJson() async {
    if (profile != null) {
      d(profile!);
      return FormData.fromMap({
        "profile": await MultipartFile.fromFile(profile!.path, filename: profile!.path.split('/').last),
        "id": id,
        "name": name,
        "phone": phone,
        "email": email,
        "business_name": businessName,
        "vendor_type_id": vendorTypeId,
        "location": location,
        "radius": radius,
        "category": category == null ? [] : List<dynamic>.from(category!.map((x) => x)),
        "role": role,
      });
    } else {
      return FormData.fromMap({
        "id": id,
        "name": name,
        "phone": phone,
        "email": email,
        "business_name": businessName,
        "vendor_type_id": vendorTypeId,
        "location": location,
        "radius": radius,
        "category": category == null ? [] : List<dynamic>.from(category!.map((x) => x)),
        "role": role,
      });
    }
  }
}
