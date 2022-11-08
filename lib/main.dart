import 'package:flutter/material.dart';
import 'package:projetoirrigacao/alface.dart';
import 'package:projetoirrigacao/batata.dart';
import 'package:projetoirrigacao/tomate.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Projeto Irrigação';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar:
            AppBar(backgroundColor: Colors.green, title: const Text(_title)),
        body: const Center(
          child: MyStatefulWidget(),
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Material(
                  color: Colors.transparent,
                  elevation: 8,
                  borderRadius: BorderRadius.circular(50),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                    splashColor: Colors.green,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Alface()),
                      );
                    },
                    child: Column(
                      children: [
                        Ink.image(
                          image: const NetworkImage(
                              'https://i.pinimg.com/originals/3b/6f/00/3b6f0090835130a13f02ad2999619ac4.png'),
                          height: 50,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 1),
                        const Text(
                          'Alface',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ),
                Material(
                  color: Colors.transparent,
                  elevation: 8,
                  borderRadius: BorderRadius.circular(50),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                    splashColor: Colors.red,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Tomate()),
                      );
                    },
                    child: Column(
                      children: [
                        Ink.image(
                          image: const NetworkImage(
                              'https://png.pngtree.com/png-vector/20201128/ourlarge/pngtree-tomato-png-image_2405795.jpg'),
                          height: 50,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 1),
                        const Text(
                          'Tomate',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ),
                Material(
                  color: Colors.transparent,
                  elevation: 8,
                  borderRadius: BorderRadius.circular(50),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                    splashColor: Colors.yellow,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Batata()),
                      );
                    },
                    child: Column(
                      children: [
                        Ink.image(
                          image: const NetworkImage(
                              'https://www.pngall.com/wp-content/uploads/2016/04/Potato-PNG-Picture.png'),
                          height: 50,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 1),
                        const Text(
                          'Batata',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ]),
    );
  }
}
