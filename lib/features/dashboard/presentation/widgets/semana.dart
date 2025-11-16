import 'package:flutter/material.dart';
import 'package:gym/domain/models/dia_semana.dart';

class SectionSemana extends StatelessWidget {
  final List<DiaSemana> semana;

  const SectionSemana({super.key, required this.semana});

  @override
  Widget build(BuildContext context) {
    Color corTreino(String? treino) {
      switch (treino) {
        case 'A': return Colors.yellow;
        case 'B': return Colors.pink;
        case 'C': return Colors.orange;
        default: return Colors.grey.shade400;
      }
    }

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Esta Semana:', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: semana.map((dia) {
                final treino = dia.treino;

                return Column(
                  children: [
                    CircleAvatar(
                      radius: 18,
                      backgroundColor: corTreino(treino),
                      child: treino != null
                          ? Text(
                              treino,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          : const Icon(Icons.remove, color: Colors.white70, size: 16),
                    ),
                    const SizedBox(height: 6),
                    Text(dia.dia),
                  ],
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
