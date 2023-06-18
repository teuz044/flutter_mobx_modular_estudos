import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:crud_mobx_w3/controller/aluno_controller.dart';

class PageEditar extends StatelessWidget {
  final AlunoController controller = Modular.get<AlunoController>();
  final int index;

  PageEditar({required this.index});

  @override
  Widget build(BuildContext context) {
    final aluno = controller.getAllAlunos[index];

    return Scaffold(
      appBar: AppBar(
        title:  const Text('Editar Aluno'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
             const Text(
              'Nome:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: TextEditingController(text: aluno.nome),
              onChanged: (value) {
                aluno.nome = value;
              },
            ),
            const SizedBox(height: 16),
            const Text(
              'Descrição:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: TextEditingController(text: aluno.descricao),
              onChanged: (value) {
                aluno.descricao = value;
              },
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                controller.updateAluno(index, aluno.nome, aluno.descricao);
                Modular.to.navigate('/');
              },
              child: const Text('Salvar'),
            ),
          ],
        ),
      ),
    );
  }
}
