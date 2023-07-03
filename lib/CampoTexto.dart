
import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  const CampoTexto({super.key});

  @override
  State<CampoTexto> createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepPurpleAccent,
            title: const Text(
              "Entrada de dados",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: Column(
            children: [
              Padding(
              padding: EdgeInsets.all(32),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Digite um valor',
                ),
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              ),
              ElevatedButton(
                  onPressed: (){},
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.deepPurpleAccent),
                  ),
                  child: Text(
                    'Continuar',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
              )
            ],
          ),
      ),
    );
  }
}
