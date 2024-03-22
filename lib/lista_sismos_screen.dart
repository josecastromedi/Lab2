import 'package:flutter/material.dart';

class ListaSismosScreen extends StatelessWidget {
  const ListaSismosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listas de Sismos'),
      ),
      body: Center(
        child: Text('Listas de sismos'),
      ),
    );
  }
}
