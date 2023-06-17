// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aluno_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AlunoController on AlunoControllerBase, Store {
  Computed<List<AlunoModel>>? _$getAllAlunosComputed;

  @override
  List<AlunoModel> get getAllAlunos => (_$getAllAlunosComputed ??=
          Computed<List<AlunoModel>>(() => super.getAllAlunos,
              name: 'AlunoControllerBase.getAllAlunos'))
      .value;

  late final _$alunosAtom =
      Atom(name: 'AlunoControllerBase.alunos', context: context);

  @override
  ObservableList<AlunoModel> get alunos {
    _$alunosAtom.reportRead();
    return super.alunos;
  }

  @override
  set alunos(ObservableList<AlunoModel> value) {
    _$alunosAtom.reportWrite(value, super.alunos, () {
      super.alunos = value;
    });
  }

  late final _$AlunoControllerBaseActionController =
      ActionController(name: 'AlunoControllerBase', context: context);

  @override
  void addAluno(String nome, String descricao) {
    final _$actionInfo = _$AlunoControllerBaseActionController.startAction(
        name: 'AlunoControllerBase.addAluno');
    try {
      return super.addAluno(nome, descricao);
    } finally {
      _$AlunoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateAluno(int index, String nome, String descricao) {
    final _$actionInfo = _$AlunoControllerBaseActionController.startAction(
        name: 'AlunoControllerBase.updateAluno');
    try {
      return super.updateAluno(index, nome, descricao);
    } finally {
      _$AlunoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeAluno(int index) {
    final _$actionInfo = _$AlunoControllerBaseActionController.startAction(
        name: 'AlunoControllerBase.removeAluno');
    try {
      return super.removeAluno(index);
    } finally {
      _$AlunoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
alunos: ${alunos},
getAllAlunos: ${getAllAlunos}
    ''';
  }
}
