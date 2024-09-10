import 'package:flutter/material.dart';  //Importação do pacote de widgets e temas do flutter

class IdealWeight extends StatelessWidget { //Cria o widget IdealWeight como um stateless widget
  const IdealWeight({super.key, required this.altura}); //Define o widget como constante e pede uma variável vinda como parâmetro e necessária para o funcionamento
  final double altura; //Define uma variável de altura como final para não precisar passar um valor imediatamente

  @override
  Widget build(BuildContext context) { //Chama o método build para a construção 
    if (altura == 0) { //Se a altura tiver valor nulo, ou 0, o widget fica invisível pois retornará um texto vazio
      return const Text(""); //Texto vazio
    } else { //Caso contrário o widget calculará o peso mínimo e peso máximo ideal e deixará apenas 2 casas decimais no final
      String pesominimo = (18.5 * altura * altura).toStringAsFixed(2); //Cálculo do peso minímo ideal
      String pesomaximo = (24.9 * altura * altura).toStringAsFixed(2); //Cálculo do peso máximo ideal

      String pesoideal = //Constroí a string peso ideal para retorná-la
          ("O seu peso mínimo ideal é: $pesominimo \nO seu peso máximo ideal é: $pesomaximo"); //Texto na string com os valores das variáveis
      return Text(pesoideal); //Retorno do texto presente na string
    }
  }
}
