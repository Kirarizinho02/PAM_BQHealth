import 'package:app_review/src/components/classification.dart';
import 'package:flutter/material.dart';

TextEditingController pesoController = TextEditingController();
TextEditingController alturaController = TextEditingController();
late double imc;
late String imcImprimir;

class FormIMC extends StatefulWidget {
  const FormIMC({super.key});

  @override
  State<FormIMC> createState() => _FormExampleState();
}

class _FormExampleState extends State<FormIMC> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    imc = 0;
    imcImprimir = "";
  }

  void calcIMC() {
    double peso =
        double.tryParse(pesoController.text.replaceAll(",", ".")) ?? 0;
    double altura =
        double.tryParse(alturaController.text.replaceAll(",", ".")) ?? 0;

    double imc = peso / (altura * altura);

    setState(() {
      imcImprimir = ("imc: $imc");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            controller: pesoController,
            decoration: const InputDecoration(
              hintText: 'Digite seu peso:',
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, insira seu peso.';
              }
              return null;
            },
          ),
          TextFormField(
            controller: alturaController,
            decoration: const InputDecoration(
              hintText: 'Digite sua altura:',
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, insira sua altura.';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Center(
                child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  calcIMC();
                  setState(() {
                    Classification(calcIMC());
                  });
                }
              },
              child: const Text('Enviar'),
            )),
          ),
          Text(imcImprimir)
        ],
      ),
    );
  }
}
