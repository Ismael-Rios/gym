/*final Map<String, dynamic> mockTreinoHoje = {
  'titulo': 'Treino A - Peito e Tríceps',
  'exercicios': [
    {'nome': 'Supino reto', 'series': 4, 'reps': 10},
    {'nome': 'Crossover', 'series': 3, 'reps': 12},
    {'nome': 'Tríceps corda', 'series': 4, 'reps': 10},
  ],
};*/

// lib/features/treino/data/mock_treino_hoje.dart

import 'package:gym/domain/models/exercicio.dart';
import 'package:gym/domain/models/treino.dart';

// Exemplo de mock tipado usando os modelos
final Treino mockTreinoHoje = Treino(
  titulo: 'Treino A - Peito e Tríceps',
  exercicios: [
    Exercicio(
      nome: 'Supino reto',
      series: 4,
      reps: 10,
      descansoSegundos: 90,
      pesoKg: 60,
      descricao: 'Deite, pegue a barra com pegada média e execute o movimento controlado.',
      //gifAsset: 'assets/gifs/supino_reto.gif',
    ),
    Exercicio(
      nome: 'Crossover',
      series: 3,
      reps: 12,
      descansoSegundos: 60,
      descricao: 'Abra o peitoral ‘fechando’ com os cotovelos levemente flexionados.',
      //gifAsset: 'assets/gifs/crossover.gif',
    ),
    Exercicio(
      nome: 'Tríceps corda',
      series: 4,
      reps: 10,
      descansoSegundos: 60,
      pesoKg: 20,
      descricao: 'Puxe com os cotovelos fixos ao lado do tronco.',
      //gifAsset: 'assets/gifs/triceps_corda.gif',
    ),
  ],
);
