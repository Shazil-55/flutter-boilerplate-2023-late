class BidEvent {
  int? eventId;
  int? vendorServiceId;

  BidEvent({this.eventId, this.vendorServiceId});

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    if (eventId != null) {
      map['event_id'] = eventId;
    }
    if (vendorServiceId != null) {
      map['vendor_service_id'] = vendorServiceId;
    }

    return map;
  }
}
