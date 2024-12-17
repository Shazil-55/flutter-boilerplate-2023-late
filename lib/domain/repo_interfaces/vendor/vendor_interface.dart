// import 'package:dartz/dartz.dart';
// import 'package:last_minute/data/models/common/ad_reponse.dart';
// import 'package:last_minute/data/models/common/booking_response.dart';
// import 'package:last_minute/data/models/vendor/bookng_request_settings_response.dart';
// import 'package:last_minute/data/models/vendor/feature-ad/feature_ad_pricing.dart';
// import 'package:last_minute/data/models/vendor/feature-ad/subscribed_ad_response.dart';
// import 'package:last_minute/data/models/vendor/services/services_response.dart';
// import 'package:last_minute/data/models/vendor/user_response.dart';
// import 'package:last_minute/data/models/vendor/vendor_booking_response.dart';
// import 'package:last_minute/data/models/vendor/vendor_category_list.dart';
// import 'package:last_minute/data/models/vendor/vendor_summary_response.dart';
//
// import '../../../../application/core/failure/failure.dart';
// import '../../../data/models/vendor/memberships-response.dart';
// import '../../../data/models/vendor/subscribed_package_response.dart';
//
// abstract class IVendorRepo {
//   Future<Either<Failure, VendorCategoryList>> vendorCategories();
//
//   Future<Either<Failure, List<String>>> createCategories(Map<String, dynamic> data);
//
//   Future<Either<Failure, bool>> createService(Map<String, dynamic> data);
//
//   Future<Either<Failure, ServicesResponse>> fetchServices();
//
//   Future<Either<Failure, bool>> editService(Map<String, dynamic> data);
//
//   Future<Either<Failure, bool>> deleteService(int serviceId);
//
//   Future<Either<Failure, bool>> bidEvent(Map<String, dynamic> data);
//
//   Future<Either<Failure, UserResponse>> editAbout(String about);
//
//   Future<Either<Failure, UserResponse>> editVendorPage(Map<String, dynamic> data);
//
//   Future<Either<Failure, bool>> updateBookingRequestSettings(Map<String, dynamic> data);
//
//   Future<Either<Failure, BookingRequestSettingsResponse>> fetchBookingRequestSettings();
//
//   Future<Either<Failure, FeatureAdPricing>> fetchFeatureAdPricing();
//
//   Future<Either<Failure, SubscribedAdResponse>> subscribedAds();
//
//   Future<Either<Failure, bool>> createFeatureAd(Map<String, dynamic> data);
//
//   Future<Either<Failure, AdsResponse>> fetchAds();
//
//   Future<Either<Failure, MemberShipsResponse>> fetchMemberships();
//
//   Future<Either<Failure, SubscribedPackageResponse>> subscribedMembership();
//
//   Future<Either<Failure, VendorBookingsResponse>> fetchVendorBookings();
//
//   Future<Either<Failure, VendorSummaryResponse>> fetchVendorSummary();
//
//   Future<Either<Failure, bool>> vendorWithDrawRequest(String amount);
//
//   Future<Either<Failure, BookingResponse>> vendorOrderHistory();
// }
