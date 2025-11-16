import 'package:flutter/material.dart';
import 'package:gym/domain/models/treino.dart';
import 'package:gym/domain/models/exercicio.dart';

class TreinoDetalhadoPage extends StatelessWidget {
  final Treino treino;

  const TreinoDetalhadoPage({
    super.key,
    required this.treino,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(treino.titulo),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              treino.descricao,
              style: Theme.of(context).textTheme.bodyLarge,
            ),

            const SizedBox(height: 20),

            Expanded(
              child: ListView.builder(
                itemCount: treino.exercicios.length,
                itemBuilder: (context, index) {
                  final ex = treino.exercicios[index];
                  return _ExercicioCard(exercicio: ex);
                },
              ),
            ),

            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}

class _ExercicioCard extends StatelessWidget {
  final Exercicio exercicio;

  const _ExercicioCard({
    required this.exercicio,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                width: 70,
                height: 70,
                color: Colors.grey.shade300,
                child: const Icon(Icons.fitness_center, size: 32),
              ),
            ),

            const SizedBox(width: 12),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    exercicio.nome,
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text("${exercicio.series} séries de ${exercicio.reps} reps"),
                  Text("Descanso: ${exercicio.descanso}s"),
                  Text("Carga sugerida: ${exercicio.cargaSugerida} kg"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
