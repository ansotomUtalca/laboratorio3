import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const String assetname = 'lib/Icons/hogar.svg';
Widget svgIcon =
    SvgPicture.asset(assetname, semanticsLabel: 'Logo', height: 24, width: 24);

class Gestures extends StatelessWidget {
  const Gestures({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text("Gestos"),
        ),
        body: Center());
  }
}
