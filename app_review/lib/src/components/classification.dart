import 'package:flutter/material.dart'; //Importação do pacote de widgets e temas do flutter

class Classification extends StatelessWidget { //Define o widget classification como um stateless widget
  const Classification({super.key, required this.imc}); //Constroí a classe classification que precisa do valor de IMC
  final double imc; //Variável final para armazenar o valor do IMC

  String classificacaoIMC() { //Função principal que classifica o IMC com base no valor recebido
    if (imc == 0) { //Se o IMC for 0 retorna valor nulo 
      return "";
    } else {
      if (imc < 18.5) { //Se o IMC for menor que 18.5 retorna valor de abaixo do peso 
        return "A classificação do seu IMC é: Abaixo do peso.";
      } else if (imc <= 24.9) { //Se o IMC for menor ou igual que 24.9 retorna valor de peso normal 
        return "A classificação do seu IMC é: Peso normal.";
      } else if (imc <= 29.9) { //Se o IMC for menor ou igual que 29.9 retorna valor de sobrepeso
        return "A classificação do seu IMC é: Sobrepeso.";
      } else if (imc <= 34.9) { //Se o IMC for menor ou igual que 34.9 retorna valor de obesidade grau 1
        return "A classificação do seu IMC é: Obesidade Grau 1.";
      } else if (imc <= 39.9) { //Se o IMC for menor ou igual que 39.9 retorna valor de obesidade grau 2 
        return "A classificação do seu IMC é: Obesidade grau 2.";
      } else if (imc >= 40) { //Se o IMC for maior ou igual a 40 retorna valor de obesidade mórbida
        return "A classificação do seu IMC é: Obesidade grau 3 (Obesidade Mórbida).";
      } else { //Caso o IMC não calcule como deveria, o usuário receberá a mensagem de erro 
        return "Digite valores válidos.";
      }
    }
  }

  @override //Método build que constrói o widget
  Widget build(BuildContext context) { 
    String imprimirClass = classificacaoIMC(); //Chama a função classificacaoIMC para obter a classificação do IMC e armazena na variável imprimirClass
    return Text(imprimirClass); //Retorna o texto armazenado na string 
  }
}
