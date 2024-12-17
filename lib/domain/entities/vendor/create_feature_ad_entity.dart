import 'dart:io';

import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';

class CreateFeatureAdEntity {
  String? adPricingId;
  XFile? image;

  CreateFeatureAdEntity({this.image, this.adPricingId});

  Future<Map<String, dynamic>> toMap() async {
    final Map<String, dynamic> map = <String, dynamic>{};

    map['ad_pricing_id'] = adPricingId;
    File imagePath = File(image!.path);
    String fileName = image!.path.split('/').last;
    final f = await MultipartFile.fromFile(imagePath.path, filename: fileName);
    map['media'] = f;

    return map;
  }
}
