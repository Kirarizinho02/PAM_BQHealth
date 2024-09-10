import 'package:flutter/material.dart'; 
import 'package:app_review/src/pages/home.dart'; //Importa o arquivo home.dart para usar dentro da construção do widget

class MyApp extends StatelessWidget { //Define a classe MyApp como um stateless widget (não muda ao longo do tempo)
  const MyApp({super.key});  //Construtor indica que a construção do MyApp é constante

  @override //Sobreescreve o método build para exibir a interface gráfica
  Widget build(BuildContext context) { 
    return const MaterialApp( //Constroí o widget MaterialApp e retorna ele como uma constante
      debugShowCheckedModeBanner: false, //Remove a faixa de debug no canto da tela
      home: Home(), //Define a página inicial como Home() 
    );
  }
}
