import 'package:flutter/material.dart';

class Alface extends StatefulWidget {
  const Alface({super.key});

  @override
  State<Alface> createState() => _AlfaceState();
}

class _AlfaceState extends State<Alface> {
  bool valor = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('Cultura da Alface')),
      body: Center(
        child: Column(
          children: [
            TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: Colors.green,
                    textStyle: const TextStyle(fontSize: 20)),
                onPressed: () {},
                child: Row(
                  children: const [
                    Icon(
                      Icons.call_made_rounded,
                      color: Colors.green,
                      size: 40,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Tempo de crescimento: 96 Dias ',
                    ),
                  ],
                )),
            TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: Colors.blue,
                    textStyle: const TextStyle(fontSize: 20)),
                onPressed: () {},
                child: Row(
                  children: const [
                    Icon(
                      Icons.water,
                      color: Colors.blue,
                      size: 40,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Umidade necessária: 0% ',
                    ),
                  ],
                )),
            TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: Colors.orange,
                    textStyle: const TextStyle(fontSize: 20)),
                onPressed: () {},
                child: Row(
                  children: const [
                    Icon(
                      Icons.sunny,
                      color: Colors.orange,
                      size: 40,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Temperatura Ideal: 0 °C',
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
                    const Text(
                      'Umidade Atual: 0%',
                    ),
                  ],
                )),
            buildSwitch(),
          ],
        ),
      ),
    );
  }

  Widget buildSwitch() => Transform.scale(
        scale: 2,
        child: Switch.adaptive(
          activeColor: Colors.green,
          activeTrackColor: Colors.green.withOpacity(0.4),
          inactiveThumbColor: Colors.red,
          inactiveTrackColor: Colors.red.withOpacity(0.4),
          splashRadius: 10,
          activeThumbImage: const NetworkImage(
              'https://cdn-icons-png.flaticon.com/512/840/840513.png'),
          inactiveThumbImage: const NetworkImage(
              'https://cdn-icons-png.flaticon.com/512/3292/3292455.png'),
          value: valor,
          onChanged: (valor) => setState(
            () => this.valor = valor,
          ),
        ),
      );
}
