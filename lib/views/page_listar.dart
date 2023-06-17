import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:crud_mobx_w3/controller/aluno_controller.dart';

class PageListar extends StatelessWidget {
  final AlunoController controller;

  const PageListar({required this.controller});

  @override
  Widget build(BuildContext context) {
    controller.getAllAlunos; // Chame o método para buscar os alunos

    return Scaffold(
      appBar: AppBar(
        title: const Text('Listar alunos'),
        backgroundColor: Colors.blue,
      ),
      body: Observer(
        builder: (_) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView.builder(
              itemCount: controller.getAllAlunos.length,
              itemBuilder: (BuildContext context, int index) {
                return Dismissible(
                  background: Container(
                    color: Colors.red,
                  ),
                   key: ObjectKey(controller.getAllAlunos[index]),
                  onDismissed: (direction) {
                    controller.removeAluno(index);
                  },
                  child: ListTile(
                    title: Text(controller.getAllAlunos[index].nome),
                    subtitle: Text(controller.getAllAlunos[index].descricao),
                  ),
                );
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Modular.to.navigate('/adicionar');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
