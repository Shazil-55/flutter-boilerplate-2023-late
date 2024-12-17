import 'dart:io';

import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';

class CreateEditServiceEntity {
  int? serviceId;
  String? title;
  double? price;
  String? groupId;
  String? groupName;
  XFile? media;

  CreateEditServiceEntity({this.title, this.price, this.groupId, this.groupName, this.serviceId, this.media});

  Future<Map<String, dynamic>> toMap() async {
    final map = <String, dynamic>{};
    if (serviceId != null) {
      map['serviceId'] = serviceId;
    }
    map['title'] = title;
    map['price'] = price;
    if (media != null) {
      File image = File(media!.path);
      String fileName = media!.path.split('/').last;
      final f = await MultipartFile.fromFile(image.path, filename: fileName);
      map['media'] = f;
    }
    if (groupId != null) {
      map['group_id'] = groupId;
    }
    if (groupName != null) {
      map['group_name'] = groupName;
    }
    return map;
  }
}
