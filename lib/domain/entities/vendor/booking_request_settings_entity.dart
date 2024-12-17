class BookingRequestSettingsEntity {
  List<String>? requestDocument;

  BookingRequestSettingsEntity({this.requestDocument});

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['request_doc'] = requestDocument;
    return map;
  }
}
