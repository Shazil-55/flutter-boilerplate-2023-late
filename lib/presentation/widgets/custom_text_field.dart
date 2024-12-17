import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sitges/application/core/extensions/extensions.dart';
import 'package:sitges/constants/constants.dart';

import '../../application/theme/app_colors.dart';
import '../../application/theme/text_themes.dart';
import '../base/base_widget.dart';

class CustomTextField extends BaseStateLessWidget {
  final FormFieldValidator<String>? validator;
  final List<TextInputFormatter>? inputFormatter;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final String hintText;
  final Function(String)? onChanged;
  final Function()? onTap;
  final Function()? onEditingComplete;
  final Function(String)? onFieldSubmitted;
  final Function(String?)? onSaved;
  final bool obscureText;
  final String? suffixIcon;
  final String? prefixIcon;
  final VoidCallback? prefixIconCallBack, suffixIconCallBack;
  final String? initialValue;
  final String? errorText;
  final Color? fillColor;
  final TextEditingController? controller;
  final int? maxLines, minLines;
  final bool readonly;
  final bool? isDense;
  final double cPadding;
  final double? radius;
  final bool label;
  final bool enable;
  final OutlineInputBorder? focusBorder, border;

  CustomTextField(
      {Key? key,
      this.controller,
      this.validator,
      this.keyboardType = TextInputType.text,
      this.textInputAction = TextInputAction.done,
      required this.hintText,
      this.onChanged,
      this.onTap,
      this.inputFormatter,
      this.onEditingComplete,
      this.onFieldSubmitted,
      this.onSaved,
      this.obscureText = false,
      this.prefixIcon,
      this.suffixIcon,
      this.initialValue,
      this.errorText,
      this.fillColor,
      this.readonly = false,
      this.isDense,
      this.label = false,
      this.enable = true,
      this.maxLines,
      this.minLines,
      this.cPadding = 18,
      this.prefixIconCallBack,
      this.suffixIconCallBack,
      this.radius,
      this.border,
      this.focusBorder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      scrollPadding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      controller: controller,
      validator: validator,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      initialValue: initialValue,
      readOnly: readonly,
      enabled: enable,
      maxLines: maxLines,
      minLines: minLines ?? 1,
      inputFormatters: inputFormatter,
      onTap: onTap,
      style: textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w600, color: AppColor.kPrimary[100]),
      decoration: InputDecoration(
          focusedBorder: focusBorder,
          border: border,
          hintText: hintText,
          contentPadding: EdgeInsets.symmetric(horizontal: cPadding, vertical: dimens.k12),
          errorText: errorText,
          isDense: isDense,
          suffixIcon: suffixIcon == null
              ? null
              : Image.asset(
                  suffixIcon!,
                  height: context.getHeight(dimens.k2.cm),
                ).padding(EdgeInsets.all(dimens.k12)).onTap(suffixIconCallBack!),
          prefixIcon: prefixIcon == null
              ? null
              : Image.asset(
                  prefixIcon!,
                  height: context.getHeight(dimens.k2.cm),
                ).padding(EdgeInsets.all(dimens.k12))),
      // autovalidateMode: AutovalidateMode.onUserInteraction,
      onSaved: onSaved,
      onChanged: onChanged,
      obscureText: obscureText,
    );
  }
}
