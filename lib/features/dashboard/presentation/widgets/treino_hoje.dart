import 'package:flutter/material.dart';

class SectionTreinoHoje extends StatelessWidget {
  const SectionTreinoHoje({super.key});

  @override
  Widget build(BuildContext context) {
    final treino = 'Treino A - Peito e Tríceps';
    final exercicios = [
      {'nome': 'Supino reto', 'series': 4, 'reps': 10},
      {'nome': 'Crossover', 'series': 3, 'reps': 12},
      {'nome': 'Tríceps corda', 'series': 4, 'reps': 10},
    ];

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Treino de Hoje:',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              treino,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const Divider(height: 20),
            ...exercicios.map((ex) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: ListTile(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                tileColor: Colors.grey.shade100,
                title: Text(ex['nome'] as String),
                subtitle: Text('${ex['series']} séries de ${ex['reps']} reps'),
                trailing: const Icon(Icons.check_circle_outline),
              ),
            )),
          ],
        ),
      ),
    );
  }
}