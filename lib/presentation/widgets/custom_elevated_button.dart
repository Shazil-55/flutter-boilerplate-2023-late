import 'package:flutter/material.dart';
import 'package:sitges/application/core/extensions/extensions.dart';

import '../base/base_widget.dart';

class CustomElevatedButton extends BaseStateLessWidget {
  final VoidCallback onPressed;
  final double? width, height;
  final Widget? child;
  final String? childText;
  final Color? color;
  final TextStyle? textStyle;

  final EdgeInsetsGeometry? padding;

  CustomElevatedButton(
      {Key? key,
      required this.onPressed,
      this.width,
      this.height,
      this.child,
      this.padding,
      this.childText,
      this.textStyle,
      this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Container(
            constraints: BoxConstraints(
              maxWidth: width ?? context.getWidth(),
              maxHeight: height ?? 48.0,
            ),
            alignment: Alignment.center,
            // padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(dimens.k12),
            ),
            child: child ??
                Text(
                  childText!,
                  style: textStyle,
                )),
      ),
    );
  }
}
