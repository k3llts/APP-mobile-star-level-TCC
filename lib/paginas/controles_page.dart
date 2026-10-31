import 'package:flutter/material.dart';
import '../componentes/barra_navegacao.dart';

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
             Padding(
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

              ClipRRect(
               borderRadius: BorderRadius.circular(8),
               child: Image.asset(
              'assets/imagens/ensinandoBotoes.gif',
               width: 150,
               height: 150,
               fit: BoxFit.contain, //isso faz com que a imagem se ajuste dentro do espaço disponível, mantendo sua proporção
                 filterQuality: FilterQuality.none, //Mantém o pixel art nítido
                 ),
                ),

                  SizedBox(height: 20),
                  Text('Pulo', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Text('A tecla Espaço executa o pulo quando o jogador está sobre o chão.\n\nA possibilidade de pular é controlada pela verificação de contato com o solo.', style: TextStyle(color: Colors.white70)
                  ),

                   ClipRRect(
               borderRadius: BorderRadius.circular(8),
               child: Image.asset(
              'assets/imagens/ensinando a pular.gif',
               width: 150,
               height: 150,
               fit: BoxFit.contain, //isso faz com que a imagem se ajuste dentro do espaço disponível, mantendo sua proporção
                 filterQuality: FilterQuality.none, //Mantém o pixel art nítido
                 ),
                ),

                 SizedBox(height: 20),
                  Text('Braços', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Text('Os botões esquerdo e direito do mouse executa a mecanica de levantamento de braços do personagem.\n\nAssim, fazendo com que o jogador consiga alcansar objetos que estão no alto e também, para que consiga escalar em obstaculos presentes no jogo.', style: TextStyle(color: Colors.white70)
                  ),
                
                SizedBox(height: 20),
                  Text('Menu', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Text('O menu se abrira durante o funcionamento do jogo pressionando a tecla ESC.\n\nDentro da tela de menu, se encotra:\n\n• Botão de Configurações\n• Botão de Retornar ao Jogo\n• Botão de Retorno ao Título', style: TextStyle(color: Colors.white70)
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