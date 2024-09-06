import 'package:flutter/material.dart';

class IdealWeight extends StatelessWidget {
  const IdealWeight({super.key, required this.altura});
  final double altura;

  @override
  Widget build(BuildContext context) {
    if (altura == 0) {
      return const Text("");
    } else {
      String pesominimo = (18.5 * altura * altura).toStringAsFixed(2);
      String pesomaximo = (24.9 * altura * altura).toStringAsFixed(2);

      String pesoideal =
          ("O seu peso mínimo ideal é: $pesominimo \nO seu peso máximo ideal é: $pesomaximo");
      return Text(pesoideal);
    }
  }
}
