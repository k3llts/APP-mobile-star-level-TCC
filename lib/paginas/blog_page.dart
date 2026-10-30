import 'package:flutter/material.dart';
import '../componentes/barra_navegacao.dart';

class PostBlog {
  final String titulo;
  final String data;
  final String conteudo;

  const PostBlog({
    required this.titulo,
    required this.data,
    required this.conteudo,
  });
}

// Lista de postagens sobre o desenvolvimento do jogo
final List<PostBlog> postsBlog = [
  const PostBlog(
    titulo: 'Início do Desenvolvimento e Arquitetura',
    data: 'Outubro de 2026',
    conteudo: 'Começamos a estruturar o aplicativo em Flutter, definindo a navegação entre as telas e a organização das pastas. O foco inicial foi garantir uma base sólida e limpa para o catálogo e os itens coletáveis.',
  ),
  const PostBlog(
    titulo: 'Modelagem 3D e Integração no Unity',
    data: 'Outubro de 2026',
    conteudo: 'A modelagem dos personagens e itens em Blender exigiu atenção especial aos detalhes, como vertex snapping e texturização, para garantir uma boa performance e fidelidade visual no jogo.',
  ),
  const PostBlog(
    titulo: 'Polimento e Acessibilidade da UI',
    data: 'Outubro de 2026',
    conteudo: 'Implementamos opções de acessibilidade, melhorias visuais e suporte a imagens e GIFs nas interfaces, garantindo uma experiência fluida e imersiva para os jogadores.',
  ),
];

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

            const Text(
              'BLOG DE DESENVOLVIMENTO',
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
                children: postsBlog.map((post) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: const Color(0xFF1E1E1E),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: const Color(0xFFB800E5), width: 1.5),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            post.titulo,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            post.data,
                            style: const TextStyle(
                              color: Color(0xFFB800E5),
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            post.conteudo,
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 13,
                              height: 1.4,
                            ),
                          ),
                        ],
                      ),
                    ),
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