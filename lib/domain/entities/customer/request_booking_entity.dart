class RequestBookingEntity {
  int? eventId;
  int? vendorServiceId;
  int? vendorId;

  String? eventTitle;
  String? date;
  String? startTime;
  String? endTime;
  String? location, additionalInfo;
  String? noOfGuests;
  String? lat, lng;

  RequestBookingEntity(
      {this.eventId,
      this.vendorServiceId,
      this.vendorId,
      this.eventTitle,
      this.date,
      this.startTime,
      this.noOfGuests,
      this.location,
      this.additionalInfo,
      this.endTime,
      this.lng,
      this.lat});

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    if (eventId != null) {
      map['event_id'] = eventId;
    }
    if (vendorServiceId != null) {
      map['vendor_service_id'] = vendorServiceId;
    }
    if (vendorId != null) {
      map['vendor_id'] = vendorId;
    }
    if (date != null) {
      map['title'] = eventTitle;
      map['date'] = date;
      map['start_time'] = startTime;
      map['end_time'] = endTime;
      map['location'] = location;
      map['additional_info'] = additionalInfo;
      map['guests'] = noOfGuests;
      map['lat'] = lat ?? "0.0";
      map['lng'] = lng ?? "0.0";
    }
    return map;
  }
}
