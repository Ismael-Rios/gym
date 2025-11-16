class Exercicio {
  final String nome;
  final int series;
  final int reps;
  final int? descansoSegundos;
  final int? pesoKg;
  final String? descricao;
  final String? gifAsset; // caminho em assets/ se usar GIFs locais

  const Exercicio({
    required this.nome,
    required this.series,
    required this.reps,
    this.descansoSegundos,
    this.pesoKg,
    this.descricao,
    this.gifAsset,
  });
}
