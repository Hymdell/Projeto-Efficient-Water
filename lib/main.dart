import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mysql1/mysql1.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const appTitle = 'Efficient Water';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
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
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Topico 1',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed fermentum purus nunc, in aliquam dolor hendrerit fermentum. Aliquam facilisis ac lectus sed porta. Phasellus sed tellus quis tortor vestibulum sollicitudin et nec felis. Maecenas est ipsum, volutpat sit amet tempus id, porta molestie odio. Morbi molestie lacinia dolor, at dignissim purus consequat vitae. Nam tincidunt elit lobortis, fermentum diam vel, fringilla lectus. Nullam malesuada commodo dignissim. Proin blandit lacus sem, at pulvinar elit posuere at. Donec ac suscipit tellus. Nunc molestie magna metus, non sodales velit porttitor sed. Maecenas ac metus quis urna viverra maximus. Curabitur gravida purus ullamcorper elit pellentesque porta. Nulla eget vehicula lectus.'),
                const Divider(
                  height: 20,
                  thickness: 5,
                  indent: 0,
                  endIndent: 0,
                  color: Colors.black,
                ),
                Text(
                  'Topico 2',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed fermentum purus nunc, in aliquam dolor hendrerit fermentum. Aliquam facilisis ac lectus sed porta. Phasellus sed tellus quis tortor vestibulum sollicitudin et nec felis. Maecenas est ipsum, volutpat sit amet tempus id, porta molestie odio. Morbi molestie lacinia dolor, at dignissim purus consequat vitae. Nam tincidunt elit lobortis, fermentum diam vel, fringilla lectus. Nullam malesuada commodo dignissim. Proin blandit lacus sem, at pulvinar elit posuere at. Donec ac suscipit tellus. Nunc molestie magna metus, non sodales velit porttitor sed. Maecenas ac metus quis urna viverra maximus. Curabitur gravida purus ullamcorper elit pellentesque porta. Nulla eget vehicula lectus.'),
                const Divider(
                  height: 20,
                  thickness: 5,
                  indent: 0,
                  endIndent: 0,
                  color: Colors.black,
                ),
                Text(
                  'Topico 3',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                Image.asset(
                  'assets/plantacao.jpg',
                  height: 250,
                ),
              ],
            ),
          ),
        ],
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
                            'Alface', '96', '0', "5 e 6", 80, Colors.green)),
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
                            'Batata', '0', '0', "0", 0, Colors.yellow)),
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
                            'Tomate', '0', '0', "0", 0, Colors.red)),
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
                            'Rúcula', '0', '0', "0", 0, Colors.green)),
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
                            'Radite', '0', '0', "0", 0, Colors.green)),
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
                            'Beterraba', '0', '0', "0", 0, Colors.purple)),
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
                            'Cenoura', '0', '0', "0", 0, Colors.orange)),
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
  final String titulo, dias, temperaturaIdeal, phSolo, umidadeAtual = "0% Seco";
  final int umidadeNecessaria;
  final Color cor;
  const Cultura(this.titulo, this.dias, this.temperaturaIdeal, this.phSolo,
      this.umidadeNecessaria, this.cor,
      {super.key});

  @override
  State<Cultura> createState() => _CulturaState();
}

class _CulturaState extends State<Cultura> {
  var posts = "";
  Color corEstado = Colors.red;
  String estado = "Desligado";
  bool erro = false;
  IconData icone = Icons.block;
  AssetImage iconeEstado = AssetImage("assets/off.png");

  void fetchPosts() async {
    try {
      var settings = new ConnectionSettings(
          host: 'sql10.freemysqlhosting.net',
          port: 3306,
          user: 'sql10579653',
          password: 'f52ieXUCAr',
          db: 'sql10579653');
      var con = await MySqlConnection.connect(settings);
      var results =
          await con.query('select umidade from irrigacao where id = ?', [1]);
      for (var row in results) {
        posts = row[0];
      }
      ;
      setState(() {
        posts;
        erro = false;
      });
      con.close();
    } catch (err) {
      erro = true;
      print(err);
    }
  }

  void postDataLigado() async {
    try {
      var settings = new ConnectionSettings(
          host: 'sql10.freemysqlhosting.net',
          port: 3306,
          user: 'sql10579653',
          password: 'f52ieXUCAr',
          db: 'sql10579653');
      var con = await MySqlConnection.connect(settings);
      var result = await con
          .query('update irrigacao set estado=? where id=?', ['Ligado', 1]);
      print(result);
      setState(() {
        corEstado = Colors.green;
        estado = "Ligado";
        icone = Icons.done_outline_rounded;
        iconeEstado = AssetImage("assets/on.png");
        erro = false;
      });
      con.close();
    } catch (err) {
      erro = true;
      print(err);
    }
  }

  void postDataDesligado() async {
    try {
      //Site = https://www.freemysqlhosting.net/account/
      var settings = new ConnectionSettings(
          host: 'sql10.freemysqlhosting.net',
          port: 3306,
          user: 'sql10579653',
          password: 'f52ieXUCAr',
          db: 'sql10579653');
      var con = await MySqlConnection.connect(settings);
      var result = await con
          .query('update irrigacao set estado=? where id=?', ['Desligado', 1]);
      print(result);
      setState(() {
        corEstado = Colors.red;
        estado = "Desligado";
        icone = Icons.block;
        iconeEstado = AssetImage("assets/off.png");
        erro = false;
      });
      con.close();
    } catch (err) {
      erro = true;
      print(err);
    }
  }

  @override
  void initState() {
    super.initState();
    Timer myTimer = Timer.periodic(Duration(seconds: 5), (timer) {
      fetchPosts();
    });
    myTimer;
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
                    foregroundColor: Colors.brown,
                    textStyle: const TextStyle(fontSize: 20)),
                onPressed: () {},
                child: Row(
                  children: [
                    const Icon(
                      Icons.grass_outlined,
                      color: Colors.brown,
                      size: 40,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      'PH do solo: Entre ${widget.phSolo}',
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
                onPressed: () {
                  fetchPosts();
                },
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
                      'Umidade Atual: ${posts}',
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
                    Text(estado),
                    IconButton(
                      splashRadius: 40,
                      iconSize: 80,
                      onPressed: () {
                        if (estado == "Desligado") {
                          postDataLigado();
                        } else if (estado == "Ligado") {
                          postDataDesligado();
                        }
                        if (erro != false) {
                          final snackBar = SnackBar(
                            content: const Text(
                              'ERRO DE CONEXÃO COM BANCO DE DADOS',
                              textAlign: TextAlign.center,
                            ),
                            backgroundColor: Colors.red,
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }
                      },
                      icon: Ink.image(image: iconeEstado),
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
