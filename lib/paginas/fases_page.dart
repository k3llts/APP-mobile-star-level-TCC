import 'package:flutter/material.dart';
import '../../componentes/barra_navegacao.dart';

class Fase {
  final String titulo;
  final String periodo;
  final String descricao;
  final String caminhoImagem;

  const Fase({
    required this.titulo,
    required this.periodo,
    required this.descricao,
    required this.caminhoImagem,
  });
}

const List<Fase> fases = [
  Fase(
    titulo: 'A Caça aos Ovos',
    periodo: 'Páscoa',
    descricao:
        'Durante as celebrações da Páscoa, Timmy embarca em uma aventura pelo mercado Sakolla em busca de presentes especiais. Em meio aos chocolates, ovos e decorações temáticas, o jogador precisa explorar o ambiente, superar obstáculos e encontrar os itens necessários para completar sua missão. A fase introduz os desafios de exploração e coleta, proporcionando o primeiro contato com as mecânicas do jogo.',
    caminhoImagem: 'assets/imagens/fases/dia de pascoa.jpeg',
  ),
  Fase(
    titulo: 'As Mãos do Cupido',
    periodo: 'Dia dos Namorados',
    descricao:
        'Com a chegada do Dia dos Namorados, Timmy busca preparar uma surpresa especial para Nala. O mercado Sakolla apresenta uma ambientação romântica, com produtos e presentes relacionados à data. Nesta etapa, o jogador enfrenta desafios mais elaborados, utilizando suas habilidades de movimentação, exploração e resolução de puzzles para encontrar os presentes adequados e concluir a missão.',
    caminhoImagem: 'assets/imagens/fases/dia dos namorados.jpeg',
  ),
  Fase(
    titulo: 'A época mais linda',
    periodo: 'Natal',
    descricao:
        'Em meio ao clima natalino, Timmy inicia sua última aventura no mercado Sakolla, buscando os presentes que tornarão essa celebração ainda mais especial. Com uma ambientação repleta de decorações, produtos festivos e novos desafios, o jogador precisa utilizar tudo o que aprendeu nas fases anteriores para encontrar os itens e concluir sua jornada. A etapa representa o encerramento da experiência, conectando a aventura à importância de demonstrar carinho e compartilhar momentos especiais.',
    caminhoImagem: 'assets/imagens/fases/dia de natal.jpeg',
  ),
];

class FasesPage extends StatelessWidget {
  const FasesPage({super.key});

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
                'FASES DO JOGO',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
            ),
            const SizedBox(height: 30),

            // Lista de Cartões das Fases
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: largura > 800 ? largura * 0.15 : 20,
              ),
              child: Column(
                children: fases.map((fase) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 32),
                    child: _CartaoFase(fase: fase),
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

class _CartaoFase extends StatelessWidget {
  final Fase fase;

  const _CartaoFase({required this.fase});

  void _mostrarImagemAmpliada(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Colors.black.withOpacity(0.9),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: InteractiveViewer(
                  panEnabled: true,
                  boundaryMargin: const EdgeInsets.all(20),
                  minScale: 0.5,
                  maxScale: 4,
                  child: Image.asset(
                    fase.caminhoImagem,
                    fit: BoxFit.contain,
                    filterQuality: FilterQuality.none,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 10,
              right: 10,
              child: IconButton(
                icon: const Icon(Icons.close, color: Colors.white, size: 30),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFB800E5), width: 2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Imagem Grande da Fase no topo do cartão
          GestureDetector(
            onTap: () => _mostrarImagemAmpliada(context),
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
              child: Container(
                height: 240,
                width: double.infinity,
                color: const Color(0xFF121212),
                child: Image.asset(
                  fase.caminhoImagem,
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.none,
                  errorBuilder: (context, error, stackTrace) {
                    return const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.landscape, color: Colors.white38, size: 54),
                        SizedBox(height: 8),
                        Text(
                          'Imagem da fase em breve',
                          style: TextStyle(color: Colors.white38, fontSize: 12),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),

          // Conteúdo textual (Título, Período e Descrição)
          Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        fase.titulo,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFB800E5).withOpacity(0.2),
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: const Color(0xFFB800E5)),
                      ),
                      child: Text(
                        'Período: ${fase.periodo}',
                        style: const TextStyle(
                          color: Color(0xFFD455F5),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const Divider(
                  color: Color(0xFFB800E5),
                  height: 28,
                  thickness: 1,
                ),
                Text(
                  fase.descricao,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 220, 220, 220),
                    fontSize: 14,
                    height: 1.6,
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