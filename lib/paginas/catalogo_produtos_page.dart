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
const List<Produto> produtos = [ // Lista de produtos com as respetivas imagens
  Produto(
    nome: 'Leite Ilatac',
    descricao: '',
    preco: '',
    caminhoImagem: 'assets/imagens/leite.png',
  ),
  Produto(
    nome: 'Maça não encantada',
    descricao: '',
    preco: '',
    caminhoImagem: 'assets/imagens/maca.png',
  ),
  Produto(
    nome: 'Tomate Morango',
    descricao: '',
    preco: '',
    caminhoImagem: 'assets/imagens/tomate.png',
  ),

   Produto(
    nome: 'Manga Palmeiras',
    descricao: '',
    preco: '',
    caminhoImagem: 'assets/imagens/manga.png',
  ),

  Produto(
    nome: 'Pantonete',
    descricao: '',
    preco: '',
    caminhoImagem: 'assets/imagens/panetone.png',
  ),

  Produto(
    nome: 'DinDin Caru',
    descricao: '',
    preco: '',
    caminhoImagem: 'assets/imagens/ovodepascoanormal.png',
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

class _CartaoProduto extends StatelessWidget { // Widget para exibir as informações de cada produto no catálogo
  final Produto produto;

  const _CartaoProduto({required this.produto});

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
          // Imagem do Produto
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              produto.caminhoImagem,
              width: 90,
              height: 90,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                // Caso a imagem não seja encontrada, mostra um ícone de placeholder
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
                Text(
                  produto.preco,
                  style: const TextStyle(
                    color: Color(0xFFB800E5),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
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
            ),
          ),
        ],
      ),
    );
  }
}