import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController controllerAlcool = TextEditingController();
  final TextEditingController controllerGasolina = TextEditingController();
  String resultadoFinal = '';

  void calcular() {
    double? precoAlcool = double.tryParse(controllerAlcool.text);
    double? precoGasolina = double.tryParse(controllerGasolina.text);

    if (precoAlcool == null || precoGasolina == null) {
      setState(() {
        resultadoFinal = 'Número inválido, digite números maiores que 0 e utilizando (.)';
      });
    } else {
      setState(() {
        //resultadoFinal = 'Número válido, faça o cálculo';
        if (precoAlcool / precoGasolina >= 0.7) {
          resultadoFinal = 'É melhor abastecer com gasolina';
        } else {
          resultadoFinal = 'É melhor utilizar ácool';
          //limparCampos();
        }
      });
    }
  }

  //Limpar campos após calcular
  void limparCampos() {
    controllerAlcool.text = '';
    controllerGasolina.text = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Álcool ou Gasolina'),
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset('images/logo.png'),
              const Padding(
                padding: EdgeInsets.only(top: 32),
                child: Text(
                  'Saiba qual a melhor opção para '
                      'abastecimento do seu carro',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Preço Álcool, ex: 1.59',
                  ),
                  style: const TextStyle(
                    fontSize: 22,
                  ),
                  controller: controllerAlcool,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Preço Gasolina, ex: 3.15',
                  ),
                  style: const TextStyle(
                    fontSize: 22,
                  ),
                  controller: controllerGasolina,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ElevatedButton(
                  onPressed: calcular,
                  child: const Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      'Calcular',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  resultadoFinal,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
