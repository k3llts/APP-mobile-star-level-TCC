import 'package:flutter/material.dart';
import 'paginas/blog_page.dart';

void main() {
  runApp(const BlogApp());
}

class BlogApp extends StatelessWidget {
  const BlogApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Star Level', // Título do aplicativo
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.black,
        fontFamily: 'Arial',
      ),
      home: const BlogPage(), // Página inicial do aplicativo
    );
  }
}