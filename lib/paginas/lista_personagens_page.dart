import 'package:flutter/material.dart';
import '../modelos/personagem.dart';
import '../componentes/barra_navegacao.dart';

class ListaPersonagensPage extends StatelessWidget {
  const ListaPersonagensPage({super.key});

  @override
  Widget build(BuildContext context) {
    final largura = MediaQuery.sizeOf(context).width;

    return Scaffold(
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
        Container(
          width: 83,
          height: 95,
          color: const Color(0xFF1B00B8),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                personagem.nome,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  height: 1.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
              if (personagem.subtitulo != null)
                Text(
                  personagem.subtitulo!,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    height: 1.1,
                  ),
                ),
              Text(
                personagem.descricao,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                  height: 1.12,
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