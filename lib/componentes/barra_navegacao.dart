import 'package:flutter/material.dart';
import '../paginas/lista_personagens_page.dart';
import '../paginas/catalogo_produtos_page.dart';
import '../paginas/itens_coletaveis_page.dart';
import '../paginas/controles_page.dart';
import '../paginas/curiosidades_page.dart';
import '../paginas/sobre_page.dart';
import '../paginas/blog_page.dart';

class BarraNavegacao extends StatelessWidget {
  const BarraNavegacao({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 63,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      color: const Color.fromARGB(255, 0, 0, 0),
      child: Row(
        children: [
          const Spacer(),
          
          //Botão Blog Clicável
          InkWell(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const BlogPage()),
              );
            },
            child: const _LinkNavegacao(texto: 'Blog'),
          ),
          const SizedBox(width: 15),

          // Menu "Jogos" com PopupMenuButton
          PopupMenuButton<String>(
            offset: const Offset(0, 50),
            color: const Color.fromARGB(255, 0, 0, 0),
            child: const Row(
              children: [
                _LinkNavegacao(texto: 'Jogos'),
                Icon(Icons.arrow_drop_down, color: Color.fromARGB(255, 212, 0, 255), size: 18),
              ],
            ),
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                enabled: false,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Timmy Build Your Dates',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.arrow_right, color: Colors.white, size: 18),
                  ],
                ),
              ),
              const PopupMenuDivider(height: 1),
              const PopupMenuItem<String>(
                value: 'personagens',
                child: Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: Text('• Lista de Personagens', style: TextStyle(color: Colors.white)),
                ),
              ),
              const PopupMenuItem<String>(
                value: 'produtos',
                child: Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: Text('• Catálogo de Produtos', style: TextStyle(color: Colors.white)),
                ),
              ),
              const PopupMenuItem<String>(
                value: 'itens',
                child: Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: Text('• Itens Coletáveis', style: TextStyle(color: Colors.white)),
                ),
              ),
              const PopupMenuItem<String>(
                value: 'controles',
                child: Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: Text('• Lista de Controles', style: TextStyle(color: Colors.white)),
                ),
              ),
              const PopupMenuItem<String>(
                value: 'curiosidades',
                child: Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: Text('• Lista de Curiosidades', style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
            onSelected: (String value) {
              _navegarPara(context, value);
            },
          ),

          const SizedBox(width: 15),
          const _LinkNavegacao(texto: 'Produtos'),
          const SizedBox(width: 15),

          // Botão Sobre Clicável
          InkWell(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const SobrePage()),
              );
            },
            child: const _LinkNavegacao(texto: 'Sobre'),
          ),
        ],
      ),
    );
  }

  void _navegarPara(BuildContext context, String value) {
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
        color: Color.fromARGB(255, 213, 1, 255),
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}