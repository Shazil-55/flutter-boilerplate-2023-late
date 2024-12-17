import 'package:dartz/dartz.dart';
import 'package:location/location.dart';

import '../presentation/base/base_mixin.dart';

enum SettingEnum { none, openAppSetting, openLocationSetting }

class LocationServices with BaseMixin {
  LocationServices();

  Future<bool> checkPermission() async {
    final location = Location();

    PermissionStatus status = await location.hasPermission();

    return status == PermissionStatus.granted || status == PermissionStatus.grantedLimited;
  }

  Future<SettingEnum> requestPermission() async {
    final location = Location();

    bool serviceEnabled;
    PermissionStatus permissionGranted;

    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        return (SettingEnum.openLocationSetting);
      }
    }

    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        return (SettingEnum.openAppSetting);
      }
    }

    return SettingEnum.none;
  }

  Future<Either<SettingEnum, LocationData>> getCurrentWithPermissionLocation() async {
    final location = Location();
    LocationData locationData;
    SettingEnum permission = await requestPermission();
    if (permission != SettingEnum.none) {
      return Left(permission);
    }

    try {
      locationData = await location.getLocation();
      return Right(locationData);
    } catch (e) {
      return const Left(SettingEnum.none);
    }
  }

  Future<LocationData> getLocation() async {
    final location = Location();
    LocationData locationData;

    locationData = await location.getLocation();

    return locationData;
  }
}
