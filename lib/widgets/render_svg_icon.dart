import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RenderSvgIcon extends StatelessWidget {
  double? height;

  double? width;

  String source;

  RenderSvgIcon({
    Key? key,
    this.height,
    this.width,
    required this.source,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.string(
      source,
      height: height ?? 20,
      width: width ?? 20,
    );
  }
}
