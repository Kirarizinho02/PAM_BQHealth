import 'package:app_review/src/components/general_appbar.dart';
import 'package:app_review/src/components/title_imc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app_review/src/components/form_imc.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: generateAppBar,
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  width: double.infinity,
                  height: 100,
                  decoration: decorationContainerTitle,
                  child: const Center(
                    child: TitleIMC(),
                  )),
              Container(
                  width: double.infinity,
                  height: 400,
                  child: const Center(
                    child: FormIMC(),
                  ))
            ],
          )),
    );
  }
}

var decorationContainerTitle = BoxDecoration(
  borderRadius: const BorderRadius.only(
      topRight: Radius.circular(20), topLeft: Radius.circular(20)),
  border: Border.all(),
  color: Colors.orange,
);

var decorationContainerInput = BoxDecoration(
  borderRadius: const BorderRadius.only(
      bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
  border: Border.all(),
  color: Colors.orange,
);
