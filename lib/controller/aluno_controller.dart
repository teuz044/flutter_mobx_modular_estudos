import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import '../model/aluno_model.dart';

part 'aluno_controller.g.dart';

class AlunoController = AlunoControllerBase with _$AlunoController;

abstract class AlunoControllerBase with Store {

  TextEditingController nome = TextEditingController();
  TextEditingController descricao = TextEditingController();

  @observable
  ObservableList<AlunoModel> alunos = ObservableList<AlunoModel>();

@action
void addAluno(String nome, String descricao) {
  final aluno = AlunoModel(descricao: descricao, nome: nome);
  alunos.add(aluno);
}

@computed
List<AlunoModel> get getAllAlunos => alunos;

  @action
  void updateAluno(int index, String nome, String descricao) {
    final aluno = AlunoModel(descricao: descricao, nome: nome);
    alunos[index] = aluno;
  }

  @action
  void removeAluno(int index) {
    alunos.removeAt(index);
  }

  
}
