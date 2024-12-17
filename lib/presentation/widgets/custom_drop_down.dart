import 'package:flutter/material.dart';
import 'package:sitges/application/core/extensions/extensions.dart';
import 'package:sitges/constants/constants.dart';

import '../../application/theme/app_colors.dart';
import '../../application/theme/text_themes.dart';
import '../base/base_widget.dart';

class CustomDropDown extends BaseStateFullWidget {
  final List<String> list;
  String? selectedItem, hintText;
  final Function(String?)? onChanged;
  final String? Function(String?)? validator;
  final String? suffix;

  CustomDropDown(
      {super.key,
      required this.list,
      required this.selectedItem,
      required this.hintText,
      this.validator,
      this.onChanged,
      this.suffix});

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      isExpanded: true,
      hint: Text(widget.hintText!,
          style: context.textTheme.titleMedium!.copyWith(
            fontWeight: FontWeight.w400,
            color: AppColor.kLabelColor,
          )),
      value: widget.selectedItem,
      onChanged: widget.onChanged,
      validator: widget.validator,
      style: textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w600, color: AppColor.kPrimary[100]),
      decoration: InputDecoration(
          prefixIcon: widget.suffix != null
              ? Image.asset(
                  widget.suffix!,
                  height: context.getHeight(widget.dimens.k2.cm),
                ).padding(EdgeInsets.symmetric(vertical: widget.dimens.k12))
              : null,
          contentPadding: EdgeInsets.symmetric(vertical: widget.dimens.k12, horizontal: widget.dimens.k15)),
      items: widget.list.map((value) {
        return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              overflow: TextOverflow.ellipsis,
            ));
      }).toList(),
    );
  }
}
