import 'package:flutter/material.dart';
import 'lista_sismos_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sismos',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Sismos',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.help_outline),
              onPressed: () {},
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Mapa',
                      style: TextStyle(fontSize: 16, color: Colors.orange),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ListaSismosScreen()),
                      );
                    },
                    child: const Text(
                      'Lista',
                      style: TextStyle(fontSize: 16, color: Colors.orange),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Center(
              child: Image.asset(
                'assets/images/sismoslab2.png',
                width: 555,
                height: 550,
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: Color.fromARGB(255, 255, 255, 255),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: Row(
                  children: [
                    Icon(Icons.location_on), 
                    const SizedBox(width: 5),
                    Text(
                      'Sismos',
                      style: TextStyle(color: Colors.orange),
                    ),
                  ],
                ),
                color: Colors.orange,
              ),
              IconButton(
                onPressed: () {},
                icon: Row(
                  children: [
                    Icon(Icons
                        .feedback), 
                    const SizedBox(width: 5),
                    Text(
                      '¿Lo sentiste?',
                      style: TextStyle(color: Colors.orange),
                    ),
                  ],
                ),
                color: Colors.orange,
              ),
              IconButton(
                onPressed: () {},
                icon: Row(
                  children: [
                    Icon(Icons.more_horiz), 
                    const SizedBox(width: 5),
                    Text(
                      'Más',
                      style: TextStyle(color: Colors.orange),
                    ),
                  ],
                ),
                color: Colors.orange,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
