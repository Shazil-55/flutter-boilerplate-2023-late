import 'package:flutter/material.dart';
import 'package:sitges/application/core/extensions/extensions.dart';

import '../../application/theme/app_colors.dart';
import 'custom_back_button.dart';

class AppBarWidget extends PreferredSize {
  final Widget? leadingWidget;
  final bool isLeadingWidget;
  final BuildContext? context;
  final Widget? actionWidget;
  final String? title;
  final Widget? titleWidget;
  final PreferredSizeWidget? bottomWidget;
  final bool isCenterTitle;
  final double toolBarSize;
  final double? elevation;

  AppBarWidget(
      {Key? key,
      this.leadingWidget,
      this.isLeadingWidget = false,
      this.isCenterTitle = false,
      this.titleWidget,
      this.actionWidget,
      this.elevation,
      this.bottomWidget,
      this.toolBarSize = kToolbarHeight,
      this.title,
      this.context})
      : super(
            key: key,
            preferredSize: Size.fromHeight(toolBarSize),
            child: AppBar(
                elevation: elevation ?? 0.0,
                toolbarHeight: toolBarSize,
                leadingWidth: leadingWidget == null ? 56.0 : 35,
                automaticallyImplyLeading: false,
                leading: leadingWidget ?? (isLeadingWidget ? CustomBackButton() : null),
                centerTitle: isCenterTitle,
                actions: [if (actionWidget != null) actionWidget],
                title: titleWidget ??
                    Text(title!,
                        style: context!.textTheme.displaySmall!
                            .copyWith(color: AppColor.kWhiteColor, fontWeight: FontWeight.w500)),
                bottom: bottomWidget));
}
