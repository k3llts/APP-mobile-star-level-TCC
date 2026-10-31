import 'package:flutter/material.dart';
import 'paginas/blog_page.dart';

void main() {
  runApp(const BlogApp()); // Função principal que inicia o aplicativo, chamando o widget BlogApp
}

class BlogApp extends StatelessWidget { // Widget principal do aplicativo, que define o tema e a página inicial
  const BlogApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Star Level', // Título do aplicativo
      theme: ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: Colors.black,
      fontFamily: 'fonte_pixelada_do_undertale_hahaha',
      ),
  
  home: BlogPage(), // Página inicial do aplicativo
    );
  }
}