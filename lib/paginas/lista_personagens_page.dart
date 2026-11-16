import 'package:flutter/material.dart';
import '../componentes/barra_navegacao.dart';

class Personagem {
  final String nome;
  final String descricao;
  final String? subtitulo;
  final String? caminhoImagem;

  const Personagem({
    required this.nome,
    required this.descricao,
    this.subtitulo,
    this.caminhoImagem,
  });
}

const List<Personagem> personagens = [
  Personagem(
    nome: 'Timmy (Timóteo)',
    subtitulo: 'Protagonista',
    descricao: 'Timmy é o personagem principal do jogo, controlado pelo jogador. Um jovem brasileiro que, ao perceber que sua rotina profissional acabou afastando-o de sua namorada, decide buscar uma maneira de reconstruir essa conexão. Sua jornada acontece por meio da exploração, da coleta de presentes e da preparação de encontros especiais.',
    caminhoImagem: 'assets/imagens/lista_de_personagens/timmy-icon.png',
  ),
  Personagem(
    nome: 'Mr savage',
    subtitulo: 'Guru do Amor',
    descricao: 'Mr. Savage é um guru do amor responsável por orientar e desafiar Timmy em sua jornada. Com seus conselhos e desafios, ele apresenta ao protagonista a importância de demonstrar carinho e atenção por meio de gestos significativos. Sua presença contextualiza as missões e introduz os desafios das diferentes fases.',
    caminhoImagem: 'assets/imagens/lista_de_personagens/savage-icon.png',
  ),
  Personagem(
    nome: 'Nala',
    subtitulo: 'Motivação Narrativa',
    descricao: 'Nala representa a motivação central da jornada de Timmy. Sua importância está relacionada ao objetivo de reconstruir a conexão afetiva e preparar encontros especiais. Ela estabelece o propósito das aventuras e dá significado aos presentes encontrados durante o jogo.',
    caminhoImagem: 'assets/imagens/lista_de_personagens/nala-icon.png',
  ),
];

class ListaPersonagensPage extends StatelessWidget {
  const ListaPersonagensPage({super.key});

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
            const SizedBox(height: 28),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                'LISTA DE PERSONAGENS',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 21,
                  height: 1.2,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: largura * 0.10),
              child: Column(
                children: List.generate(personagens.length, (index) {
                  return Padding(
                    padding: EdgeInsets.only(
                      bottom: index == personagens.length - 1 ? 24 : 38,
                    ),
                    child: CartaoPersonagem(personagem: personagens[index]),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CartaoPersonagem extends StatelessWidget {
  final Personagem personagem;

  const CartaoPersonagem({super.key, required this.personagem});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Moldura com a imagem do personagem
        Container(
          width: 166,
          height: 190,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 217, 97, 253),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: const Color(0xFFB800E5), width: 1.5),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: personagem.caminhoImagem != null
                ? Image.asset(
                    personagem.caminhoImagem!,
                    fit: BoxFit.contain,
                    filterQuality: FilterQuality.none,
                    errorBuilder: (context, error, stackTrace) {
                      return const Center(
                        child: Icon(Icons.person, color: Colors.white54, size: 40),
                      );
                    },
                  )
                : const Center(
                    child: Icon(Icons.person, color: Colors.white54, size: 40),
                  ),
          ),
        ),
        const SizedBox(width: 14),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                personagem.nome,
                style: const TextStyle(
                  color: Color.fromARGB(255, 165, 35, 216),
                  fontSize: 22,
                  height: 1.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
              if (personagem.subtitulo != null) ...[
                const SizedBox(height: 4),
                Text(
                  personagem.subtitulo!,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    height: 1.1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
              const SizedBox(height: 6),
              Text(
                personagem.descricao,
                style: const TextStyle(
                  color: Color.fromARGB(255, 202, 202, 202),
                  fontSize: 12,
                  height: 1.3,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}