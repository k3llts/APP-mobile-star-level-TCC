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
                  Text('A tecla Espaço executa o pulo quando o jogador está sobre o chão.', style: TextStyle(color: Colors.white70)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}