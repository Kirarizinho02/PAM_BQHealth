import 'package:flutter/material.dart';

TextEditingController pesoController = TextEditingController();
TextEditingController alturaController = TextEditingController();

late String imcImprimir;

class FormIMC extends StatefulWidget {
  const FormIMC({super.key});

  @override
  State<FormIMC> createState() => _FormExampleState();
}

class _FormExampleState extends State<FormIMC> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
                if (_formKey.currentState!.validate()) {}
              },
              child: const Text('Submit'),
            )),
          ),
        ],
      ),
    );
  }
}

void calcIMC() {
  double peso = double.tryParse(pesoController.text.replaceAll(",", "."))  double imc = peso
}
