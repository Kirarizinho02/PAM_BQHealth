import 'package:flutter/material.dart';

class Classification extends StatelessWidget {
  const Classification({super.key, required this.imc});
  final double imc;

  String classificacaoIMC() {
    if (imc == 0) {
      return "";
    } else {
      if (imc < 18.5) {
        return "A classificação do seu IMC é: Abaixo do peso.";
      } else if (imc <= 24.9) {
        return "A classificação do seu IMC é: Peso normal.";
      } else if (imc <= 29.9) {
        return "A classificação do seu IMC é: Sobrepeso.";
      } else if (imc <= 34.9) {
        return "A classificação do seu IMC é: Obesidade Grau 1.";
      } else if (imc <= 39.9) {
        return "A classificação do seu IMC é: Obesidade grau 2.";
      } else if (imc >= 40) {
        return "A classificação do seu IMC é: Obesidade grau 3 (Obesidade Mórbida).";
      } else {
        return "Digite valores válidos.";
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    String imprimirClass = classificacaoIMC();
    return Text(imprimirClass);
  }
}
