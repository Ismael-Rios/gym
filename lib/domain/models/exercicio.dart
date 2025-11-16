class Exercicio {
  final String nome;
  final int series;
  final int reps;
  final int? descanso;
  final int? pesoKg;
  final int? cargaSugerida;
  final String? descricao;
  final String? gifAsset; // caminho em assets/ se usar GIFs locais

  const Exercicio({
    required this.nome,
    required this.series,
    required this.reps,
    this.descanso,
    this.pesoKg,
    this.cargaSugerida,
    this.descricao,
    this.gifAsset,
  });
}
