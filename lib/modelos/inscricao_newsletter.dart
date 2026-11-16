import 'dart:convert';

class InscricaoNewsletter {
  final String tier;
  final String nome;
  final String email;
  final String comidaFavorita;
  final String dataInscricao;

  InscricaoNewsletter({
    required this.tier,
    required this.nome,
    required this.email,
    required this.comidaFavorita,
    required this.dataInscricao,
  });

  // Converte o objeto Dart para um Map (estrutura chave-valor do JSON)
  Map<String, dynamic> toJson() {
    return {
      'tier': tier,
      'nome': nome.isEmpty ? 'Anônimo' : nome,
      'email': email,
      'comida_favorita': comidaFavorita.isEmpty ? 'Não informada' : comidaFavorita,
      'data_inscricao': dataInscricao,
    };
  }

  // Converte direto para uma String JSON formatada
  String toJsonString() {
    return const JsonEncoder.withIndent('  ').convert(toJson());
  }

  // Cria um objeto a partir de um JSON recebido
  factory InscricaoNewsletter.fromJson(Map<String, dynamic> json) {
    return InscricaoNewsletter(
      tier: json['tier'] ?? 'NORMAL',
      nome: json['nome'] ?? '',
      email: json['email'] ?? '',
      comidaFavorita: json['comida_favorita'] ?? '',
      dataInscricao: json['data_inscricao'] ?? '',
    );
  }
}