import 'package:app_review/src/components/general_appbar.dart'; //Importa o arquivo general_appbar.dart para usar dentro da construção do widget
import 'package:app_review/src/components/title_imc.dart'; //Importa o arquivo title_imc.dart para usar dentro da construção do widget
import 'package:app_review/src/components/form_imc.dart'; //Importa o arquivo form_imc.dart para usar dentro da construção do widget
import 'package:flutter/material.dart'; //Importação do pacote de widgets e temas do flutter


class Home extends StatelessWidget { //Define a classe home como um stateless widget
  const Home({super.key}); //A classe home torna-se uma constante 

  @override
  Widget build(BuildContext context) {
    return Scaffold( //Retorna um widget scaffold para a construção da tela 
      appBar: generateAppBar, //A appbar é construida pelo generateAppBar que foi importado na primeira linha
      body: Padding(
          padding: const EdgeInsets.all(8.0), //Define o body do tela com 8 pixels ao redor de todos os lados
          child: Column( //Define um filho como uma column
            crossAxisAlignment: CrossAxisAlignment.center, //Centraliza elementos na direção horizontal
            children: [ //Define os widgets filhos da column
              Container(
                  width: double.infinity, //O container ocupa toda a largura da tela
                  height: 100, //O container terá 100 de altura
                  decoration: decorationContainerTitle, //A decoração é uma variável que chama decorationContainerTitle
                  child: const Center( //Define um widget filho centralizado
                    child: TitleIMC(),//O conteúdo do widget é importado do arquivo title_imc.dart
                  )),
              Container( //Outro container que ocupa toda a largura da tela, mas tem 400 de altura e vai abrigar o conteúdo principal do app, o formulário
                  width: double.infinity,
                  height: 400,
                  decoration: decorationContainerInput, //A decoração deste container é diferente do anterior 
                  child: const Center(
                    child: FormIMC(),
                  ))
            ],
          )),
    );
  }
}

var decorationContainerTitle = BoxDecoration( //Define uma variável para o container do título 
  borderRadius: const BorderRadius.only( //Faz com que o container tenha bordas arredondadas no topo 
      topRight: Radius.circular(20), topLeft: Radius.circular(20)),
  border: Border.all(),
  color: Colors.orange, //Define a cor do container como laranja
);

var decorationContainerInput = BoxDecoration( //Define uma variável para os resultados do IMC e a classificação
  borderRadius: const BorderRadius.only( //Faz com que o container tenha bordas arredondadas embaixo
      bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
  border: Border.all(),
  color: Colors.orange, //Define a cor do container como laranja
);
