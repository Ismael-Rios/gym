import 'package:flutter/material.dart';
import 'package:gym/data/mocks/mock_treino_hoje.dart';
import 'package:gym/domain/models/exercicio.dart';
import 'package:gym/features/dashboard/presentation/pages/treino_detalhado_page.dart';

class SectionTreinoHoje extends StatelessWidget {
  const SectionTreinoHoje({super.key});

  @override
  Widget build(BuildContext context) {
    final treino = mockTreinoHoje;
    final List<Exercicio> exercicios = treino.exercicios;

    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => TreinoDetalhadoPage(
              treino: mockTreinoHoje,
            ),
          ),
        );
      },
      child: Card(
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
                treino.titulo,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              const Divider(height: 20),
              ...exercicios.map((ex) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: ListTile(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  tileColor: Colors.grey.shade200,
                  title: Text(ex.nome),
                  subtitle: Text('${ex.series} séries de ${ex.reps} repetições'),
                  //trailing: const Icon(Icons.check_circle_outline),
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
