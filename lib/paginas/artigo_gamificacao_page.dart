import 'package:flutter/material.dart';
import '../componentes/barra_navegacao.dart';

class ArtigoGamificacaoPage extends StatelessWidget {
  const ArtigoGamificacaoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const BarraNavegacao(),
            const SizedBox(height: 30),

            // Conteúdo do Artigo
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Afinal, o que é gamificação?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Outubro de 2026',
                    style: TextStyle(
                      color: Color(0xFFB800E5),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 25),

                  const Text(
                    'A gamificação consiste na aplicação de elementos e mecânicas dos jogos em atividades que vão além do entretenimento. Seu objetivo é tornar experiências mais interativas e envolventes, utilizando recursos como desafios, metas, pontuações e recompensas.',
                    style: TextStyle(color: Colors.white70, fontSize: 14, height: 1.5),
                  ),
                  const SizedBox(height: 16),

                  const Text(
                    'Essa estratégia pode ser aplicada em diversas áreas, como educação, saúde, comércio e empresas, contribuindo para estimular a participação e transformar atividades do cotidiano.',
                    style: TextStyle(color: Colors.white70, fontSize: 14, height: 1.5),
                  ),
                  const SizedBox(height: 16),

                  const Text(
                    'Na Star Level, exploramos essas possibilidades por meio do desenvolvimento de experiências digitais. Nosso projeto utiliza a gamificação para unir entretenimento, tecnologia e interatividade, demonstrando como os jogos podem criar novas formas de conexão entre pessoas, serviços e produtos.',
                    style: TextStyle(color: Colors.white70, fontSize: 14, height: 1.5),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}