import 'exercicio.dart';

class Treino {
  final String titulo;
  final List<Exercicio> exercicios;
  final String? observacoes;

  const Treino({
    required this.titulo,
    required this.exercicios,
    this.observacoes,
  });
}
