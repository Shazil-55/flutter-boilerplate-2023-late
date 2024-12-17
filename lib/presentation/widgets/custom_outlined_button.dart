import 'package:flutter/material.dart';
import 'package:sitges/application/core/extensions/extensions.dart';
import 'package:sitges/presentation/base/base_widget.dart';

class CustomOutlinedButton extends BaseStateLessWidget {
  final VoidCallback? onPressed;
  final double? width, height;
  final Widget? child;
  final String? childText;
  final EdgeInsetsGeometry? padding;

  CustomOutlinedButton(
      {Key? key, required this.onPressed, this.width, this.height, this.child, this.padding, this.childText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: OutlinedButton(
        onPressed: onPressed,
        child: Container(
            constraints: BoxConstraints(
              maxWidth: width ?? context.width,
              maxHeight: height ?? 48.0,
            ),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(dimens.k12), // Same radius as above
            ),
            child: child ??
                Text(
                  childText!,
                )),
      ),
    );
  }
}
