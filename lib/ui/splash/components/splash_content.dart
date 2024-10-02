import 'package:e_commers/consts.dart';
import 'package:e_commers/size_config.dart';
import 'package:flutter/material.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    // text dan image maksud nya untuk  menampilkan text dan gambar di splash screen
    super.key, required this.text, required this.image,
  });
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Text(
          'Vendoora', 
          style: TextStyle(
            color: primaryColor,
            fontSize: getProportionateScreenWidht(36.0)
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          ),
        Image.asset(image)
      ],
    );
  }
}