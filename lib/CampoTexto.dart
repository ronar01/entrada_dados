
import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  const CampoTexto({super.key});

  @override
  State<CampoTexto> createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {

  TextEditingController _controllerAlcool = TextEditingController();
  TextEditingController _controllerGasolina = TextEditingController();
  String _resultado = "";
  void _calcular() {
    List<double?> _lista = verificarVirgula();
    double? _precoAlcool = _lista[0];
    double? _precoGasolina = _lista[1];

    if(_precoGasolina! > 0 && _precoAlcool! > 0){
      if((_precoAlcool/_precoGasolina) >= 0.7){
        setState(() {
          _resultado = "melhor abastecer com gasolina";
        });
      }else{
        setState(() {
          _resultado = "Melhor abastecer com alcool";
        });
      }
    }else{
      setState(() {
        _resultado = "Valor nulo ou negativo!";
      });
    }

  }
    List<double?> verificarVirgula(){
      double? _precoAlcool;
      double? _precoGasolina;
      if(_controllerAlcool.text.contains(",")){
        String formatado = _controllerAlcool.text.trim().replaceAll(",", ".");
        _precoAlcool = double.tryParse(formatado);
      }else{
        _precoAlcool = double.tryParse(_controllerAlcool.text.trim());
      }
      if(_controllerGasolina.text.contains(",")){
        String formatado1 = _controllerGasolina.text.trim().replaceAll(",", ".");
        _precoGasolina = double.tryParse(formatado1);
      }else{
        _precoGasolina = double.tryParse(_controllerGasolina.text.trim());
      }
      return [_precoAlcool, _precoGasolina];
    }


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
          body: SingleChildScrollView(
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
                      onPressed: _calcular,
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
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 32, right: 32, top: 20),
                    child: Text(
                      _resultado,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
      );
  }
}
