import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

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
                  'Dados sobre a água na Agricultura',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                Text(
                    'A agricultura é o setor responsável por consumir a maior quantidade de água no mundo, utilizando uma média de 70% de toda a água consumido.\nOutro dado importantíssimo, a agricultura é tam´bem a que mais desperdiça água pois perde quase metade de toda a água durante o processo de produção.'),
                const Divider(
                  height: 20,
                  thickness: 5,
                  indent: 0,
                  endIndent: 0,
                  color: Colors.black,
                ),
                Text(
                  'Curiosidades sobre a água',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                Text(
                    '1 - De acordo com a ONU, existem 783 milhões de pessoas no mundo que vivem sem água potável. Em 2025 esse número pode chegar a 1,8 bilhões.\n2 - Apenas 3% da água no mundo é doce. Deste total, 70% está em forma de gelo ou no solo\n3 - 12% da água doce do mundo está no Brasil. O páis é privilegiado por seus aquíferos, que armazenam a água no solo.'),
                const Divider(
                  height: 20,
                  thickness: 5,
                  indent: 0,
                  endIndent: 0,
                  color: Colors.black,
                ),
                Image.asset(
                  'assets/alfaces.jpg',
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
  Object? posts = "";
  Color corEstado = Colors.red;
  String estado = "Desligado";
  bool erro = false;
  IconData icone = Icons.block;
  AssetImage iconeEstado = AssetImage("assets/off.png");
  Query dbRef = FirebaseDatabase.instance.ref().child("Estado");

  Future<void> fetchPosts() async {
    final ref = FirebaseDatabase.instance.ref();
    final snapshot = await ref.child('Umidade').get();
    try {
      setState(() {
        posts = snapshot.value;
      });
    } catch (err) {
      erro = true;
      print(err);
    }
  }

  void postDataLigado() async {
    try {
      late DatabaseReference dbRef =
          FirebaseDatabase.instance.ref().child('Estado');
      dbRef.set(1);
      setState(() {
        corEstado = Colors.green;
        estado = "Ligado";
        icone = Icons.done_outline_rounded;
        iconeEstado = AssetImage("assets/on.png");
        erro = false;
      });
    } catch (err) {
      erro = true;
      print(err);
    }
  }

  void postDataDesligado() async {
    try {
      late DatabaseReference dbRef =
          FirebaseDatabase.instance.ref().child('Estado');
      dbRef.set(0);
      setState(() {
        corEstado = Colors.red;
        estado = "Desligado";
        icone = Icons.block;
        iconeEstado = AssetImage("assets/off.png");
        erro = false;
      });
    } catch (err) {
      erro = true;
      print(err);
    }
  }

  @override
  void initState() {
    super.initState();
    fetchPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.cor,
        title: Text(widget.titulo),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: IconButton(
                icon: const Icon(Icons.refresh),
                tooltip: 'Atualizar Úmidade',
                onPressed: fetchPosts),
          ),
        ],
      ),
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
                      'Tempo de crescimento: ${widget.dias} dias'),
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
                      'Umidade necessária: ${widget.umidadeNecessaria}% '),
                  ],
                )),
            TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: Colors.brown,
                    textStyle:const TextStyle(fontSize: 20)),
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
                      'PH do solo: Entre ${widget.phSolo}'),
                  ],
                )),
            TextButton(
                style: TextButton.styleFrom(
                    textStyle:
                        foregroundColor: Colors.orange,
                        const TextStyle(fontSize: 20,)),
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
                      'Temperatura Ideal: ${widget.temperaturaIdeal}°C'),
                  ],
                )),
            TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.blueshade900,
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
                      style:
                          TextStyle(fontSize: 15),
                    ),
                  ],
                )),
            TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: corEstado,
                    textStyle: const TextStyle(fontSize: 20, color: corEstado)),
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
                      'Estado Atual: $estado'),
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
