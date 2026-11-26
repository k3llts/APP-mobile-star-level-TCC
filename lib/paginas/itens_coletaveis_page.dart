import 'package:flutter/material.dart';
import '../componentes/barra_navegacao.dart';

class ItemColetavel { // Classe para representar um item coletável
  final String nome;
  final String descricao;
  final String qualidade;
  final String preco;
  final String caminhoImagem;

  const ItemColetavel({
    required this.nome,
    required this.descricao,
    required this.qualidade,
    required this.preco,
    required this.caminhoImagem,
  });
}

final List<ItemColetavel> itensColetaveis = [ // Lista de itens coletáveis com as respetivas imagens
  ItemColetavel(
    nome: 'Caixa de Bombom de Coração',
    descricao: 'uma caixa de bombom em formato de coração, mostra o quanto você ama o(a) seu(sua) namorado(a).',
    qualidade: 'Médio',
    preco: 'R\$ 99,99',
    caminhoImagem: 'assets/imagens/coletaveis/caixabombom.jpeg',
  ),
  ItemColetavel(
    nome: 'CAIXA DE BOMBOM SUPER NORMAL',
    descricao: 'Uma caixa... de bombom de marca... super genérica... pro dia dos Namorados.',
    qualidade: 'Comum',
    preco: 'R\$ 19,90',
    caminhoImagem: 'assets/imagens/coletaveis/caixahorrorosabombom.jpeg',
  ),
  ItemColetavel(
    nome: 'Urso de Pelucia',
    descricao: 'ursinho de pelucinha super fofinho, otimo como presente para o dia dos namorados.',
    qualidade: 'Bom',
    preco: 'R\$ 49,90',
    caminhoImagem: 'assets/imagens/coletaveis/urso.jpeg',
  ),
  ItemColetavel(
    nome: 'Bengala Doce',
    descricao: 'uma bengala feita de açúcar caramelizado, nada demais pro dia de Natal.',
    qualidade: 'Comum',
    preco: 'R\$ 4,50',
    caminhoImagem: 'assets/imagens/coletaveis/bengaladoce.png',
  ),
  ItemColetavel(
    nome: 'Globo de Neve',
    descricao: 'Um globo de natal, perfito para presentear alguém especial no Natal.',
    qualidade: 'Bom',
    preco: 'R\$ 34,90',
    caminhoImagem: 'assets/imagens/coletaveis/globodeneve.png',
  ),
  ItemColetavel(
    nome: 'Panetone',
    descricao: 'Penetone, daqueles de frutinhas. É pro natal.',
    qualidade: 'Médio',
    preco: 'R\$ 22,90',
    caminhoImagem: 'assets/imagens/coletaveis/panetone.png',
  ),
  ItemColetavel(
    nome: 'The cooler ovo de pascoa',
    descricao: 'Ovo de pascoa de supermercado com orelhas de coelho. Um exelente presente de pascoa para quem gosta de chocolate.',
    qualidade: 'Bom',
    preco: 'R\$ 49,90',
    caminhoImagem: 'assets/imagens/coletaveis/ovodepascoacomorelhas.png',
  ),
  ItemColetavel(
    nome: 'Coelho Chocolatudinho',
    descricao: 'Um coelhão de dourado feito de chocolate para a pascoa.',
    qualidade: 'Médio',
    preco: 'R\$ 19,90',
    caminhoImagem: 'assets/imagens/coletaveis/coelhodechocolate.jpeg',
  ),
  ItemColetavel(
    nome: 'Cesta de Ovos Coloridinhos',
    descricao: 'Uma opção de presente de pascoa caso você esteja mais apertado esse mês.',
    qualidade: 'Comum',
    preco: 'R\$ 59,90',
    caminhoImagem: 'assets/imagens/coletaveis/cesta de ovos.png',
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

class _CartaoItemColetavel extends StatelessWidget {
  final ItemColetavel item;

  const _CartaoItemColetavel({required this.item});

  // Função para abrir a imagem inteira num pop-up ao clicar
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
                    item.caminhoImagem,
                    fit: BoxFit.cover,
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
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xFFB800E5), width: 1.5),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Imagem do Item Coletável com clique para ampliar
          GestureDetector(
            onTap: () => _mostrarImagemAmpliada(context),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                width: 90,
                height: 90,
                color: const Color(0xFF121212),
                child: Image.asset(
                  item.caminhoImagem,
                  fit: BoxFit.cover, // Garante que a imagem inteira aparece sem cortes
                  filterQuality: FilterQuality.none, // Mantém nítido para pixel art
                  errorBuilder: (context, error, stackTrace) {
                    return const Center(
                      child: Icon(Icons.image_not_supported, color: Colors.white54),
                    );
                  },
                ),
              ),
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
                const SizedBox(height: 6),

                // Linha com a qualidade à esquerda e o preço à direita
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
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
                    if (item.preco.isNotEmpty)
                      Text(
                        item.preco,
                        style: const TextStyle(
                          color: Color(0xFFFFE600), // Destaque em amarelo retro
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                  ],
                ),

                if (item.descricao.isNotEmpty) ...[
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}