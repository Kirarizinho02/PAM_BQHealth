import 'package:flutter/material.dart';  //Importação do pacote de widgets e temas do flutter

  var generateAppBar = AppBar( //Gera a varíavel AppBar como um widget appBar
      title: const Text('BQ Health', style: styleTitle,), //O título da appBar será BQ Health e seu estilo vem da constante styleTitle abaixo
      centerTitle: true, //Configura a centralização do título como verdadeira
    );

const styleTitle = TextStyle( //Constroi o estilo do texto usado no título da appBar
  fontSize: 14, //Tamanho da fonte 14 pixels
  color: Colors.blue, //Fonte de cor azul nativa do dart
  );
