import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HeroImage extends StatelessWidget {
  const HeroImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 60, bottom: 35),
      width: 400,
      height: 200,
      color: Color(0xFF0b2239),
      child: FittedBox(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(70),
          child: Image.asset(
            "assets/images/school1.jpg",
            semanticLabel: 'Students',
          ),
        ),
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
