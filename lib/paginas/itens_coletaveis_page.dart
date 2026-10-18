import 'package:flutter/material.dart';
import '../componentes/barra_navegacao.dart';

class ItensColetaveisPage extends StatelessWidget {
  const ItensColetaveisPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const BarraNavegacao(),
            const SizedBox(height: 20),
            const Text(
              'Lista de Itens Coletáveis',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: const [
                  ItemColetavelWidget(
                    titulo: 'Item chave do dia de pascoa',
                    descricao: 'Um ovo de pascoa com orelhas e nariz de coelho. Um otimo presente pra quem gosta de coelhos e chocolate',
                  ),
                  ItemColetavelWidget(
                    titulo: 'Item chave do dia dos namorados',
                    descricao: 'Um ursinho de pelucia adoravel, perfeito para uma pessoa mimada',
                  ),
                  ItemColetavelWidget(
                    titulo: 'Item chave do feriado de Natal',
                    descricao: 'Uma benga doce, um classico quando o assunto é natal',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ItemColetavelWidget extends StatelessWidget {
  final String titulo;
  final String descricao;

  const ItemColetavelWidget({super.key, required this.titulo, required this.descricao});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(width: 70, height: 90, color: Colors.grey[700]),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(titulo, style: const TextStyle(color: Colors.greenAccent, fontSize: 16, fontWeight: FontWeight.bold)),
                const SizedBox(height: 5),
                Text(descricao, style: const TextStyle(color: Colors.white, fontSize: 13)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}