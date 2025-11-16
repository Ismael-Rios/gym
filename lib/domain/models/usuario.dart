class Usuario {
  final String nome;
  final String sobrenome;
  final int? peso;
  final DateTime? dataNascimento;

  const Usuario({
    required this.nome,
    required this.sobrenome,
    this.peso,
    this.dataNascimento,
  });
}