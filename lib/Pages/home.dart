import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:laboratorio3/Pages/detail.dart';
import 'package:laboratorio3/Pages/listdetail.dart';

const String assetname = 'lib/Icons/agregar-usuario.svg';
Widget svgIcon =
    SvgPicture.asset(assetname, semanticsLabel: 'Logo', height: 24, width: 24);
const String asset1 = 'lib/Icons/victoria.svg';
const String asset2 = 'lib/Icons/derrota.svg';
Widget svgVictory =
    SvgPicture.asset(asset1, semanticsLabel: 'Icon', height: 24, width: 24);
Widget svgDefeat =
    SvgPicture.asset(asset2, semanticsLabel: 'Icon', height: 24, width: 24);
const String asset3 = 'lib/Icons/pause.svg';
Widget svgPause =
    SvgPicture.asset(asset3, semanticsLabel: 'Icon', height: 24, width: 24);

String victoria = 'Felicitaciones!';
String derrota = 'Mala suerte.';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
    //increases counter and calls build method
  }

  void _decreaseCounter() {
    setState(() {
      _counter--;
    });
    //decreases counter and calls build method.
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
    //resets counter back to 0 and calls build method.
  }

  String _checkVictory() {
    if (_counter == 15)
      return derrota;
    else if (_counter == 10)
      return victoria;
    else
      return 'Juego terminado';
  }

  Widget _checkIconVictory() {
    if (_counter == 15)
      return svgDefeat;
    else if (_counter == 10)
      return svgVictory;
    else
      return svgPause;
  }

  void _goDetail() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const Detail(),
      ),
    );
  }

  void _goList() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const ListDetail(),
      ),
    );
  }

  void _goBack() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Card(
          clipBehavior: Clip.hardEdge,
          child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              debugPrint('Card tapped.');
            },
            child: SizedBox(
              width: 300,
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _checkIconVictory(),
                  Text(
                    '$_counter',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Text(
                    _checkVictory(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      //floatingActionButton: FloatingActionButton(
      //onPressed: _resetCounter, tooltip: 'Reset', child: svgIcon),
      persistentFooterButtons: [
        TextButton(
          onPressed: _goDetail,
          child: const Text("Detail"),
        ),
        TextButton(
          onPressed: _goList,
          child: const Text("List)"),
        ),
      ],
    );
  }
}
