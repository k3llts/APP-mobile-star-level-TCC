import 'package:flutter/material.dart';
import '../componentes/barra_navegacao.dart';

class ItemColetavel { // Classe para representar um item coletável
  final String nome;
  final String descricao;
  final String qualidade;
  final String caminhoImagem;

  const ItemColetavel({
    required this.nome,
    required this.descricao,
    required this.qualidade,
    required this.caminhoImagem,
  });
}

final List<ItemColetavel> itensColetaveis = [ // Lista de itens coletáveis com as respetivas imagens
  ItemColetavel(
    nome: 'Caixa de Bombom de Coração',
    descricao: 'uma caixa de bombom em formato de coração, para o dia dos namorados.',
    qualidade: 'Médio',
    caminhoImagem: 'assets/imagens/caixabombom.jpeg',
  ),
  ItemColetavel(
    nome: 'CAIXA DE BOMBOM SUPER NORMAL',
    descricao: 'Uma caixa de bombom de marca genetica...',
    qualidade: 'Comum',
    caminhoImagem: 'assets/imagens/caixahorrorosabombom.jpeg',
  ),

   ItemColetavel(
    nome: 'Urso de Pelucia',
    descricao: 'ursinho de pelucinha como presente para o dia dos namorados.',
    qualidade: 'Bom',
    caminhoImagem: 'assets/imagens/urso.jpeg',
  ),

  ItemColetavel(
    nome: 'Bengala Doce',
    descricao: 'bengala doce de natal.',
    qualidade: 'Comum',
    caminhoImagem: 'assets/imagens/bengaladoce.png',
  ),

  ItemColetavel(
    nome: 'Globo de Neve',
    descricao: 'Um globo de natal, feito pra presentear alguém especial.',
    qualidade: 'Bom',
    caminhoImagem: 'assets/imagens/globodeneve.png',
  ),

   ItemColetavel(
    nome: 'Panetone',
    descricao: 'Penetone, daqueles de frutinhas.',
    qualidade: 'Médio',
    caminhoImagem: 'assets/imagens/panetone.png',
  ),

  ItemColetavel(
    nome: 'The cooler ovo de pascoa',
    descricao: 'Ovo de pascoa de supermercado com orelhas de coelho.',
    qualidade: 'Bom',
    caminhoImagem: 'assets/imagens/ovodepascoacomorelhas.png',
  ),

   ItemColetavel(
    nome: 'Coelho Choculatudinho',
    descricao: 'Um cuelhão de chocolate pra pascoa.',
    qualidade: 'Médio',
    caminhoImagem: 'assets/imagens/coelhodechocolate.jpeg',
  ),

  ItemColetavel(
    nome: 'Ovo de Pascoa Normal',
    descricao: 'Uma opção de presente de pascoa caso você esteja mais apertado esse mês.',
    qualidade: 'Comum',
    caminhoImagem: 'assets/imagens/ovodepascoanormal.png',
  ),

];

class ItensColetaveisPage extends StatelessWidget { 
  const ItensColetaveisPage({super.key});

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

            const Text(
              'ITENS COLETÁVEIS',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: itensColetaveis.map((item) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: _CartaoItemColetavel(item: item),
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

class _CartaoItemColetavel extends StatelessWidget { // Widget para exibir as informações de cada item coletável na página
  final ItemColetavel item;

  const _CartaoItemColetavel({required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xFFB800E5), width: 1.5),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Imagem do Item Coletável
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              item.caminhoImagem,
              width: 90,
              height: 90,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  width: 90,
                  height: 90,
                  color: const Color(0xFF121212),
                  child: const Icon(Icons.image_not_supported, color: Colors.white54),
                );
              },
            ),
          ),
          const SizedBox(width: 16),

          // Informações do Item
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.nome,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                // Exibe o nível de qualidade estilizado
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  decoration: BoxDecoration(
                    color: const Color(0xFFB800E5).withOpacity(0.2),
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: const Color(0xFFB800E5)),
                  ),
                  child: Text(
                    'Qualidade: ${item.qualidade}',
                    style: const TextStyle(
                      color: Color(0xFFD455F5),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  item.descricao,
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