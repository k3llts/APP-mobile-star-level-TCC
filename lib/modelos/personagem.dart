class Personagem { // Classe que representa um personagem com nome, descrição e subtítulo (opcional)
  final String nome;
  final String descricao;
  final String? subtitulo;

  const Personagem({
    required this.nome,
    required this.descricao,
    this.subtitulo,
  });
}

const List<Personagem> personagens = [ // Lista de personagens com suas descrições e subtítulos (se houver)
  Personagem(
    nome: 'M.Genérico',
    descricao:
        'Um rapaz perculiar, de certa forma... ele não possui nem um pouco de personalidade própria. A personalidade dele é inteiramente baseada em desenhos animados japoneses, que tenham um protagonista triste.',
  ),
  Personagem(
    nome: 'M.Cliche',
    descricao:
        'Irmão do M.Genérico, ele fala das situações da vida como se fossem cliches baratos de filmes e seres. Ele pode ser bem chato em uma conversa, pois diz que tudo é um cliche. Por sinal, ele não gosta muito de seu irmão.',
  ),
  Personagem(
    nome: 'M.Obvio',
    descricao:
        'Um cara de poucas palavras, mas, quando alguma coisa acontece, ele diz o contexto o que aconteceu, por mais que a outra pessoa tenha visto o que aconteceu. Ele é um rapaz de boas intenções, no entanto, é bobinho demais.',
  ),
  Personagem(
    nome: 'Zé Birulilo',
    descricao:
        'Um fulano bem estranho, ele gosta de ver as pessoas de longe, no seu cantinho, que é em qualquer lugar com o seu casaco grande demais. Ele pode dar um pouco de medo com os seus olhos esbugalhados, mas ele nunca fez nada de errado com alguém, até onde se sabe.',
  ),
  Personagem(
    nome: 'A Veja',
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