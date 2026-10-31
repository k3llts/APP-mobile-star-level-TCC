import 'package:flutter/material.dart';
import '../componentes/barra_navegacao.dart';

class CuriosidadesPage extends StatelessWidget {
  const CuriosidadesPage({super.key});

  @override
  Widget build(BuildContext context) { // Widget de construção da página de curiosidades
    final List<String> curiosidades = [
      'Timmy e todos os personagens de Timmy Build Your Dates, são baseado nos modelos do jogo Human Fall Flat e, sua física foi um dos principais componentes de desenvolvimento.',
      'Kinomeko Neilo, é uma garota brasileira que finge ser japonesa, pra se destacar mais como cantora no Japão, segundo ela mesma, isso ajuda bastante.',
      'Kinomeko Neilo nunca foi reconhecida em qualquer lugar do mundo, exceto por amigos e parentes.',
      'M.Genérico, M.Cliche e M.Obvio são da mesma família, e quando os três estão juntos, eles formam o grupo trilogy of bad (Trilogia de M#%@&).',
      'O Nerd Gamer tem uma irmã chamada Benenilda, que também é conhecida como Kinomeko Neilo. Ele não gosta de falar muito dela para outras pessoas , pois, segundo ele: “a minha irmã é cringe e poser demais tentando parecer com a minha Hatsune Miku”.',
      'No jogo Timmy Build Your Dates, existe um fliperama que contem um mini game secreto que foi desenvolvido por um dos progamadores do jogo.',
      'O design de mr savage é inspirado no cantor japonês rei das músicas romanticas japonesas masayuki Suzuki.',
      'Antes a narrativa do jogo era algo muito mais satírico voltado a retratar a vida de um trabalhador de caixa. Mas, por conta de algumas insatisfações de terceiros, mudamos para a narrativa atual do jogo.',
      'O design de Zé Birulilo é inspirado em Gord, um personagem secundário do filme Detona ralph 2, da Disney.',
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const BarraNavegacao(),
            const SizedBox(height: 20),
            const Text(
              'Lista de Curiosidades',
              style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: curiosidades.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text(
                    '${index + 1}. ${curiosidades[index]}',
                    style: const TextStyle(color: Colors.white, fontSize: 14),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}