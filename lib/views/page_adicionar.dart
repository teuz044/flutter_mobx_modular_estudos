import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../controller/aluno_controller.dart';

class PageAdicionar extends StatelessWidget {
  final controller = Modular.get<AlunoController>();
  PageAdicionar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Page')),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: controller.nome,
              decoration: const InputDecoration(labelText: 'Nome'),
            ),
            TextField(
              controller: controller.descricao,
              decoration: const InputDecoration(labelText: 'Descricao'),
            ),
            const SizedBox(
              height: 16.0,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
              ),
              onPressed: () {
                controller.addAluno(
                  controller.nome.text,
                  controller.descricao.text,
                );
                print(controller.getAllAlunos);
                Modular.to.navigate('/');
              },
              child: const Text('Salvar'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Modular.to.navigate('/'),
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
