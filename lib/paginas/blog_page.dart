import 'package:flutter/material.dart';
import '../componentes/barra_navegacao.dart';
import 'artigo_gamificacao_page.dart'; // Importa a página do artigo sobre gamificação

class BlogPage extends StatelessWidget {
  const BlogPage({super.key});

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

            // Título Principal da Página
            const Text(
              'BLOG DE DESENVOLVIMENTO',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Início do Desenvolvimento e Arquitetura',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    'Outubro de 2026',
                    style: TextStyle(
                      color: Color(0xFFB800E5),
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Começamos a estruturar o aplicativo em Flutter, definindo a navegação entre as telas e a organização das pastas. O foco inicial foi garantir uma base sólida e limpa para o catálogo e os itens coletáveis.',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 13,
                      height: 1.4,
                    ),
                  ),
                  const SizedBox(height: 30),

                  const Text(
                    'Implementação de Controles e Otimização',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    'Outubro de 2026',
                    style: TextStyle(
                      color: Color(0xFFB800E5),
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Adicionamos a página de controles e ajustámos a qualidade das imagens de pixel art utilizando propriedades de renderização nativas para manter a nitidez perfeita.',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 13,
                      height: 1.4,
                    ),
                  ),
                  const SizedBox(height: 40),
                  
                  const Text(
                    'Modelagem 3D e Integração no Unity',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    'Outubro de 2026',
                    style: TextStyle(
                      color: Color(0xFFB800E5),
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'A modelagem dos personagens e itens em Blender exigiu atenção especial aos detalhes, como vertex snapping e texturização, para garantir uma boa performance e fidelidade visual no jogo.',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 13,
                      height: 1.4,
                    ),
                  ),
                  const SizedBox(height: 40),

                  const Text(
                    'Polimento e Acessibilidade da UI',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    'Outubro de 2026',
                    style: TextStyle(
                      color: Color(0xFFB800E5),
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Implementamos opções de acessibilidade, melhorias visuais e suporte a imagens e GIFs nas interfaces, garantindo uma experiência fluida e imersiva para os jogadores.',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 13,
                      height: 1.4,
                    ),
                  ),
                  const SizedBox(height: 40),

                  // ===================================================
                  // BLOCO DE DESTAQUE COM O BOTÃO DE GAMIFICAÇÃO
                  // ===================================================
                  Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: const Color(0xFF0A0A23), // Fundo azulado/escuro estilo site retrô
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: const Color(0xFFB800E5), width: 2),
                    ),
                    child: Column(
                      children: [
                        const Text(
                          'NOTÍCIAS E ARTIGOS ESPECIAIS',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.2,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Text(
                          'Acompanhe os nossos artigos exclusivos sobre tecnologia, design e conceitos aplicados no TCC!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 13,
                            height: 1.4,
                          ),
                        ),
                        const SizedBox(height: 24),

                        // Botão de Gamificação estilizado
                        OutlinedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ArtigoGamificacaoPage(),
                              ),
                            );
                          },
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: Colors.white, width: 1.5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                          ),
                          child: const Column(
                            children: [
                              Text(
                                'STAR LEVEL / TCC',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.1,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                'O QUE É GAMIFICAÇÃO?',
                                style: TextStyle(
                                  color: Color(0xFFFFE600), // Amarelo destaque estilo retro
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.2,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 24),

                        // Imagens de decoração no rodapé do bloco
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white54),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Image.asset(
                                'assets/imagens/Bluesky_Logo.webp',
                                width: 20,
                                height: 20,
                                filterQuality: FilterQuality.none,
                              ),
                            ),
                            const SizedBox(width: 15),
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white54),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Image.asset(
                                'assets/imagens/X_logo.png',
                                width: 20,
                                height: 20,
                                filterQuality: FilterQuality.none,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // ===================================================

                  const SizedBox(height: 40),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}