// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:sitges/presentation/views/Edit-Address/all_address_view.dart';
// import 'package:sitges/presentation/views/auth/forget-password/forget_pass_view.dart';
// import 'package:sitges/presentation/views/auth/forget-password/forget_passowrd_view_model.dart';
// import 'package:sitges/presentation/views/auth/login/login_view.dart';
// import 'package:sitges/presentation/views/auth/sign-up/sign-up-view/sign_up_view.dart';
// import 'package:sitges/presentation/views/auth/sign-up/sign_up_view_model.dart';
// import 'package:sitges/presentation/views/auth_type_view.dart';
// import 'package:sitges/presentation/views/restaurant/dashboard-view/dashboard_view.dart';
// import 'package:sitges/presentation/views/restaurant/delivery/confirm_your_%20order_view.dart';
// import 'package:sitges/presentation/views/restaurant/order-tracking-delivery/incident_resolution_missing_products.dart';
// import 'package:sitges/presentation/views/restaurant/order-tracking-delivery/report_an_incident_missing_product.dart';
// import 'package:sitges/presentation/views/restaurant/order-tracking-delivery/report_an_incident_received_in_bad.dart';
// import 'package:sitges/presentation/views/restaurant/profile/filter_view.dart';
// import 'package:sitges/presentation/views/restaurant/profile/food_delivery_view.dart';
// import 'package:sitges/presentation/views/restaurant/profile/location-view/edit_address_view.dart';
// import 'package:sitges/presentation/views/restaurant/profile/location-view/map_view.dart';
// import 'package:sitges/presentation/views/restaurant/profile/restaurant_detail_view.dart';
// import 'package:sitges/presentation/views/splash/splash_view.dart';
//
// import '../core/routes/routes.dart';
//
// class RouteManager {
//   static const rInitial = '/';
//   static const rReportAnIncidentReceivedInBad = '/rReportAnIncidentReceivedInBad';
//   static const rReportAnIncidentMissingProduct = '/rReportAnIncidentMissingProduct';
//   static const rIncidentResolutionMissingProducts = '/rIncidentResolutionMissingProducts';
//   static const rAuthTypeView = '/authTypeView';
//   static const rLoginView = '/rLoginView';
//   static const rSignUpView = '/rSignUpView';
//   static const rForgetPasswordView = '/rForgetPasswordView';
//   static const rRestaurantDashboard = '/rRestaurantDashboard';
//   static const rFoodDeliveryView = '/rFoodDeliveryView';
//   static const rFilterView = '/rFilterView';
//   static const rMapView = '/rMapView';
//   static const rEditAddress = '/rEditAddress';
//   static const rRestaurantDetailView = '/rRestaurantDetailView';
//   static const rAllAddressView = '/rAllAddressView';
//   static const rConfirmYourOrderView = '/rConfirmYourOrderView';
//
// }
//
// class RouteGenerator {
//   static Route<dynamic> generateRoute(RouteSettings settings) {
//     final args = settings.arguments;
//     switch (settings.name) {
//       case RouteManager.rInitial:
//         return PageRouter.fadeScale(() => SplashView());
//       case RouteManager.rAuthTypeView:
//         return PageRouter.fadeScale(() => AuthTypeView());
//       case RouteManager.rLoginView:
//         return PageRouter.fadeScale(() => LoginView());
//       case RouteManager.rForgetPasswordView:
//         return PageRouter.fadeScale(() => ChangeNotifierProvider(
//             create: (_) => ForgetPasswordViewModel(),
//             builder: (context, _) {
//               return ForgetPassView();
//             }));
//       case RouteManager.rSignUpView:
//         return PageRouter.fadeScale(() => ChangeNotifierProvider(
//             create: (_) => SignUpViewModel(),
//             builder: (context, _) {
//               return SignUpView();
//             }));
//
//       case RouteManager.rRestaurantDashboard:
//         return PageRouter.fadeScale(() => DashboardView());
//       case RouteManager.rIncidentResolutionMissingProducts:
//         return PageRouter.fadeScale(() => IncidentResolutionMissingProducts());
//       case RouteManager .rReportAnIncidentReceivedInBad:
//         return PageRouter.fadeScale(() => ReportAnIncidentReceivedInBad());
//         case  RouteManager.rReportAnIncidentMissingProduct:
//           return PageRouter.fadeScale(() => ReportAnIncidentMissingProduct());
//       case RouteManager.rFoodDeliveryView:
//         return PageRouter.fadeScale(() => FoodDeliveryView());
//       case RouteManager.rFilterView:
//         return PageRouter.fadeScale(() => FilterView());
//       case RouteManager.rMapView:
//         return PageRouter.fadeScale(() => MapView());
//       case RouteManager.rEditAddress:
//         return PageRouter.fadeScale(() => EditAddressView());
//       case RouteManager.rAllAddressView:
//          return PageRouter.fadeScale(() => AllAddressView());
//       case RouteManager.rRestaurantDetailView:
//         return PageRouter.fadeScale(() => RestaurantDetailView());
//       case RouteManager.rConfirmYourOrderView:
//         return PageRouter.fadeScale(() => ConfirmYourOrderView());
//       default:
//         return _errorRoute();
//     }
//   }
//
//   static Route<dynamic> _errorRoute() {
//     return MaterialPageRoute(builder: (_) {
//       return Scaffold(
//         appBar: AppBar(
//           title: const Text('Error'),
//         ),
//         body: Center(
//           child: Container(
//             color: Colors.white,
//             child: const Text('Page Not Found'),
//           ),
//         ),
//       );
//     });
//   }
// }
