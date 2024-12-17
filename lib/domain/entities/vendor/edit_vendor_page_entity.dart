import 'dart:io';
import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';

class EditVendorPageEntity {
  String? businessName;
  String? location;
  String? phone;
  String? website;
  String? lat, lng;
  String? charges;
  List<XFile?>? images;

  EditVendorPageEntity(
      {this.businessName, this.location, this.phone, this.website, this.images, this.lat, this.lng, this.charges});

  Future<Map<String, dynamic>> toMap() async {
    final Map<String, dynamic> map = <String, dynamic>{};
    map['location'] = location;
    map['business_name'] = businessName;
    map['phone'] = phone;
    map['website'] = website;
    map['lat'] = lat;
    map['lng'] = lng;
    map['charges'] = charges;
    int size = images?.length ?? 0;
    for (int i = 0; i < size; i++) {
      final element = images![i];
      if (element?.path != null) {
        File image = File(element!.path);
        String fileName = element.path.split('/').last;
        final f = await MultipartFile.fromFile(image.path, filename: fileName);
        map['media[$i]'] = f;
      }
    }

    return map;
  }
}
