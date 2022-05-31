import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/values/colors_palette.dart';

class BuyAndFavoriteButton extends StatelessWidget {
  const BuyAndFavoriteButton({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                "add to cart",
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
          FavoriteButton(
            isFavorite: true,
            iconColor: Color.fromARGB(255, 7, 163, 111),
            valueChanged: (_isFavorite) {
              print('Is Favorite : $_isFavorite');
            },
          ),
        ],
      ),
    );
  }
}
