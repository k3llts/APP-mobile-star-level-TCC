import 'package:flutter/material.dart';

void main() {
  runApp(const PersonagensApp());
}

class PersonagensApp extends StatelessWidget {
  const PersonagensApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Star LEVEL',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.black,
        fontFamily: 'Arial',
      ),
      home: const ListaPersonagensPage(),
    );
  }
}

// ==================== DADOS DOS PERSONAGENS ====================
class Personagem {
  final String nome;
  final String descricao;
  final String? subtitulo;

  const Personagem({
    required this.nome,
    required this.descricao,
    this.subtitulo,
  });
}

const List<Personagem> personagens = [
  Personagem(
    nome: 'Mr.Genérico',
    descricao:
        'Um rapaz perculiar, de certa forma... ele não possui nem um pouco de personalidade própria. A personalidade dele é inteiramente baseada em desenhos animados japoneses, que tenham um protagonista triste.',
  ),
  Personagem(
    nome: 'Mr.Cliche',
    descricao:
        'Irmão do Mr.Genérico, ele fala das situações da vida como se fossem cliches baratos de filmes e seres. Ele pode ser bem chato em uma conversa, pois diz que tudo é um cliche. Por sinal, ele não gosta muito de seu irmão.',
  ),
  Personagem(
    nome: 'Mr.Obvio',
    descricao:
        'Um cara de poucas palavras, mas, quando alguma coisa acontece, ele diz o contexto o que aconteceu, por mais que a outra pessoa tenha visto o que aconteceu. Ele é um rapaz de boas intenções, no entanto, é bobinho demais.',
  ),
  Personagem(
    nome: 'Zé Birulilo',
    descricao:
        'Um fulano bem estranho, ele gosta de ver as pessoas de longe, no seu cantinho, que é em qualquer lugar com o seu casaco grande demais. Ele pode dar um pouco de medo com os seus olhos esbugalhados, mas ele nunca fez nada de errado com alguém, até onde se sabe.',
  ),
  Personagem(
    nome: 'A Veia',
    descricao:
        'Uma bela senhora fofoqueira, ela gosta de ir ao mercados em todos os domingos, por que é quando tem promoção. Ela gosta de fofocar com as amigas... e com os funcionários também. Dizem que ela sabe de muito mais coisas que acontecem no mercado do que o próprio dono do mercado.',
  ),
  Personagem(
    nome: 'Nerd Gamer',
    descricao:
        'Um pequeno jovem que adora vídeo games demais. Ele usa uma blusa cheia de referencias de progamação, animes e games, segundo ele, é pra reforsar esse conceito de nerd. Quando vê a sua vocaloid favorita, ele treme, sua bastante e tenta chegar o mais perto dela possivel. ',
  ),
  Personagem(
    nome: 'Hatsune Miku',
    descricao:
        'A vocaloid mais famosa do mundo, e ela está no nosso mercado. Ela é uma das clientes VIP’S do supermercado. Nesses últimos tempos, ela tem reclamado de um menino estranho que tenta chegar perto dela, em qualquer caso, ela sempre estará protegida com o seu ALHO-PORÓ.',
  ),
  Personagem(
    nome: 'Zoiudo',
    descricao:
        'Um cara que gosta de um desafio diferenciado, dizem que por conta de um desses desafios, ele já colocou suco de limão nos olhos pra ver se fica verde. As vezes ele invade o nosso mercado à noite pra fazer um desafio de uma noite trancado no nosso mercado... já chamamos a policia.',
  ),
  Personagem(
    nome: 'Kinomeko Neilo',
    subtitulo: '木野目湖内子',
    descricao:
        'Uma garota que tem o sonho de se tornar uma vocaloid famosa. Ela se inspira na Hatsune Miku, mas ainda te falta muito talento para ter algum resultado significativo. Ela gosta de ir ao mercado as vezes.',
  ),
];

// ==================== BARRA DE NAVEGAÇÃO COM MENU SUSPENSO ====================
class BarraNavegacao extends StatelessWidget {
  const BarraNavegacao({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 63,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      color: const Color(0xFFB800E5),
      child: Row(
        children: [
          const Spacer(),
          PopupMenuButton<String>(
            offset: const Offset(0, 50),
            color: Colors.black,
            child: const Row(
              children: [
                _LinkNavegacao(texto: 'Blog'),
                Icon(Icons.arrow_drop_down, color: Colors.black, size: 18),
              ],
            ),
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'personagens',
                child: Text('Lista de Personagens', style: TextStyle(color: Colors.white)),
              ),
              const PopupMenuItem<String>(
                value: 'produtos',
                child: Text('Catálogo de Produtos', style: TextStyle(color: Colors.white)),
              ),
              const PopupMenuItem<String>(
                value: 'itens',
                child: Text('Itens Coletáveis', style: TextStyle(color: Colors.white)),
              ),
              const PopupMenuItem<String>(
                value: 'controles',
                child: Text('Lista de Controles', style: TextStyle(color: Colors.white)),
              ),
              const PopupMenuItem<String>(
                value: 'curiosidades',
                child: Text('Lista de Curiosidades', style: TextStyle(color: Colors.white)),
              ),
            ],
            onSelected: (String value) {
              Widget proximaTela;
              if (value == 'produtos') {
                proximaTela = const CatalogoProdutosPage();
              } else if (value == 'itens') {
                proximaTela = const ItensColetaveisPage();
              } else if (value == 'controles') {
                proximaTela = const ControlesPage();
              } else if (value == 'curiosidades') {
                proximaTela = const CuriosidadesPage();
              } else {
                proximaTela = const ListaPersonagensPage();
              }

              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => proximaTela),
              );
            },
          ),
          const SizedBox(width: 15),
          const _LinkNavegacao(texto: 'Jogos'),
          const SizedBox(width: 15),
          const _LinkNavegacao(texto: 'Produtos'),
          const SizedBox(width: 15),
          const _LinkNavegacao(texto: 'Sobre'),
        ],
      ),
    );
  }
}

class _LinkNavegacao extends StatelessWidget {
  final String texto;

  const _LinkNavegacao({required this.texto});

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

// ==================== TELA 1: LISTA DE PERSONAGENS ====================
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
                    fontSize: 10,
                    height: 1.1,
                  ),
                ),
              Text(
                personagem.descricao,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
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

// ==================== TELA 2: CATÁLOGO DE PRODUTOS ====================
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

// ==================== TELA 3: ITENS COLETÁVEIS ====================
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
                    descricao: 'Um ovo de pacoa com orelhas e nariz de coelho.\nUm otimo presente pra quem gosta de coelhos e chocolate',
                  ),
                  ItemColetavelWidget(
                    titulo: 'Item chave do dia dos namorados',
                    descricao: 'Um ursinho de pelucia adoravel, perfeito para uma pessoa mimada',
                  ),
                  ItemColetavelWidget(
                    titulo: 'Item chave do feriado de Natal',
                    descricao: 'Uma benga doce, um classico quando o assunto é natal',
                  ),
                   ItemColetavelWidget(
                    titulo: 'Item chave do dia de pascoa',
                    descricao: 'esse aqui é para quem realmente gosta de coelhos (não assados) e chocolate. Uma combinação perfeita',
                  ),
                  ItemColetavelWidget(
                    titulo: 'Item chave do feriado de Natal',
                    descricao: 'Um presente perfeito pra quem prioriza mais a comida do que qualquer outra coisa sem sabor',
                  ),
                   ItemColetavelWidget(
                    titulo: 'Item chave do dia de pascoa',
                    descricao: 'Uma cesta de ovos NORMAIS, mas, com uma carinha que só a pascoa pode nos proporcionar',
                  ),
                   ItemColetavelWidget(
                    titulo: 'Item chave do dia dos namorados',
                    descricao: 'Uma caixa em formato de coração, cheia de bombons cremosinhos que nem a (o) sua (seu) crush.',
                  ),
                   ItemColetavelWidget(
                    titulo: 'Item chave de ano novo',
                    descricao: 'Um fogo de artificio, feito para iluminar os céus à noite.',
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
                Text(titulo, style: const TextStyle(color: Color.fromARGB(255, 252, 253, 253), fontSize: 16, fontWeight: FontWeight.bold)),
                const SizedBox(height: 5),
                Text(descricao, style: const TextStyle(color: Color.fromARGB(255, 184, 183, 183), fontSize: 13)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ==================== TELA 4: CONTROLES ====================
class ControlesPage extends StatelessWidget {
  const ControlesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BarraNavegacao(),
            const SizedBox(height: 20),
            const Center(
              child: Text(
                'Lista de Controles',
                style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Movimentação', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Text('A movimentação do jogador utiliza as teclas W, A, S e D.', style: TextStyle(color: Colors.white70)),
                  SizedBox(height: 10),
                  Text(
                    '• W: movimenta para frente;\n• A: movimenta para a esquerda;\n• S: movimenta para trás;\n• D: movimenta para a direita.',
                    style: TextStyle(color: Colors.white70),
                  ),



                  SizedBox(height: 20),
                  Text('Pulo', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Text('A tecla Espaço executa o pulo quando o jogador está sobre o chão.\n\nA possibilidade de pular é controlada pela verificação de contato com o solo.', style: TextStyle(color: Colors.white70)
                  ),


                  SizedBox(height: 20),
                  Text('Braços', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Text('Os botões esquerdo e direito do mouse executa a mecanica de levantamento de braços do personagem.\n\nAssim, fazendo com que o jogador consiga alcansar objetos que estão no alto e também, para que consiga escalar em obstaculos presentes no jogo.', style: TextStyle(color: Colors.white70)
                  ),


                  SizedBox(height: 20),
                 Text('Menu', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Text('O menu se abrira durante o funcionamento do jogo pressionando a tecla ESC', style: TextStyle(color: Colors.white70)),
                  SizedBox(height: 10),
                  Text(
                    '• Botão de Configurações;\n• Botão de Retornar ao Jogo;\n• Botão de Retorno ao Título;',
                    style: TextStyle(color: Colors.white70),
                  ),


                   SizedBox(height: 20),
                  Text('Interação com Objetos', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Text('O jogador tera a oportunidade de interagir com todo e qualquer objeto que tenha essa mecânica de interação pressionando a tecla F.', style: TextStyle(color: Colors.white70)
                  ),


                SizedBox(height: 20),
                  Text('Lista de Compras', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Text('A lista de compras é um item importante, nele é possível ver quais itens que serão necessários para concluir uma fase do jogo.\n\nA lista de compras aparece ao pressionar a tecla R do teclado.', style: TextStyle(color: Colors.white70)
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

// ==================== TELA 5: CURIOSIDADES ====================
class CuriosidadesPage extends StatelessWidget {
  const CuriosidadesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> curiosidades = [
      'Timmy e todos os personagens de Timmy Build Your Dates, são baseado nos modelos do jogo Human Fall Flat e, sua física foi um dos principais componentes de desenvolvimento.',
      'Kinomeko Neilo, é uma garota brasileira que finge ser japonesa, pra se destacar mais como cantora no Japão, segundo ela mesma, isso ajuda bastante.',
      'Kinomeko Neilo nunca foi reconhecida em qualquer lugar do mundo, exceto por amigos e parentes.',
      'Mr.Genérico, Mr.Cliche e Mr.Obvio são da mesma família, e quando os três estão juntos, eles formam o grupo trilogy of bad (Trilogia de M#%@&).',
      'O Nerd Gamer tem uma irmã chamada Benenilda, que também é conhecida como Kinomeko Neilo. Ele não gosta de falar muito dela para outras pessoas , pois, segundo ele: “a minha irmã é cringe e poser demais tentando parecer com a minha Hatsune Miku”.',
      'No jogo Timmy Build Your Dates, existe um fliperama que contem um mini game secreto que foi desenvolvido por um dos progamadores do jogo.',
      'O design de Mr.Savage é inspirado no cantor japonês rei das músicas romanticas japonesas masayuki Suzuki.',
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