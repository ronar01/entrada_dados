
import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  const CampoTexto({super.key});

  @override
  State<CampoTexto> createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {
  TextEditingController _controllerAlcool = TextEditingController();
  TextEditingController _controllerGasolina = TextEditingController();
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
          body: Container(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsets.all(32),
                    child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 15),
                            child: Image.asset("images/logo.png"),
                          ),
                          TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              labelText: 'Preço Alcool',
                            ),
                            style: TextStyle(
                              fontSize: 25,
                            ),
                            controller: _controllerAlcool,
                          ),
                          TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              labelText: 'Preço Gasolina',
                            ),
                            style: TextStyle(
                              fontSize: 25,
                            ),
                            controller: _controllerGasolina,
                          )
                        ]
                    ),
                  ), //Collumn
                  Padding(
                    padding: EdgeInsets.only(left: 32, right: 32),
                    child: ElevatedButton(
                      onPressed: (){},
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.deepPurpleAccent),
                      ),
                      child: Text(
                        'Calcular',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ) ,
                  )
                ],
              ),
            ),
          )
      ),
    );
  }
}
