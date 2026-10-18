import 'package:flutter/material.dart';
import '../paginas/lista_personagens_page.dart';
import '../paginas/catalogo_produtos_page.dart';
import '../paginas/itens_coletaveis_page.dart';
import '../paginas/controles_page.dart';
import '../paginas/curiosidades_page.dart';

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