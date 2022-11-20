import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const appTitle = 'Projeto Irrigação';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green, title: Text(widget.title)),
      body: const Center(
        child: Text('My Page!'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const SizedBox(
              height: 100,
              child: DrawerHeader(
                decoration: BoxDecoration(
                    color: Colors.green,
                    image: DecorationImage(
                        image: AssetImage('assets/plantacao.jpg'),
                        fit: BoxFit.cover)),
                child: Text(
                  'Culturas',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: const Text('Alface'),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.black, width: 0.5),
                  borderRadius: BorderRadius.circular(100),
                ),
                leading: ConstrainedBox(
                  constraints: const BoxConstraints(
                    minWidth: 44,
                    minHeight: 44,
                    maxWidth: 64,
                    maxHeight: 64,
                  ),
                  child: Image.asset('assets/alface.png', fit: BoxFit.cover),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Cultura(
                            'Alface', '0', '0', 0, 0, Colors.green)),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: const Text('Batata'),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.black, width: 0.5),
                  borderRadius: BorderRadius.circular(100),
                ),
                leading: ConstrainedBox(
                  constraints: const BoxConstraints(
                    minWidth: 44,
                    minHeight: 44,
                    maxWidth: 64,
                    maxHeight: 64,
                  ),
                  child: Image.asset('assets/batata.png', fit: BoxFit.cover),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Cultura(
                            'Batata', '0', '0', 0, 0, Colors.yellow)),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: const Text('Tomate'),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.black, width: 0.5),
                  borderRadius: BorderRadius.circular(100),
                ),
                leading: ConstrainedBox(
                  constraints: const BoxConstraints(
                    minWidth: 44,
                    minHeight: 44,
                    maxWidth: 64,
                    maxHeight: 64,
                  ),
                  child: Image.asset('assets/tomate.png', fit: BoxFit.cover),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Cultura(
                            'Tomate', '0', '0', 0, 0, Colors.red)),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: const Text('Rúcula'),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.black, width: 0.5),
                  borderRadius: BorderRadius.circular(100),
                ),
                leading: ConstrainedBox(
                  constraints: const BoxConstraints(
                    minWidth: 44,
                    minHeight: 44,
                    maxWidth: 64,
                    maxHeight: 64,
                  ),
                  child: Image.asset('assets/rucula.png', fit: BoxFit.cover),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Cultura(
                            'Rúcula', '0', '0', 0, 0, Colors.green)),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: const Text('Radite'),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.black, width: 0.5),
                  borderRadius: BorderRadius.circular(100),
                ),
                leading: ConstrainedBox(
                  constraints: const BoxConstraints(
                    minWidth: 44,
                    minHeight: 44,
                    maxWidth: 64,
                    maxHeight: 64,
                  ),
                  child: Image.asset('assets/radite.png', fit: BoxFit.cover),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Cultura(
                            'Radite', '0', '0', 0, 0, Colors.green)),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: const Text('Beterraba'),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.black, width: 0.5),
                  borderRadius: BorderRadius.circular(100),
                ),
                leading: ConstrainedBox(
                  constraints: const BoxConstraints(
                    minWidth: 44,
                    minHeight: 44,
                    maxWidth: 64,
                    maxHeight: 64,
                  ),
                  child: Image.asset('assets/beterraba.png', fit: BoxFit.cover),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Cultura(
                            'Beterraba', '0', '0', 0, 0, Colors.purple)),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: const Text('Cenoura'),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.black, width: 0.5),
                  borderRadius: BorderRadius.circular(100),
                ),
                leading: ConstrainedBox(
                  constraints: const BoxConstraints(
                    minWidth: 44,
                    minHeight: 44,
                    maxWidth: 64,
                    maxHeight: 64,
                  ),
                  child: Image.asset('assets/cenoura.png', fit: BoxFit.cover),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Cultura(
                            'Cenoura', '0', '0', 0, 0, Colors.orange)),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Cultura extends StatefulWidget {
  final String titulo, dias, temperaturaIdeal;
  final int umidadeAtual, umidadeNecessaria;
  final Color cor;
  const Cultura(this.titulo, this.dias, this.temperaturaIdeal,
      this.umidadeAtual, this.umidadeNecessaria, this.cor,
      {super.key});

  @override
  State<Cultura> createState() => _CulturaState();
}

class _CulturaState extends State<Cultura> {
  final url = "https://jsonplaceholder.typicode.com/posts";
  bool valor = true;
  var posts = [];
  Color corEstado = Colors.red;
  String estado = "Desligado";
  IconData icone = Icons.block;

  void fetchPosts() async {
    try {
      final response = await get(Uri.parse(url));
      final data = jsonDecode(response.body) as List;

      setState(() {
        posts = data;
      });
    } catch (err) {}
  }

  void postData() async {
    try {
      final response = await post(Uri.parse(url),
          body: {"title": "Estado", "body": "true", "userId": "1"});
      print(response.body);
      setState(() {
        corEstado = Colors.green;
        estado = "Ligado";
        icone = Icons.done_outline_rounded;
      });
    } catch (err) {}
  }

  void postData2() async {
    try {
      final response = await post(Uri.parse(url),
          body: {"title": "Estado", "body": "false", "userId": "1"});
      print(response.body);
      setState(() {
        corEstado = Colors.red;
        estado = "Desligado";
        icone = Icons.block;
      });
    } catch (err) {}
  }

  @override
  void initState() {
    super.initState();
    fetchPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: widget.cor, title: Text(widget.titulo)),
      body: Center(
        child: Column(
          children: [
            TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: Colors.green,
                    textStyle: const TextStyle(fontSize: 20)),
                onPressed: () {},
                child: Row(
                  children: [
                    const Icon(
                      Icons.call_made_rounded,
                      color: Colors.green,
                      size: 40,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Tempo de crescimento: ${widget.dias} dias',
                    ),
                  ],
                )),
            TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: Colors.blue,
                    textStyle: const TextStyle(fontSize: 20)),
                onPressed: () {},
                child: Row(
                  children: [
                    const Icon(
                      Icons.water,
                      color: Colors.blue,
                      size: 40,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Umidade necessária: ${widget.umidadeNecessaria}% ',
                    ),
                  ],
                )),
            TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: Colors.orange,
                    textStyle: const TextStyle(fontSize: 20)),
                onPressed: () {},
                child: Row(
                  children: [
                    const Icon(
                      Icons.sunny,
                      color: Colors.orange,
                      size: 40,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Temperatura Ideal: ${widget.temperaturaIdeal}°C',
                    ),
                  ],
                )),
            TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: Colors.blue.shade900,
                    textStyle: const TextStyle(fontSize: 20)),
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.water_drop,
                      color: Colors.blue.shade900,
                      size: 40,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Umidade Atual: ${widget.umidadeAtual}%',
                    ),
                  ],
                )),
            TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: corEstado,
                    textStyle: const TextStyle(fontSize: 20)),
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(
                      icone,
                      color: corEstado,
                      size: 40,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Estado Atual: $estado',
                    ),
                  ],
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text("Ligar"),
                    IconButton(
                      splashRadius: 40,
                      splashColor: Colors.green,
                      iconSize: 80,
                      onPressed: postData,
                      icon: Ink.image(image: const AssetImage("assets/on.png")),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text("Desligar"),
                    IconButton(
                      splashRadius: 40,
                      splashColor: Colors.red,
                      iconSize: 80,
                      onPressed: postData2,
                      icon:
                          Ink.image(image: const AssetImage("assets/off.png")),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
