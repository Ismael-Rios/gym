import 'package:flutter/material.dart';
import '../widgets/treino_hoje.dart';
import '../widgets/semana.dart';
import 'package:gym/data/mocks/mock_semana.dart';
import 'package:gym/data/mocks/mock_usuario.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Olá, ${mockUsuario.nome}'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionTreinoHoje(),
            const SizedBox(height: 20),
            SectionSemana(semana: mockSemana),
            const SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Início'),
          BottomNavigationBarItem(icon: Icon(Icons.fitness_center), label: 'Treino'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Configurações'),
        ],
      ),
    );
  }
}