import 'package:flutter/material.dart';
import '../componentes/barra_navegacao.dart';

class Curiosidade {
  final String titulo;
  final String texto;

  const Curiosidade({
    required this.titulo,
    required this.texto,
  });
}

const List<Curiosidade> curiosidades = [
  Curiosidade(
    titulo: 'Inspiração nos Modelos e Física',
    texto:
        'Timmy e todos os personagens de Timmy: Build Your Dates são baseados nos modelos do jogo Human Fall Flat, e sua física foi um dos principais componentes de desenvolvimento.',
  ),
  Curiosidade(
    titulo: 'A Origem do Visual de Mr. Savage',
    texto:
        'O design de Mr. Savage é inspirado no cantor japonês Masayuki Suzuki, conhecido como o rei das músicas românticas japonesas.',
  ),
  Curiosidade(
    titulo: 'Mudança na Narrativa Original',
    texto:
        'Antes, a narrativa do jogo era algo muito mais satírico, voltado a retratar a vida de um trabalhador de caixa. Mas, por conta de algumas insatisfações de terceiros, mudamos para a narrativa atual do jogo.',
  ),
];

class CuriosidadesPage extends StatelessWidget {
  const CuriosidadesPage({super.key});

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
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'LISTA DE CURIOSIDADES',
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
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: largura > 800 ? largura * 0.15 : 20,
              ),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: curiosidades.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 24),
                    child: _CartaoCuriosidade(
                      numero: index + 1,
                      curiosidade: curiosidades[index],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class _CartaoCuriosidade extends StatelessWidget {
  final int numero;
  final Curiosidade curiosidade;

  const _CartaoCuriosidade({
    required this.numero,
    required this.curiosidade,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
            '#$numero — ${curiosidade.titulo.toUpperCase()}',
            style: const TextStyle(
              color: Color(0xFFD455F5),
              fontSize: 18,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.1,
            ),
          ),
          const Divider(
            color: Color(0xFFB800E5),
            height: 24,
            thickness: 1,
          ),
          Text(
            curiosidade.texto,
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