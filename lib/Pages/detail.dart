import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const String assetname = 'lib/Icons/hogar.svg';
Widget svgIcon =
    SvgPicture.asset(assetname, semanticsLabel: 'Logo', height: 24, width: 24);

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.blueGrey),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Detalle de la aplicacion.'),
            const SizedBox(height: 40),
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: svgIcon),
          ],
        )));
  }
}
