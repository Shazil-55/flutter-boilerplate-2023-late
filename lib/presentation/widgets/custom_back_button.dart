import 'package:flutter/material.dart';
import 'package:sitges/application/core/extensions/extensions.dart';

import '../../application/theme/app_colors.dart';
import '../base/base_widget.dart';

class CustomBackButton extends BaseStateLessWidget {
  final VoidCallback? callBack;

  CustomBackButton({super.key, this.callBack});

  @override
  Widget build(BuildContext context) => const Icon(
        Icons.arrow_back_ios_new_rounded,
        color: AppColor.kWhiteColor,
      ).onTap(
        callBack ?? () => navigator.pop(),
      );
}
