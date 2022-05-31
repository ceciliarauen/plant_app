import 'package:flutter/material.dart';
import 'package:plant_app/values/colors_palette.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 16, bottom: 8),
      child: Container(
        width: double.infinity,
        height: size.height * 0.3,
        color: Color.fromARGB(24, 31, 252, 178),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Description:",
                    style: Theme.of(context).textTheme.headline5?.copyWith(
                        color: ColorsPalette.kTextColor,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Expanded(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text:
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce id turpis et lorem aliquam rhoncus. Donec eu dui tincidunt, ornare lacus sit amet, vestibulum lacus. Aliquam id consequat mi",
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                          color: Color.fromARGB(255, 56, 75, 49),
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
