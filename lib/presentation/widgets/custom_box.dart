import 'package:flutter/material.dart';
import 'package:sitges/application/core/extensions/extensions.dart';

import '../../application/theme/app_colors.dart';
import '../../application/theme/text_themes.dart';
import '../base/base_widget.dart';

class CustomBox extends BaseStateLessWidget {
  final bool enable;
  final Widget? widget;
  final String? text;
  final VoidCallback callback;
  final double? width;

  CustomBox({super.key, this.widget, required this.enable, required this.callback, this.text, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(dimens.k12),
      decoration: BoxDecoration(
        color: enable ? AppColor.kPrimary[100] : Colors.transparent,
        borderRadius: BorderRadius.circular(dimens.k4),
        border: Border.all(color: AppColor.kPrimary[50]!),
      ),
      child: Center(
        child: widget ??
            Text(
              text!,
              style:
                  context.textTheme.bodySmall!.copyWith(color: enable ? AppColor.kWhiteColor : AppColor.kPrimary[100]),
            ),
      ),
    ).onTap(callback);
  }
}
