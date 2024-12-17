import 'package:flutter/material.dart';
import 'package:sitges/application/core/extensions/extensions.dart';

import '../../application/theme/app_colors.dart';
import '../../constants/constants.dart';
import '../base/base_widget.dart';

class CustomCheckBox extends BaseStateLessWidget {
  final bool isEnabled;
  final VoidCallback? callBack;

  CustomCheckBox({
    Key? key,
    this.callBack,
    this.isEnabled = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            height: context.getHeight(dimens.k2.cm),
            width: context.getHeight(dimens.k2.cm),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Px().k4),
                color: isEnabled ? AppColor.kPrimary[50] : Colors.transparent,
                border: Border.all(color: AppColor.kTypographyColor[60]!, width: 1)))
        .onTap(callBack!);
  }
}
