import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sitges/application/core/extensions/extensions.dart';
import 'package:sitges/application/theme/app_colors.dart';
import 'package:sitges/constants/constants.dart';
import 'package:sitges/constants/style_manager.dart';
import 'package:sitges/presentation/base/base_widget.dart';

class ImageSlider extends BaseStateFullWidget {
  final List<String> images;

  ImageSlider({Key? key, required this.images}) : super(key: key);

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.getHeight(widget.dimens.k22.cm),
      width: context.width,
      child: CarouselSlider(
        items: widget.images
            .map((e) => Container(
                  width: context.width,
                  padding: EdgeInsets.symmetric(vertical: widget.dimens.k10, horizontal: widget.dimens.k10),
                  // decoration: BoxDecoration(boxShadow: [shadow]),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(widget.dimens.k15), child: Image.asset(e, fit: BoxFit.cover)),
                ))
            .toList(),
        carouselController: _controller,
        options: CarouselOptions(
            autoPlay: true,
            animateToClosest: false,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            }),
      ),
    );
  }
}
