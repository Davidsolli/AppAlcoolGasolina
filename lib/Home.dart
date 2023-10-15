import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

    final TextEditingController controllerAlcool = TextEditingController();
    final TextEditingController controllerGasolina = TextEditingController();

    var _resultadoFinal = 'Melhor abastecer com alcool';

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
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Preço Alcool, ex: 1.59',
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
                  onPressed: (){},
                  child: const Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      'Calcular',
                      style: TextStyle(
                          fontSize: 20
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  _resultadoFinal,
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
