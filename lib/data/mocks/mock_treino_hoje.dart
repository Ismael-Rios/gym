import 'package:gym/domain/models/exercicio.dart';
import 'package:gym/domain/models/treino.dart';

final Treino mockTreinoHoje = Treino(
  titulo: 'Treino A - Peito e Tríceps',
  descricao: 'Teste',
  exercicios: [
    Exercicio(
      nome: 'Supino reto',
      series: 4,
      reps: 10,
      descanso: 90,
      pesoKg: 60,
      descricao: 'Deite, pegue a barra com pegada média e execute o movimento controlado.',
      //gifAsset: 'assets/gifs/supino_reto.gif',
    ),
    Exercicio(
      nome: 'Crossover',
      series: 3,
      reps: 12,
      descanso: 60,
      descricao: 'Abra o peitoral ‘fechando’ com os cotovelos levemente flexionados.',
      //gifAsset: 'assets/gifs/crossover.gif',
    ),
    Exercicio(
      nome: 'Tríceps corda',
      series: 4,
      reps: 10,
      descanso: 60,
      pesoKg: 20,
      descricao: 'Puxe com os cotovelos fixos ao lado do tronco.',
      //gifAsset: 'assets/gifs/triceps_corda.gif',
    ),
  ],
);
