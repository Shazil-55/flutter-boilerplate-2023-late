// import 'package:dartz/dartz.dart';
// import 'package:last_minute/data/models/common/booking_response.dart';
// import 'package:last_minute/data/models/common/user_object.dart';
// import 'package:last_minute/data/models/customer/vendors_list_response.dart';
// import 'package:last_minute/data/models/vendor/services/services_response.dart';
// import 'package:last_minute/domain/entities/contact_us.dart';
// import 'package:last_minute/domain/entities/customer/accept_vendor_request.dart';
// import 'package:last_minute/domain/entities/customer/customer_feedback.dart';
// import 'package:last_minute/domain/entities/customer/request_booking_entity.dart';
// import 'package:last_minute/domain/entities/customer/vendors_list_entity.dart';
// import 'package:last_minute/domain/repo_interfaces/customer/customer_interface.dart';
//
// import '../../../application/core/failure/failure.dart';
// import '../../../application/core/usecases/use_case.dart';
// import '../../../data/models/customer/event/events_response.dart';
// import '../../../data/models/customer/liked_vendors_response.dart';
// import '../../../data/models/vendor/bookng_request_settings_response.dart';
//
// class CreateEventUseCase implements UseCase<bool, Future<Map<String, dynamic>>> {
//   CreateEventUseCase(this.repository);
//
//   final ICustomerRepo repository;
//
//   @override
//   Future<Either<Failure, bool>> call(Future<Map<String, dynamic>> data) async {
//     return repository.createEvent(data);
//   }
// }
//
// class EditEventUseCase implements UseCase<bool, Future<Map<String, dynamic>>> {
//   EditEventUseCase(this.repository);
//
//   final ICustomerRepo repository;
//
//   @override
//   Future<Either<Failure, bool>> call(Future<Map<String, dynamic>> data) async {
//     return repository.editEvent(data);
//   }
// }
//
// class DeleteEventUseCase implements UseCase<bool, int> {
//   DeleteEventUseCase(this.repository);
//
//   final ICustomerRepo repository;
//
//   @override
//   Future<Either<Failure, bool>> call(int eventId) async {
//     return repository.deleteEvent(eventId);
//   }
// }
//
// class ListEventsUseCase implements UseCase<Events, int> {
//   ListEventsUseCase(this.repository);
//
//   final ICustomerRepo repository;
//
//   @override
//   Future<Either<Failure, Events>> call(int pageNo) async {
//     return repository.listEvents(pageNo);
//   }
// }
//
// class FetchBadeVendors implements UseCase<UserObject, String> {
//   FetchBadeVendors(this.repository);
//
//   final ICustomerRepo repository;
//
//   @override
//   Future<Either<Failure, UserObject>> call(String vendorId) async {
//     return repository.fetchVendor(vendorId);
//   }
// }
//
// class FetchLikedVendors implements UseCase<LikedVendorsResponse, NoParams> {
//   FetchLikedVendors(this.repository);
//
//   final ICustomerRepo repository;
//
//   @override
//   Future<Either<Failure, LikedVendorsResponse>> call(NoParams noParams) async {
//     return repository.likedVendors();
//   }
// }
//
// class LikeUnlikedVendorUseCase implements UseCase<String, String> {
//   LikeUnlikedVendorUseCase(this.repository);
//
//   final ICustomerRepo repository;
//
//   @override
//   Future<Either<Failure, String>> call(String vendorId) async {
//     return repository.likedUnlikedVendor(vendorId);
//   }
// }
//
// class VendorsListUseCase implements UseCase<VendorsList, VendorsListEntity> {
//   VendorsListUseCase(this.repository);
//
//   final ICustomerRepo repository;
//
//   @override
//   Future<Either<Failure, VendorsList>> call(VendorsListEntity params) async {
//     return repository.vendorsList(params.toMap());
//   }
// }
//
// class VendorsServicesUseCase implements UseCase<ServicesResponse, int> {
//   VendorsServicesUseCase(this.repository);
//
//   final ICustomerRepo repository;
//
//   @override
//   Future<Either<Failure, ServicesResponse>> call(int vendorId) async {
//     return repository.vendorServices(vendorId);
//   }
// }
//
// class VendorBookingTypeUseCase implements UseCase<BookingRequestSettingsResponse, int> {
//   VendorBookingTypeUseCase(this.repository);
//
//   final ICustomerRepo repository;
//
//   @override
//   Future<Either<Failure, BookingRequestSettingsResponse>> call(int params) async {
//     return repository.vendorBookingTypes(params);
//   }
// }
//
// class RequestBookingUseCase implements UseCase<bool, RequestBookingEntity> {
//   RequestBookingUseCase(this.repository);
//
//   final ICustomerRepo repository;
//
//   @override
//   Future<Either<Failure, bool>> call(RequestBookingEntity params) async {
//     return repository.requestBooking(params.toMap());
//   }
// }
//
// class AcceptVendorRequest implements UseCase<bool, AcceptVendorRequestEntity> {
//   AcceptVendorRequest(this.repository);
//
//   final ICustomerRepo repository;
//
//   @override
//   Future<Either<Failure, bool>> call(AcceptVendorRequestEntity params) async {
//     return repository.acceptVendorRequest(params.toMap());
//   }
// }
//
// class CustomerReview implements UseCase<bool, CustomerFeedBack> {
//   CustomerReview(this.repository);
//
//   final ICustomerRepo repository;
//
//   @override
//   Future<Either<Failure, bool>> call(CustomerFeedBack params) async {
//     return repository.customerReview(params.toMap());
//   }
// }
//
// class OrderHistoryUseCase implements UseCase<BookingResponse, NoParams> {
//   OrderHistoryUseCase(this.repository);
//
//   final ICustomerRepo repository;
//
//   @override
//   Future<Either<Failure, BookingResponse>> call(NoParams noParams) async {
//     return repository.fetchOrderHistory();
//   }
// }
//
// class ContactUsUseCase implements UseCase<bool, ContactUs> {
//   ContactUsUseCase(this.repository);
//
//   final ICustomerRepo repository;
//
//   @override
//   Future<Either<Failure, bool>> call(ContactUs params) async {
//     return repository.contactUs(params.toMap());
//   }
// }
