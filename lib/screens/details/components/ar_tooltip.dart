import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onlineshop/models/Product.dart';

class ARTooltip extends StatefulWidget {
  final Product product;
  const ARTooltip({
    Key? key,
    required this.product
  }) : super(key: key);

  @override
  State<ARTooltip> createState() => _ARTooltipState();
}

class _ARTooltipState extends State<ARTooltip> {

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: "Display this ${widget.product.title} in your space.",
      child: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset("assets/icons/ar.svg"),
      ),
    );
  }
}