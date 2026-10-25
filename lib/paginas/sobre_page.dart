import 'package:flutter/material.dart';
import '../componentes/barra_navegacao.dart';

class Integrante {
  final String nome;
  final String cargo;
  final String descricao;
  final String? caminhoImagem; // Caminho da foto/imagem local ou URL

  const Integrante({
    required this.nome,
    required this.cargo,
    required this.descricao,
    this.caminhoImagem,
  });
}

// Lista de integrantes do grupo de TCC (altere os dados conforme seu grupo)
const List<Integrante> integrantes = [
  Integrante(
    nome: 'Kelvin Pereira Lima',
    cargo: 'Modelador 3D / Programador mobile',
    descricao: 'Desenvolveu a estrutura do aplicativo em Flutter, criou a interface visual e implementou o sistema de navegação entre as telas.\n\nAlém disso, foi responsável pela modelagem 3D dos objetos do jogo e alguns dos NPCs, garantindo a integração entre os elementos visuais e a funcionalidade do aplicativo.',
    caminhoImagem: 'assets/imagens/kelvin serio.jpg', 
  ),
  Integrante(
    nome: 'Victor Mollo Cabral',
    cargo: 'Criador de texturas 3D / Designer e modelador de Personagens',
    descricao: 'Principal responsável pela criação das texturas 3D dos objetos do jogo, garantindo que eles tenham uma aparência cartoonesca e atraente.\n\nAlém disso, contribuiu para o design e modelagem de personagens, trazendo vida e personalidade aos elementos do jogo.',
    caminhoImagem: 'assets/imagens/Mollo.jpeg', 
  ),
  Integrante(
    nome: 'Miguel Fauzi Carvalho Santos',
    cargo: 'Documentação / DS / Roterista',
    descricao: 'Responsável pela documentação do projeto, garantindo que todas as etapas do desenvolvimento fossem registradas e organizadas.\n\nAlém disso, atuou como roteirista, contribuindo para a criação da narrativa do jogo',
    caminhoImagem: 'assets/imagens/miguel.jpeg',
  ),
  Integrante(
    nome: 'Henrique Tomazine',
    cargo: 'Auxiliar de 3D / Level Designer',
    descricao: 'Responsável por auxiliar na modelagem 3D de objetos do jogo, além de contribuir para o design dos níveis e ambientes do jogo.',
    caminhoImagem: 'assets/imagens/flakes.jpeg',
  )
  ,
  Integrante(
    nome: 'Daniel de Souza',
    cargo: 'Programador Principal',
    descricao: 'Responsável pela programação do jogo, incluindo a implementação da física, mecânicas de jogo e integração com os elementos visuais.',
    caminhoImagem: 'assets/imagens/mini pekka.jpeg', 
  )
];

class SobrePage extends StatelessWidget {
  const SobrePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const BarraNavegacao(),
            const SizedBox(height: 30),

            // Título Principal
            const Text(
              'SOBRE A STAR LEVEL',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),

            // Cartão com o Texto de Apresentação
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xFF1E1E1E),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: const Color(0xFFB800E5), width: 1.5),
                ),
                child: const Text(
                  "Venham conhecer a Star Level, uma empresa que une criatividade, tecnologia e inovação para desenvolver soluções de gamificação, jogos e projetos digitais em diferentes áreas!\n\n"
                  "Tudo começou com uma parceria com a equipe de Desenvolvimento de Sistemas (DS), unindo conhecimentos e ideias para transformar projetos em experiências interativas e significativas.\n\n"
                  "Quer conhecer nossos projetos e descobrir o que estamos preparando? Então, venha fazer parte dessa jornada com a gente!\n\n"
                  "Star Level — Do processo ao sucesso!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    height: 1.5,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 40),

            // Seção Integrantes
            const Text(
              'INTEGRANTES DO TCC',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),

            // Lista dos Integrantes
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: integrantes.map((integrante) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: _CartaoIntegrante(integrante: integrante),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

class _CartaoIntegrante extends StatelessWidget {
  final Integrante integrante;

  const _CartaoIntegrante({required this.integrante});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF121212),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.white24),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Espaço para a Foto do Integrante
          Container(
            width: 80,
            height: 95,
            decoration: BoxDecoration(
              color: const Color(0xFF1B00B8),
              borderRadius: BorderRadius.circular(8),
            ),
            child: integrante.caminhoImagem != null
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      integrante.caminhoImagem!,
                      fit: BoxFit.cover,
                    ),
                  )
                : const Icon(Icons.person, color: Colors.white, size: 40),
          ),
          const SizedBox(width: 16),

          // Informações do Integrante
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  integrante.nome,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  integrante.cargo,
                  style: const TextStyle(
                    color: Color(0xFFB800E5),
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  integrante.descricao,
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 12,
                    height: 1.3,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}