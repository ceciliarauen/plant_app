import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/screens/details/components/image_and_icons.dart';
import 'package:plant_app/screens/details/components/title_and_price.dart';
import 'package:plant_app/values/colors_palette.dart';
import 'package:plant_app/values/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(size: size),
          TitleAndPrice(
            title: "Angelica",
            country: "Germany",
            price: 856,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: size.width * 0.6,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Adicionar à sacola",
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: ColorsPalette.kPrimaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset("assets/icons/heart-icon.svg"))
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16, left: 16, bottom: 8),
            child: Container(
              height: size.height * 0.4,
              color: Color.fromARGB(36, 7, 163, 111),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text: "Descrição",
                      style: Theme.of(context).textTheme.headline4?.copyWith(
                          color: ColorsPalette.kTextColor,
                          fontWeight: FontWeight.w400),
                    ),
                    TextSpan(
                      text: "",
                      style: Theme.of(context).textTheme.headline4?.copyWith(
                          color: ColorsPalette.kTextColor,
                          fontWeight: FontWeight.w400),
                    ),
                  ]))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
