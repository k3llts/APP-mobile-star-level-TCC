import 'package:flutter/material.dart';
import '../componentes/barra_navegacao.dart';

class Produto { // Classe para representar um produto no catálogo
  final String nome;
  final String descricao;
  final String preco;
  final String caminhoImagem; // Caminho da foto do produto

  const Produto({ // Construtor da classe Produto
    required this.nome,
    required this.descricao,
    required this.preco,
    required this.caminhoImagem,
  });
}

// Lista de produtos com as respetivas imagens
const List<Produto> produtos = [
  Produto(
    nome: 'Leite Ilatac',
    descricao: '',
    preco: 'R\$ 5,49',
    caminhoImagem: 'assets/imagens/produtos_do_mercado/leite.png',
  ),
  Produto(
    nome: 'Maça não encantada',
    descricao: '',
    preco: 'R\$ 2,50',
    caminhoImagem: 'assets/imagens/produtos_do_mercado/maca.png',
  ),
  Produto(
    nome: 'Tomate Morango',
    descricao: '',
    preco: 'R\$ 9,90',
    caminhoImagem: 'assets/imagens/produtos_do_mercado/tomate.png',
  ),
  Produto(
    nome: 'Manga Palmeiras',
    descricao: '',
    preco: 'R\$ 3,50',
    caminhoImagem: 'assets/imagens/produtos_do_mercado/manga.png',
  ),
  
  Produto(
    nome: 'DinDin Caru',
    descricao: '',
    preco: 'R\$ 39,90',
    caminhoImagem: 'assets/imagens/produtos_do_mercado/ovodepascoanormal.png',
  ),
  Produto(
    nome: 'Cacho de Bananas',
    descricao: 'Bananas frescas e saborosas',
    preco: 'R\$ 18,00',
    caminhoImagem: 'assets/imagens/produtos_do_mercado/bananas.png',
  ),
  Produto(
    nome: 'abobrinha',
    descricao: 'falando em abobrinha, temos a abobrinha mais fresca da região',
    preco: 'R\$ 3,50',
    caminhoImagem: 'assets/imagens/produtos_do_mercado/abobrinha.png',
  ),
  Produto(
    nome: 'batata',
    descricao: '',
    preco: 'R\$ 6,99',
    caminhoImagem: 'assets/imagens/produtos_do_mercado/batata.png',
  ),
  Produto(
    nome: 'beringela',
    descricao: '',
    preco: 'R\$ 4,50',
    caminhoImagem: 'assets/imagens/produtos_do_mercado/beringela.png',
  ),
  Produto(
    nome: 'Carne cartoon',
    descricao: '',
    preco: 'R\$ 24,90',
    caminhoImagem: 'assets/imagens/produtos_do_mercado/carne com dois ossos.png',
  ),
  Produto(
    nome: 'cenoura',
    descricao: '',
    preco: 'R\$ 1,20',
    caminhoImagem: 'assets/imagens/produtos_do_mercado/cenoura.png',
  ),
  Produto(
    nome: 'champanhe Kellts',
    descricao: '',
    preco: 'R\$ 666,67',
    caminhoImagem: 'assets/imagens/produtos_do_mercado/champanhe kellts.png',
  ),
  Produto(
    nome: 'coxa de carne cartoon',
    descricao: '',
    preco: 'R\$ 12,90',
    caminhoImagem: 'assets/imagens/produtos_do_mercado/coxa de carne.png',
  ),
  Produto(
    nome: 'creme de leite',
    descricao: '',
    preco: 'R\$ 4,49',
    caminhoImagem: 'assets/imagens/produtos_do_mercado/creme de leite.png',
  ),
  Produto(
    nome: 'danone de 2L',
    descricao: '',
    preco: 'R\$ 9,90',
    caminhoImagem: 'assets/imagens/produtos_do_mercado/danone em litro.png',
  ),
  Produto(
    nome: 'danone 200 Ml',
    descricao: '',
    preco: 'R\$ 2,99',
    caminhoImagem: 'assets/imagens/produtos_do_mercado/danone em unidade.png',
  ),
  Produto(
    nome: 'laranja',
    descricao: '',
    preco: 'R\$ 1,50',
    caminhoImagem: 'assets/imagens/produtos_do_mercado/laranja.png',
  ),
  Produto(
    nome: 'refrigerante em lata',
    descricao: '',
    preco: 'R\$ 3,49',
    caminhoImagem: 'assets/imagens/produtos_do_mercado/lata de refri.png',
  ),
  Produto(
    nome: 'limão siciliano',
    descricao: '',
    preco: 'R\$ 3,50',
    caminhoImagem: 'assets/imagens/produtos_do_mercado/limao.png',
  ),
  Produto(
    nome: 'melancia',
    descricao: '',
    preco: 'R\$ 12,90',
    caminhoImagem: 'assets/imagens/produtos_do_mercado/melancia.png',
  ),
  Produto(
    nome: 'morango',
    descricao: '',
    preco: '',
    caminhoImagem: 'assets/imagens/produtos_do_mercado/morango.png',
  ),
  Produto(
    nome: 'pimentão',
    descricao: '',
    preco: 'R\$ 4,50',
    caminhoImagem: 'assets/imagens/produtos_do_mercado/pimentao.png',
  ),
];

class CatalogoProdutosPage extends StatelessWidget { // Página do catálogo de produtos
  const CatalogoProdutosPage({super.key});

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
              'CATÁLOGO DE PRODUTOS',
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
                children: produtos.map((produto) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: _CartaoProduto(produto: produto),
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

class _CartaoProduto extends StatelessWidget {
  final Produto produto;

  const _CartaoProduto({required this.produto});

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
                  // Permite dar zoom e mover a imagem se quiser
                  panEnabled: true,
                  boundaryMargin: const EdgeInsets.all(20),
                  minScale: 0.5,
                  maxScale: 4,
                  child: Image.asset(
                    produto.caminhoImagem,
                    fit: BoxFit.contain,
                    filterQuality: FilterQuality.none, // Mantém o estilo pixel art nítido
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
          // Imagem do Produto com clique para ampliar
          GestureDetector(
            onTap: () => _mostrarImagemAmpliada(context),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                width: 90,
                height: 90,
                color: const Color(0xFF121212),
                child: Image.asset(
                  produto.caminhoImagem,
                  fit: BoxFit.cover, 
                  filterQuality: FilterQuality.none, // Mantém nitidez para pixel art
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

          // Informações do Produto
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  produto.nome,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                if (produto.preco.isNotEmpty)
                  Text(
                    produto.preco,
                    style: const TextStyle(
                      color: Color(0xFFB800E5),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                if (produto.descricao.isNotEmpty) ...[
                  const SizedBox(height: 8),
                  Text(
                    produto.descricao,
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