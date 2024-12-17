class AcceptVendorRequestEntity {
  final String bookingId, eventStatus;

  AcceptVendorRequestEntity({required this.bookingId, required this.eventStatus});

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};

    map['booking_id'] = bookingId;
    map['event_status'] = eventStatus;

    return map;
  }
}
