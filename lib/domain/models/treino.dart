import 'exercicio.dart';

class Treino {
  final String titulo;
  final String descricao;
  final List<Exercicio> exercicios;
  final String? observacoes;

  const Treino({
    required this.titulo,
    required this.descricao,
    required this.exercicios,
    this.observacoes,
  });
}
