import 'package:flutter/material.dart';
import 'package:sitges/application/core/extensions/extensions.dart';
import 'package:sitges/constants/constants.dart';
import 'package:sitges/presentation/base/base_widget.dart';
import 'package:sitges/presentation/widgets/custom_back_button.dart';

import '../../application/theme/app_colors.dart';
import '../../constants/assets_manager.dart';

class LogoScaffold extends BaseStateLessWidget {
  final Widget widget;

  LogoScaffold({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.kPrimary[50],
        body: SizedBox(
          width: context.width,
          height: context.height,
          child: Stack(
            children: [
              SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomBackButton(),
                    Align(
                        alignment: Alignment.topCenter,
                        child: Image.asset(AssetsManager.appLogo, height: context.getHeight(dimens.k12.cm))
                            .padding(EdgeInsets.only(top: context.getHeight(dimens.k4.cm)))),
                  ],
                ).padding(EdgeInsets.symmetric(horizontal: dimens.k15)),
              ),
              Positioned(
                top: context.getHeight(dimens.k30.cm),
                child: Container(
                    width: context.width,
                    height: context.getHeight(.70),
                    padding: EdgeInsets.symmetric(horizontal: dimens.k15, vertical: dimens.k20),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(dimens.k15), color: AppColor.kSecondary[30]),
                    child: widget),
              )
            ],
          ),
        ));
  }
}
