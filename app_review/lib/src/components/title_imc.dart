import 'package:flutter/material.dart'; //Importação do pacote de widgets e temas do flutter

class TitleIMC extends StatelessWidget { //Construção do widget TitleIMC como um stateless widget
  const TitleIMC({super.key}); //Definição do widget como constante 

  @override
  Widget build(BuildContext context) { //Chama o método build para a construção da interfáce gráfica
    return const Text('BQ Health', style: TextStyle(fontSize: 20.0)); //Define o texto que será exibido e o seu tamanho, também marcando-o como const
  }
}
