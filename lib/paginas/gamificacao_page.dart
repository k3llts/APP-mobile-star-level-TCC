import 'package:flutter/material.dart';
import '../componentes/barra_navegacao.dart';

class GamificacaoPage extends StatelessWidget {
  const GamificacaoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final largura = MediaQuery.sizeOf(context).width;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const BarraNavegacao(),
            const SizedBox(height: 30),

            // Título Principal da Página
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'GAMIFICAÇÃO: TIMMY - BUILD YOUR DATES',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  height: 1.3,
                ),
              ),
            ),
            const SizedBox(height: 30),

            // Conteúdo em Blocos
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: largura > 800 ? largura * 0.15 : 20,
              ),
              child: const Column(
                children: [
                  _SecaoGamificacao(
                    titulo: 'INTRODUÇÃO',
                    conteudo:
                        'Este trabalho tem como finalidade apresentar o desenvolvimento de uma proposta de gamificação aplicada ao comércio eletrônico, utilizando o jogo digital Timmy: Build Your Dates como ferramenta de interação e divulgação da marca Sakkola.\n\n'
                        'O projeto aborda a utilização de elementos de jogos para criar uma experiência mais interativa e envolvente, na qual o jogador acompanha Timmy na preparação de encontros, explorando diferentes cenários, coletando produtos e superando obstáculos. A proposta busca integrar os produtos à experiência de forma natural, unindo narrativa, interação e entretenimento para aproximar o público da marca e demonstrar como a gamificação pode contribuir para novas formas de apresentação e divulgação de produtos no ambiente digital.',
                  ),
                  SizedBox(height: 24),
                  _SecaoGamificacao(
                    titulo: 'SINOPSE',
                    conteudo:
                        '"Se você gosta de ir ao mercado e, acima de tudo, é um grande romântico, prepare-se para embarcar em Timmy: Build Your Dates! Nesta divertida aventura de plataforma, você acompanhará o Grande Timmy em uma missão para reconquistar o coração de Nala ao longo das principais datas comemorativas do ano.\n\n'
                        'Guiado pelo misterioso Guru do Amor, Mr. Savage, Timmy deverá explorar o gigantesco Sakkola em busca dos presentes perfeitos, enfrentando desafios, obstáculos e aproveitando promoções imperdíveis pelo caminho.\n\n'
                        'Com muito humor, fases temáticas e uma boa dose de criatividade, Timmy: Build Your Dates combina exploração, estratégia e romance em uma experiência leve, divertida e envolvente, provando que os melhores presentes não são os mais caros, mas aqueles escolhidos com carinho."',
                  ),
                  SizedBox(height: 24),
                  _SecaoGamificacao(
                    titulo: 'NARRATIVA',
                    conteudo:
                        'A narrativa de Timmy: Build Your Dates apresenta a jornada de Timmy, um jovem que deseja recuperar a proximidade com Nala após perceber o distanciamento provocado por sua rotina profissional. Com a ajuda de Mr. Savage, ele passa a enfrentar desafios relacionados a diferentes datas comemorativas, buscando produtos e presentes que contribuam para a preparação de encontros especiais.\n\n'
                        'Cada fase representa uma ocasião diferente, contextualizando a busca por itens específicos e proporcionando ao jogador uma experiência que combina objetivos, exploração e interação com o cenário. A narrativa serve como base para a progressão das partidas, conectando os desafios do jogo ao propósito de demonstrar carinho e fortalecer laços.',
                  ),
                  SizedBox(height: 24),
                  _SecaoGamificacao(
                    titulo: 'DESCRIÇÃO DO PROJETO',
                    conteudo:
                        'Timmy: Build Your Dates é um projeto de jogo digital desenvolvido pela Star Level, que propõe uma experiência de entretenimento baseada em exploração, plataforma 3D e puzzles. O projeto também estabelece uma relação com a plataforma de e-commerce Sakolla, desenvolvida em parceria com a equipe de Desenvolvimento de Sistemas, integrando produtos comerciais ao universo do jogo.\n\n'
                        'A proposta utiliza elementos de gamificação para aproximar entretenimento e experiências comerciais, apresentando produtos de maneira contextualizada durante a gameplay. Por meio de personagens, narrativa e desafios temáticos, o projeto busca proporcionar uma experiência divertida, acessível e envolvente, explorando novas possibilidades de interação entre jogos digitais e comércio eletrônico.',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

class _SecaoGamificacao extends StatelessWidget {
  final String titulo;
  final String conteudo;

  const _SecaoGamificacao({
    required this.titulo,
    required this.conteudo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFB800E5), width: 1.5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            titulo,
            style: const TextStyle(
              color: Color(0xFFD455F5),
              fontSize: 18,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.1,
            ),
          ),
          const Divider(color: Color(0xFFB800E5), height: 24, thickness: 1),
          Text(
            conteudo,
            textAlign: TextAlign.justify,
            style: const TextStyle(
              color: Color.fromARGB(255, 220, 220, 220),
              fontSize: 14,
              height: 1.6,
            ),
          ),
        ],
      ),
    );
  }
}