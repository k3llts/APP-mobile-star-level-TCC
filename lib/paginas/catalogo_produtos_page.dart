import 'package:flutter/material.dart';
import '../componentes/barra_navegacao.dart';

class CatalogoProdutosPage extends StatelessWidget {
  const CatalogoProdutosPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> produtos = [
      'Leite Ilatac', 'Banana Bronze', 'Maçã não encantada', 'Tomate Morango',
      'Pão Pulmão', 'Açúcar Desunião', 'Manga Palmeiras', 'Sardinha Samambaia',
      'Peixe Cepacol', 'Pantonete', 'DinDin Caru', 'Refri. Asmatico',
      'Frango Ceará', 'Achocholatado Barrozo', 'Carne Frivaca', 'Semdóm',
      'Coxa de urubu', 'spray de limpeza ouça', 'Desengordurande Ouça', 'Desodorante Pai-Ausente'
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const BarraNavegacao(),
            const SizedBox(height: 20),
            const Text(
              'Catálogo de produtos\nE-commerce Sakkola',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: produtos.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  child: Row(
                    children: [
                      Container(width: 80, height: 80, color: Colors.grey[800]),
                      const SizedBox(width: 20),
                      Text(produtos[index], style: const TextStyle(color: Colors.white, fontSize: 16)),
                    ],
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