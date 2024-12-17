// import 'package:dartz/dartz.dart';
// import 'package:last_minute/data/models/common/ad_reponse.dart';
// import 'package:last_minute/data/models/common/booking_response.dart';
// import 'package:last_minute/data/models/vendor/bookng_request_settings_response.dart';
// import 'package:last_minute/data/models/vendor/create_categories.dart';
// import 'package:last_minute/data/models/vendor/feature-ad/feature_ad_pricing.dart';
// import 'package:last_minute/data/models/vendor/feature-ad/subscribed_ad_response.dart';
// import 'package:last_minute/data/models/vendor/services/services_response.dart';
// import 'package:last_minute/data/models/vendor/subscribed_package_response.dart';
// import 'package:last_minute/data/models/vendor/user_response.dart';
// import 'package:last_minute/data/models/vendor/vendor_booking_response.dart';
// import 'package:last_minute/data/models/vendor/vendor_category_list.dart';
// import 'package:last_minute/data/models/vendor/vendor_summary_response.dart';
// import 'package:last_minute/domain/entities/vendor/bid_event.dart';
// import 'package:last_minute/domain/entities/vendor/booking_request_settings_entity.dart';
// import 'package:last_minute/domain/entities/vendor/create_feature_ad_entity.dart';
// import 'package:last_minute/domain/entities/vendor/create_edit_service_entity.dart';
// import 'package:last_minute/domain/entities/vendor/edit_vendor_page_entity.dart';
// import 'package:last_minute/domain/repo_interfaces/vendor/vendor_interface.dart';
//
// import '../../../application/core/failure/failure.dart';
// import '../../../application/core/usecases/use_case.dart';
// import '../../../data/models/vendor/memberships-response.dart';
//
// class VendorCategoriesUseCase implements UseCase<VendorCategoryList, NoParams> {
//   VendorCategoriesUseCase(this.repository);
//
//   final IVendorRepo repository;
//
//   @override
//   Future<Either<Failure, VendorCategoryList>> call(NoParams noParams) async {
//     return repository.vendorCategories();
//   }
// }
//
// class CreateCategoriesUseCase implements UseCase<List<String>, CreateCategories> {
//   CreateCategoriesUseCase(this.repository);
//
//   final IVendorRepo repository;
//
//   @override
//   Future<Either<Failure, List<String>>> call(CreateCategories data) async {
//     return repository.createCategories(
//       data.toMap(),
//     );
//   }
// }
//
// class BidEventUseCase implements UseCase<bool, BidEvent> {
//   BidEventUseCase(this.repository);
//
//   final IVendorRepo repository;
//
//   @override
//   Future<Either<Failure, bool>> call(BidEvent params) async {
//     return repository.bidEvent(params.toMap());
//   }
// }
//
// class FetchAdsUseCase implements UseCase<AdsResponse, NoParams> {
//   FetchAdsUseCase(this.repository);
//
//   final IVendorRepo repository;
//
//   @override
//   Future<Either<Failure, AdsResponse>> call(NoParams noParams) async {
//     return repository.fetchAds();
//   }
// }
//
// class VendorCreateServiceUseCase implements UseCase<bool, CreateEditServiceEntity> {
//   VendorCreateServiceUseCase(this.repository);
//
//   final IVendorRepo repository;
//
//   @override
//   Future<Either<Failure, bool>> call(CreateEditServiceEntity params) async {
//     return repository.createService(await params.toMap());
//   }
// }
//
// class VendorFetchServicesUseCase implements UseCase<ServicesResponse, NoParams> {
//   VendorFetchServicesUseCase(this.repository);
//
//   final IVendorRepo repository;
//
//   @override
//   Future<Either<Failure, ServicesResponse>> call(NoParams noParams) async {
//     return repository.fetchServices();
//   }
// }
//
// class VendorEditServiceUseCase implements UseCase<bool, CreateEditServiceEntity> {
//   VendorEditServiceUseCase(this.repository);
//
//   final IVendorRepo repository;
//
//   @override
//   Future<Either<Failure, bool>> call(CreateEditServiceEntity params) async {
//     return repository.editService(await params.toMap());
//   }
// }
//
// class VendorDeleteServiceUseCase implements UseCase<bool, int> {
//   VendorDeleteServiceUseCase(this.repository);
//
//   final IVendorRepo repository;
//
//   @override
//   Future<Either<Failure, bool>> call(int serviceId) async {
//     return repository.deleteService(serviceId);
//   }
// }
//
// class VendorEditAboutUseCase implements UseCase<UserResponse, String> {
//   VendorEditAboutUseCase(this.repository);
//
//   final IVendorRepo repository;
//
//   @override
//   Future<Either<Failure, UserResponse>> call(String about) async {
//     return repository.editAbout(about);
//   }
// }
//
// class VendorEditPageUseCase implements UseCase<UserResponse, EditVendorPageEntity> {
//   VendorEditPageUseCase(this.repository);
//
//   final IVendorRepo repository;
//
//   @override
//   Future<Either<Failure, UserResponse>> call(EditVendorPageEntity params) async {
//     return repository.editVendorPage(await params.toMap());
//   }
// }
//
// class UpdateBookingRequestSettingsUseCase implements UseCase<bool, BookingRequestSettingsEntity> {
//   UpdateBookingRequestSettingsUseCase(this.repository);
//
//   final IVendorRepo repository;
//
//   @override
//   Future<Either<Failure, bool>> call(BookingRequestSettingsEntity params) {
//     return repository.updateBookingRequestSettings(params.toMap());
//   }
// }
//
// class FetchBookingRequestSettingsUpdate implements UseCase<BookingRequestSettingsResponse, NoParams> {
//   FetchBookingRequestSettingsUpdate(this.repository);
//
//   final IVendorRepo repository;
//
//   @override
//   Future<Either<Failure, BookingRequestSettingsResponse>> call(NoParams noParams) {
//     return repository.fetchBookingRequestSettings();
//   }
// }
//
// class FetchFeatureAdPricingUseCase implements UseCase<FeatureAdPricing, NoParams> {
//   FetchFeatureAdPricingUseCase(this.repository);
//
//   final IVendorRepo repository;
//
//   @override
//   Future<Either<Failure, FeatureAdPricing>> call(NoParams noParams) async {
//     return repository.fetchFeatureAdPricing();
//   }
// }
//
// class VendorSubscribedAdsUseCase implements UseCase<SubscribedAdResponse, NoParams> {
//   VendorSubscribedAdsUseCase(this.repository);
//
//   final IVendorRepo repository;
//
//   @override
//   Future<Either<Failure, SubscribedAdResponse>> call(NoParams noParams) async {
//     return repository.subscribedAds();
//   }
// }
//
// class VendorCreateFeatureAdUseCase implements UseCase<bool, CreateFeatureAdEntity> {
//   VendorCreateFeatureAdUseCase(this.repository);
//
//   final IVendorRepo repository;
//
//   @override
//   Future<Either<Failure, bool>> call(CreateFeatureAdEntity params) async {
//     return repository.createFeatureAd(await params.toMap());
//   }
// }
//
// class FetchVendorMemberShipsUseCase implements UseCase<MemberShipsResponse, NoParams> {
//   FetchVendorMemberShipsUseCase(this.repository);
//
//   final IVendorRepo repository;
//
//   @override
//   Future<Either<Failure, MemberShipsResponse>> call(NoParams noParams) async {
//     return repository.fetchMemberships();
//   }
// }
//
// class SubscribedMembershipUseCase implements UseCase<SubscribedPackageResponse, NoParams> {
//   SubscribedMembershipUseCase(this.repository);
//
//   final IVendorRepo repository;
//
//   @override
//   Future<Either<Failure, SubscribedPackageResponse>> call(NoParams noParams) async {
//     return repository.subscribedMembership();
//   }
// }
//
// class VendorBookings implements UseCase<VendorBookingsResponse, NoParams> {
//   VendorBookings(this.repository);
//
//   final IVendorRepo repository;
//
//   @override
//   Future<Either<Failure, VendorBookingsResponse>> call(NoParams noParams) async {
//     return repository.fetchVendorBookings();
//   }
// }
//
// class VendorSummaryUseCase implements UseCase<VendorSummaryResponse, NoParams> {
//   VendorSummaryUseCase(this.repository);
//
//   final IVendorRepo repository;
//
//   @override
//   Future<Either<Failure, VendorSummaryResponse>> call(NoParams noParams) async {
//     return repository.fetchVendorSummary();
//   }
// }
//
// class VendorWithDrawRequestUseCase implements UseCase<bool, String> {
//   VendorWithDrawRequestUseCase(this.repository);
//
//   final IVendorRepo repository;
//
//   @override
//   Future<Either<Failure, bool>> call(String amount) async {
//     return repository.vendorWithDrawRequest(amount);
//   }
// }
//
// class VendorOrderHistoryUseCase implements UseCase<BookingResponse, NoParams> {
//   VendorOrderHistoryUseCase(this.repository);
//
//   final IVendorRepo repository;
//
//   @override
//   Future<Either<Failure, BookingResponse>> call(NoParams noParams) async {
//     return repository.vendorOrderHistory();
//   }
// }
