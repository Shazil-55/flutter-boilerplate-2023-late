import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../application/enums/enum.dart';
import '../../application/theme/app_colors.dart';

class MyToast {
  static showToast({required String message, TypeToast typeToast = TypeToast.normal}) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.SNACKBAR,
        timeInSecForIosWeb: 1,
        backgroundColor: (typeToast == TypeToast.normal)
            ? AppColor.kPrimary[100]
            : (typeToast == TypeToast.success)
                ? Colors.green
                : Colors.red,
        textColor: AppColor.kWhiteColor,
        fontSize: 16.0);
  }
}
