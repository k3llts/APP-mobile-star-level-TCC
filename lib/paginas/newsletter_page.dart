import 'package:flutter/material.dart';
import '../componentes/barra_navegacao.dart';
import '../modelos/inscricao_newsletter.dart';

class NewsletterPage extends StatefulWidget {
  const NewsletterPage({super.key});

  @override
  State<NewsletterPage> createState() => _NewsletterPageState();
}

class _NewsletterPageState extends State<NewsletterPage> {
  final _formKey = GlobalKey<FormState>();
  final _nomeController = TextEditingController();
  final _emailController = TextEditingController();
  final _comidaController = TextEditingController();

  // Tier selecionado por padrão
  String _tierSelecionado = 'NORMAL';

  // Lista simulando o banco de dados em JSON na memória
  final List _registrosJson = [];

  @override
  void dispose() {
    _nomeController.dispose();
    _emailController.dispose();
    _comidaController.dispose();
    super.dispose();
  }

  void _enviarInscricao() {
    if (_formKey.currentState!.validate()) {
      final novaInscricao = InscricaoNewsletter(
        tier: _tierSelecionado,
        nome: _nomeController.text.trim(),
        email: _emailController.text.trim(),
        comidaFavorita: _comidaController.text.trim(),
        dataInscricao: DateTime.now().toIso8601String(),
      );

      setState(() {
        _registrosJson.add(novaInscricao.toJson());
      });

      // Exibe um pop-up estilo Undertale mostrando o JSON gerado
      showDialog(
        context: context,
        builder: (context) => Dialog(
          backgroundColor: Colors.black,
          shape: const RoundedRectangleBorder(
            side: BorderSide(color: Colors.white, width: 3),
          ),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '* INSCRIÇÃO REALIZADA!',
                  style: TextStyle(
                    color: Color(0xFFFFE600),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Dados convertidos em JSON com sucesso:',
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
                const SizedBox(height: 12),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(12),
                  color: const Color(0xFF141414),
                  child: SelectableText(
                    novaInscricao.toJsonString(),
                    style: const TextStyle(
                      color: Color(0xFF55FF55),
                      fontSize: 12,
                      fontFamily: 'monospace',
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.white, width: 2),
                      shape: const RoundedRectangleBorder(),
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                      _nomeController.clear();
                      _emailController.clear();
                      _comidaController.clear();
                    },
                    child: const Text(
                      'FECHAR',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final largura = MediaQuery.sizeOf(context).width;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const BarraNavegacao(),
            const SizedBox(height: 40),

            Center(
              child: Container(
                width: largura > 650 ? 580 : largura * 0.90,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Cabeçalho estilo Undertale
                      const Center(
                        child: Text(
                          'STAR LEVEL™',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Center(
                        child: Text(
                        'LISTA DE E-MAILS',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),

                      const Text(
                        'Inscreva-se aqui para receber atualizações gratuitas por e-mail sobre o desenvolvimento de Timmy: Build Your Dates!',
                        style: TextStyle(color: Colors.white, fontSize: 13, height: 1.5),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'NUNCA usaremos seu e-mail para qualquer outra finalidade além de enviar novidades do jogo.',
                        style: TextStyle(color: Colors.white70, fontSize: 13, height: 1.5),
                      ),
                      const SizedBox(height: 28),

                      // Seleção de Tier (Nível de notícias)
                      const Text(
                        'Selecione seu Nível:',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 12),

                      _buildOpcaoTier(
                        valor: 'MINIMO',
                        titulo: 'MINIMO',
                        descricao: 'Me avise apenas quando o jogo for lançado. NADA MAIS.',
                      ),
                      _buildOpcaoTier(
                        valor: 'NORMAL',
                        titulo: 'NORMAL',
                        descricao: 'Quero receber o boletim de desenvolvimento, novos personagens e novidades do Sakolla.',
                      ),
                      _buildOpcaoTier(
                        valor: 'SUPER',
                        titulo: 'SUPER',
                        descricao: 'ME MANDE ATUALIZAÇÕES INSTANTÂNEAS SOBRE QUALQUER PROJETO DA STAR LEVEL!',
                      ),
                      _buildOpcaoTier(
                        valor: 'TRUCK FREAK',
                        titulo: 'ROMÂNTICO NATO',
                        descricao: 'Me manda qualquer coisa cara, eu só quero ajudar o Timmy.',
                      ),

                      const SizedBox(height: 24),

                      // Campos de Texto estilo caixa branca retrô
                      _buildCampoTexto(
                        controller: _nomeController,
                        dica: 'Nome (opcional)',
                      ),
                      const SizedBox(height: 12),

                      _buildCampoTexto(
                        controller: _emailController,
                        dica: 'email@exemplo.com (obrigatório)',
                        obrigatorio: true,
                        tipoTeclado: TextInputType.emailAddress,
                      ),
                      const SizedBox(height: 12),

                      _buildCampoTexto(
                        controller: _comidaController,
                        dica: 'Comida Favorita (opcional)',
                      ),
                      const SizedBox(height: 28),

                      // Botão SIGNUP idêntico à captura de tela
                      Center(
                        child: InkWell(
                          onTap: _enviarInscricao,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 42,
                              vertical: 14,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              border: Border.all(color: Colors.white, width: 3),
                            ),
                            child: const Text(
                              'ENVIAR',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5,
                              ),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 28),
                      const Text(
                        'Ao se inscrever, você concorda em receber e-mails regulares sobre o desenvolvimento do projeto Star Level.',
                        style: TextStyle(color: Colors.white60, fontSize: 11, height: 1.4),
                      ),
                      const SizedBox(height: 50),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOpcaoTier({
    required String valor,
    required String titulo,
    required String descricao,
  }) {
    final selecionado = _tierSelecionado == valor;
    return InkWell(
      onTap: () => setState(() => _tierSelecionado = valor),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              selecionado ? Icons.radio_button_checked : Icons.radio_button_unchecked,
              color: Colors.white,
              size: 18,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: RichText(
                text: TextSpan(
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    height: 1.4,
                    fontFamily: 'fonte_pixelada_do_undertale_hahaha',
                  ),
                  children: [
                    TextSpan(
                      text: '$titulo — ',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: descricao),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCampoTexto({
    required TextEditingController controller,
    required String dica,
    bool obrigatorio = false,
    TextInputType tipoTeclado = TextInputType.text,
  }) {
    return TextFormField(
      controller: controller,
      keyboardType: tipoTeclado,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
      validator: obrigatorio
          ? (value) {
              if (value == null || value.trim().isEmpty) {
                return 'Por favor, insira seu e-mail.';
              }
              if (!value.contains('@') || !value.contains('.')) {
                return 'Digite um e-mail válido.';
              }
              return null;
            }
          : null,
      decoration: InputDecoration(
        hintText: dica,
        hintStyle: const TextStyle(
          color: Colors.black54,
          fontSize: 13,
        ),
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide.none,
        ),
        errorStyle: const TextStyle(color: Color(0xFFFF5555), fontSize: 11),
      ),
    );
  }
}