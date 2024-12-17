// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:sitges/constants/string_manager.dart';
// import 'package:sitges/presentation/base/base_widget.dart';
//
// import 'application/main_config.dart';
// import 'application/routes/route_generator.dart';
// import 'application/theme/app_themes.dart';
//
// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await initMainServiceLocator();
//   SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
//     statusBarColor: Colors.transparent,
//     statusBarBrightness: Brightness.light,
//   ));
//
//   runApp(MyApp());
// }
//
// class MyApp extends BaseStateLessWidget {
//   MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: StringManager.applicationName,
//         theme: lightTheme,
//         debugShowCheckedModeBanner: false,
//         // initialRoute: RouteManager.rInitial,
//         initialRoute: RouteManager.rAllAddressView,
//         onGenerateRoute: RouteGenerator.generateRoute,
//         navigatorKey: navigator.key());
//   }
// }
//
//
//
//
//
