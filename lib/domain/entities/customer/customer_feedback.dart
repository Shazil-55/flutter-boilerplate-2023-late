class CustomerFeedBack {
  String? rating, remarks;
  String? booingId;

  CustomerFeedBack({this.rating, this.booingId, this.remarks});

  Map<String, dynamic> toMap() {
    return {
      'stars': rating,
      'remarks': remarks,
      'booking_id': booingId,
    };
  }
}
