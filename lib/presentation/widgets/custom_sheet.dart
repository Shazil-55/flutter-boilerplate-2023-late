import 'package:flutter/material.dart';


import '../../application/theme/app_colors.dart';
import '../../constants/constants.dart';
import '../../di/di.dart';

customSheet(BuildContext context, Widget widget, [bool isDismissible = true]) {
  showModalBottomSheet(
      enableDrag: true,
      isScrollControlled: true,
      context: context,
      isDismissible: isDismissible,
      builder: (builder) {
        return StatefulBuilder(builder: (context, StateSetter setState) {
          return Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(inject<Px>().k20),
                    topRight: Radius.circular(inject<Px>().k20),
                  ),
                  color: AppColor.kWhiteColor),
              child: widget);
        });
      });
}

draggableSheet(BuildContext context, Widget widget, [bool isDismissible = true]) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return DraggableScrollableSheet(
        initialChildSize: 0.5, // half screen on load
        maxChildSize: 1, // full screen on scroll
        minChildSize: 0.25,
        builder: (BuildContext context, ScrollController scrollController) {
          return Container(
            color: Colors.white,
            child: ListView.builder(
              controller: scrollController,
              itemCount: 25,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(title: Text('Item $index'));
              },
            ),
          );
        },
      );
    },
  );
}
