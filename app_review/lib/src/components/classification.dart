import 'package:flutter/material.dart';
import 'form_imc.dart';

class Classification extends StatefulWidget {
  const Classification(void calcIMC, {super.key});

  @override
  State<Classification> createState() => _ClassificationState();
}

class _ClassificationState extends State<Classification> {
  @override
  Widget build(BuildContext context) {
    setState(() {
      if (imc < 9) {
        imcImprimir = "por favor funciona";
      } else {
        imcImprimir = "vou me matar";
      }
    });
  }
}
