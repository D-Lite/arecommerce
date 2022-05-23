import 'package:flutter/material.dart';
import 'package:onlineshop/constants.dart';
import 'package:onlineshop/models/Product.dart';
import 'package:onlineshop/screens/details/components/ar_tooltip.dart';
import 'package:onlineshop/screens/details/components/body.dart';


class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Color"),
              Row(
                children: <Widget>[
                  ColorDot(
                      color: product.color,
                      isSelected: true
                  ),
                  ColorDot(color: Color(0xfff8c078)),
                  ColorDot(color: Color(0xffa29b9b)),
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: RichText(text: TextSpan(
              style: TextStyle(color: kTextColor),
              children: [
                TextSpan(text: "Size\n"),
                TextSpan(
                    text: "${product.size} cm",
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        ?.copyWith(
                        fontWeight: FontWeight.bold
                    )
                )
              ]
          )),
        ),
        Container(
          height: 50,
          width: 58,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                  color: product.color
              )
          ),
          child: ARTooltip(product: product,)
        )
      ],
    );
  }
}
