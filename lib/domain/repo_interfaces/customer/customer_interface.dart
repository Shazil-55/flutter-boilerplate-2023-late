// import 'package:dartz/dartz.dart';
// import 'package:last_minute/data/models/common/user_object.dart';
// import 'package:last_minute/data/models/customer/vendors_list_response.dart';
// import 'package:last_minute/data/models/vendor/bookng_request_settings_response.dart';
// import 'package:last_minute/data/models/vendor/services/services_response.dart';
//
// import '../../../../application/core/failure/failure.dart';
// import '../../../data/models/common/booking_response.dart';
// import '../../../data/models/customer/event/events_response.dart';
// import '../../../data/models/customer/liked_vendors_response.dart';
// import '../../../data/models/vendor/user_response.dart';
//
// abstract class ICustomerRepo {
//   Future<Either<Failure, bool>> createEvent(Future<Map<String, dynamic>> data);
//
//   Future<Either<Failure, bool>> editEvent(Future<Map<String, dynamic>> data);
//
//   Future<Either<Failure, bool>> deleteEvent(int eventId);
//
//   Future<Either<Failure, Events>> listEvents(int pageNo);
//
//   Future<Either<Failure, UserObject>> fetchVendor(String vendorId);
//
//   Future<Either<Failure, LikedVendorsResponse>> likedVendors();
//
//   Future<Either<Failure, String>> likedUnlikedVendor(String vendorId);
//
//   Future<Either<Failure, VendorsList>> vendorsList(Map<String, dynamic> data);
//
//   Future<Either<Failure, ServicesResponse>> vendorServices(int vendorId);
//
//   Future<Either<Failure, BookingRequestSettingsResponse>> vendorBookingTypes(int vendorId);
//
//   Future<Either<Failure, bool>> requestBooking(Map<String, dynamic> data);
//
//   Future<Either<Failure, bool>> acceptVendorRequest(Map<String, dynamic> data);
//
//   Future<Either<Failure, bool>> customerReview(Map<String, dynamic> data);
//
//   Future<Either<Failure, BookingResponse>> fetchOrderHistory();
//
//   Future<Either<Failure, bool>> contactUs(Map<String, dynamic> data);
// }
