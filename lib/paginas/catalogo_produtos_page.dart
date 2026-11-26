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
    descricao: 'Um leite bem fresquinho, direto da teta da vaca da fazenda para sua mesa',
    preco: 'R\$ 5,49',
    caminhoImagem: 'assets/imagens/produtos_do_mercado/leite.png',
  ),
  Produto(
    nome: 'Maça não encantada',
    descricao: 'Uma maçã não encantada que não te faz dormir, e que não te faz ser beijada quando esta dormindo, mas muito saborosa',
    preco: 'R\$ 2,50',
    caminhoImagem: 'assets/imagens/produtos_do_mercado/maca.png',
  ),
  Produto(
    nome: 'Tomate Morango',
    descricao: 'tomate fresco, bem fresquinho, com sabor morango.',
    preco: 'R\$ 9,90',
    caminhoImagem: 'assets/imagens/produtos_do_mercado/tomate.png',
  ),
  Produto(
    nome: 'Manga Palmeiras',
    descricao: 'os porcos verdes adoram',
    preco: 'R\$ 3,50',
    caminhoImagem: 'assets/imagens/produtos_do_mercado/manga.png',
  ),
  Produto(
    nome: 'DinDin Caru Vialactea',
    descricao: 'Um ovo... de chocolate.',
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
    descricao: 'batata - Miguel',
    preco: 'R\$ 6,99',
    caminhoImagem: 'assets/imagens/produtos_do_mercado/batata.png',
  ),
  Produto(
    nome: 'beringela',
    descricao: 'Roxinha por fora, misteriosa por dentro e ótima para confundir quem acha que sabe cozinhar.',
    preco: 'R\$ 4,50',
    caminhoImagem: 'assets/imagens/produtos_do_mercado/beringela.png',
  ),
  Produto(
    nome: 'Carne cartoon',
    descricao: 'Com dois ossos para ninguém duvidar que veio direto de um desenho animado clássico.',
    preco: 'R\$ 24,90',
    caminhoImagem: 'assets/imagens/produtos_do_mercado/carne com dois ossos.png',
  ),
  Produto(
    nome: 'cenoura',
    descricao: 'Crocante o suficiente para fazer barulho em outro cômodo, mas não garante visão noturna.',
    preco: 'R\$ 1,20',
    caminhoImagem: 'assets/imagens/produtos_do_mercado/cenoura.png',
  ),
  Produto(
    nome: 'champanhe Kellts',
    descricao: 'uma categoria de champanhe com um sabor meio duvidoso, feito pela empreça Kellts.art no X (antigo twitter)',
    preco: 'R\$ 666,67',
    caminhoImagem: 'assets/imagens/produtos_do_mercado/champanhe kellts.png',
  ),
  Produto(
    nome: 'coxa de carne cartoon',
    descricao: 'O clássico pedaço gigante de desenho animado pronto para resolver qualquer fome repentina no corredor.',
    preco: 'R\$ 12,90',
    caminhoImagem: 'assets/imagens/produtos_do_mercado/coxa de carne.png',
  ),
  Produto(
    nome: 'creme de leite',
    descricao: 'Aquele toque cremoso indispensável para salvar a receita quando o plano original dá errado.',
    preco: 'R\$ 4,49',
    caminhoImagem: 'assets/imagens/produtos_do_mercado/creme de leite.png',
  ),
  Produto(
    nome: 'danone 200 Ml',
    descricao: 'bem docinho, com sabor de mirtilo',
    preco: 'R\$ 2,99',
    caminhoImagem: 'assets/imagens/produtos_do_mercado/danone em unidade.png',
  ),
  Produto(
    nome: 'danone de 2L',
    descricao: '10 vezes mais "bem docinho" e 10 vezes com mais sabor de mirtilo',
    preco: 'R\$ 9,90',
    caminhoImagem: 'assets/imagens/produtos_do_mercado/danone em litro.png',
  ),
  Produto(
    nome: 'laranja',
    descricao: 'quem veio primeiro a cor laranja ou a fruta laranja? Naõ sei responder, mas o preço tá bem docinho',
    preco: 'R\$ 1,50',
    caminhoImagem: 'assets/imagens/produtos_do_mercado/laranja.png',
  ),
  Produto(
    nome: 'refrigerante em lata',
    descricao: 'Gás, açúcar e aquele estalo satisfatório ao abrir — perfeito para acompanhar qualquer aventura.',
    preco: 'R\$ 3,49',
    caminhoImagem: 'assets/imagens/produtos_do_mercado/lata de refri.png',
  ),
  Produto(
    nome: 'limão siciliano',
    descricao: 'Todo mundo sabe que o limão siciliano mete o pau no limão taiti (o limão verde),se você discorda, eu não ligo. Eu estou certo, e você está errado (a) como sempre.',
    preco: 'R\$ 3,50',
    caminhoImagem: 'assets/imagens/produtos_do_mercado/limao.png',
  ),
  Produto(
    nome: 'melancia',
    descricao: 'A melhor fruta conhecida pelo homem e no melhor preço possivel',
    preco: 'R\$ 12,90',
    caminhoImagem: 'assets/imagens/produtos_do_mercado/melancia.png',
  ),
  Produto(
    nome: 'morango tomate',
    descricao: 'morango fresco, bem fresquinho, com sabor de tomate.',
    preco: 'R\$ 9,90',
    caminhoImagem: 'assets/imagens/produtos_do_mercado/morango.png',
  ),
  Produto(
    nome: 'pimentão',
    descricao: 'Dá cor ao prato e um ar de chef profissional, mesmo que você só vá esquentar tudo depois.',
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
                      fontSize: 17,
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