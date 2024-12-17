import 'package:dio/dio.dart';

import '../../../common/logger/log.dart';

class CreateEditEventEntity {
  int? eventId;
  String eventTitle;
  String date;
  String startTime;
  String endTime;
  String? location, additionalInfo;
  String? noOfGuests;
  String? lat, lng;
  List<String>? catIds;
  List<String>? images;

  CreateEditEventEntity(
      {required this.eventTitle,
      required this.date,
      required this.startTime,
      this.noOfGuests,
      this.location,
      this.eventId,
      this.additionalInfo,
      this.images,
      required this.endTime,
      this.lng,
      this.lat,
      this.catIds});

  Future<Map<String, dynamic>> toMap() async {
    final map = <String, dynamic>{};
    if (eventId != null) {
      map['eventId'] = eventId;
    }
    map['title'] = eventTitle;
    map['date'] = date;
    map['start_time'] = startTime;
    map['end_time'] = endTime;
    map['location'] = location;
    map['additional_info'] = additionalInfo;
    map['guests'] = noOfGuests;
    map['lat'] = lat;
    map['lng'] = lng;
    map['cat_id[]'] = catIds;

    if (images != null && images!.isNotEmpty) {
      d(images!.length);
      List<MultipartFile> list = [];
      for (int i = 0; i < images!.length; i++) {
        list.add( MultipartFile.fromFileSync(images![i]));
      }

      map['media[]'] = list.toList();
    }

    return map;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CreateEditEventEntity &&
          runtimeType == other.runtimeType &&
          eventTitle == other.eventTitle &&
          date == other.date;

  @override
  int get hashCode => eventTitle.hashCode ^ date.hashCode;
}
