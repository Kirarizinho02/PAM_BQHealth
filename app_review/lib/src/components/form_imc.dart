import 'package:app_review/src/components/classification.dart'; //Importa o componente que classifica o IMC
import 'package:app_review/src/components/ideal_weight.dart'; //Importa o componente que mostra os pesos máximos e mínimos ideais
import 'package:flutter/material.dart'; //Importação do pacote de widgets e temas do flutter

TextEditingController pesoController = TextEditingController(); //Controlador para pegar o texto digitado como peso pelo usuário
TextEditingController alturaController = TextEditingController(); //Controlador para pegar o texto digitado como altura pelo usuário
late double imc; //Define uma variável late que armazenará o valor do IMC
late String imcImprimir; //Define uma variável que armazenará a string com o valor do IMC após o click do botão
double altura = 0; //Define altura e dá o valor de 0
double peso = 0; //Define peso e dá o valor de 0

class FormIMC extends StatefulWidget { //Widget stateful que representa o estado do formulário de IMC 
  const FormIMC({super.key});

  @override 
  State<FormIMC> createState() => _FormExampleState(); //Cria o estado padrão e inicial do formulário
}

class _FormExampleState extends State<FormIMC> { //Cria uma classe que estende do estado do formulário de IMC
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>(); //Cria uma chave global para identificar o estado do formulário

  @override //Chama o widget na árvore de widgets
  void initState() {
    super.initState(); //Chama o initial state da classe mãe
    imc = 0; //Define o valor de IMC como 0
    imcImprimir = ""; //Define a string de imcImprimir como vazia
  }

  void calcIMC() { //Cria uma função para o cálculo de IMC
    peso = double.tryParse(pesoController.text.replaceAll(",", ".")) ?? 0; //Tenta converter o valor inserido de peso para um double, convertendo todas as vírgulas em pontos
    altura = double.tryParse(alturaController.text.replaceAll(",", ".")) ?? 0; //Tenta converter o valor inserido de altura para um double, convertendo todas as vírgulas em pontos

    double imc = peso / (altura * altura); //Cálcula o imc 
    String imcFixed = imc.toStringAsFixed(2); //Define a string do imcFixed como o valor do IMC porém com apenas 2 casas decimais

    if (imc.toInt() == 0) { //Se o valor do imc for 0 ou vazio, a string imprimida é vazia
      imcImprimir = ("");
    }

    setState(() { //Atualiza o estado do IMC 
      imcImprimir = ("Seu IMC é: $imcFixed"); //Exibe a string formatada
    });
  }

  @override
  Widget build(BuildContext context) { //Constroí a interface para o usuário
    return Form( //Retorna um formulário 
      key: _formKey, //Usa como chave de validação a formKey global
      child: Column( //Cria uma coluna como widget filho
        crossAxisAlignment: CrossAxisAlignment.start, //Alinha os itens a esquerda 
        children: <Widget>[ //Define as crianças da coluna
          TextFormField( //Widget para a inserção de texto por parte do usuário
            controller: pesoController, //Define que a variável que armazenará o valor do controller é a pesoController, vendo então o que o usuário digita
            decoration: const InputDecoration( //Define a decoração como a constante inputDecoration
              hintText: 'Digite seu peso:', //Mostra um hintText como maneira de fazer com que o usuário digite o peso no local correto
            ),
            validator: (String? value) { //A validação checa se existe algum valor no campo ou o mesmo se encontra vazio
              if (value == null || value.isEmpty) { //Caso o valor seja nulo, retorna a string de erro
                return 'Por favor, insira seu peso.';
              }
              return null;  //Se o valor estiver de acordo, não retorna mensagem de erro
            },
          ),
          TextFormField( //Widget para a inserção de texto por parte do usuário
            controller: alturaController, //Define que a variável que armazenará o valor do controller é a alturaController, vendo então o que o usuário digita
            decoration: const InputDecoration( //Define a decoração como a constante inputDecoration 
              hintText: 'Digite sua altura:', //Mostra um hintText como maneira de fazer com que o usuário digite a altura no local correto
            ),
            validator: (String? value) { //A validação checa se existe algum valor no campo ou o mesmo se encontra vazio
              if (value == null || value.isEmpty) { //Caso o valor seja nulo, retorna a string de erro
                return 'Por favor, insira sua altura.';
              }
              return null; //Se o valor estiver de acordo, não retorna mensagem de erro
            },
          ),
          Padding( //Define um espaçamento entre os botões e o texto que será imprimido
            padding: const EdgeInsets.symmetric(vertical: 16.0), //Define o padding vertical de forma simétrica
            child: Center( //Cria um widget de center para centralizar o botão
                child: ElevatedButton( //Cria um elevated button
              onPressed: () { //Caso o botão seja apertado, checará se o formulário está devidamente preenchido 
                if (_formKey.currentState!.validate()) {
                  calcIMC(); //Se as informações estiverem de acordo, ele calcula o IMC
                }
              },
              child: const Text('Enviar'), //Texto presente no botão
            )),
          ),
          Text(imcImprimir), //Cálculo do IMC
          Classification(imc: imc), //Classificação do IMC
          IdealWeight(altura: altura), //Pesos ideais 
        ],
      ),
    );
  }
}
