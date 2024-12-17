class VendorsListEntity {
  String? vendorTypeId;
  String? vendorCategoryId;
  String? location;
  String? lat, lng;

  VendorsListEntity({this.vendorCategoryId, this.vendorTypeId, this.location, this.lng, this.lat});

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    if (vendorTypeId != null) {
      map['vendor_type_id'] = vendorTypeId;
    }
    if (vendorCategoryId != null) {
      map['vendor_category_id'] = vendorCategoryId;
    }
    if (location != null) {
      map['location'] = location;
    }
    if (lat != null) {
      map['lat'] = lat;
    }
    if (lng != null) {
      map['lng'] = lng;
    }

    return map;
  }
}
