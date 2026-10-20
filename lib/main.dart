// Aluno: Pedro Augusto de Melo Borges
import 'package:flutter/material.dart';

void main() => runApp(const Principal());

class Principal extends StatelessWidget {
  const Principal({super.key});

  final List<Map<String, String>> pontosTuristicos = const [
    {
      'nome': 'Museu do Café',
      'cidade': 'Santos',
      'imagem': 'assets/images/museu-do-café_01.jpg',
      'descricao':
          'Museu instalado no prédio histórico da antiga Bolsa Oficial do Café.',
    },
    {
      'nome': 'Memorial das Conquistas',
      'cidade': 'Santos',
      'imagem': 'assets/images/memorial_visitas_02.jpg',
      'descricao':
          'Espaço que apresenta a história e as conquistas do Santos Futebol Clube.',
    },
    {
      'nome': 'Linha Turística do Bonde',
      'cidade': 'Santos',
      'imagem': 'assets/images/linha_bonde_03.jpg',
      'descricao':
          'Passeio de bonde pelo Centro Histórico e por atrações da cidade.',
    },
    {
      'nome': 'Museu de Pesca',
      'cidade': 'Santos',
      'imagem': 'assets/images/museu_pesca_04.jpg',
      'descricao':
          'Museu com exposições sobre a vida marinha, embarcações e pesca.',
    },
    {
      'nome': 'Monte Serrat',
      'cidade': 'Santos',
      'imagem': 'assets/images/monte_serrar_05.jpg',
      'descricao':
          'Ponto elevado com santuário, construções históricas e vista da cidade.',
    },
    {
      'nome': 'Museu Pelé',
      'cidade': 'Santos',
      'imagem': 'assets/images/museu_pele_06.jpg',
      'descricao':
          'Museu dedicado à trajetória de Pelé, instalado nos Casarões do Valongo.',
    },
    {
      'nome': 'Pinacoteca Benedicto Calixto',
      'cidade': 'Santos',
      'imagem': 'assets/images/pinacoteca_07.jpg',
      'descricao':
          'Casarão histórico que abriga obras de Benedicto Calixto e exposições.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _titulo(),
        body: _listaPontosTuristicos(),
      ),
    );
  }

  AppBar _titulo() {
    return AppBar(
      title: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Pontos Turísticos'),
          Text(
            'Pedro Augusto de Melo Borges',
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
      centerTitle: true,
    );
  }

  ListView _listaPontosTuristicos() {
    return ListView.builder(
      itemCount: pontosTuristicos.length,
      itemBuilder: (context, indice) {
        return _itemPontoTuristico(pontosTuristicos[indice]);
      },
    );
  }

  Container _itemPontoTuristico(Map<String, String> ponto) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Image.asset(
            ponto['imagem']!,
            width: 110,
            height: 90,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ponto['nome']!,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(ponto['cidade']!),
                const SizedBox(height: 4),
                Text(ponto['descricao']!),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
