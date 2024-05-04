import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const String assetname = 'lib/Icons/hogar.svg';
Widget svgIcon =
    SvgPicture.asset(assetname, semanticsLabel: 'Logo', height: 24, width: 24);

class ListDetail extends StatelessWidget {
  const ListDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.blueGrey),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 20),
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: svgIcon),
            ListView(
              padding: const EdgeInsets.all(8),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: <Widget>[
                Container(
                    height: 50,
                    color: Colors.blueGrey[200],
                    child: const Center(child: Text('Primera opcion'))),
                Container(
                    height: 50,
                    color: Colors.blueGrey[100],
                    child: const Center(child: Text('Segunda opcion'))),
                Container(
                    height: 50,
                    color: Colors.blueGrey[200],
                    child: const Center(child: Text('Tercera opcion'))),
              ],
            )
          ],
        )));
  }
}
