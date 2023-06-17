
import 'package:crud_mobx_w3/model/aluno_model.dart';
import 'package:mobx/mobx.dart';

class AlunoRepository {
    List<AlunoModel> alunos = ObservableList<AlunoModel>();

  void addItem(AlunoModel model) {
    alunos.add(model);
  }

  List<AlunoModel> getAllItems() {
    return List.from(alunos);
  }

  void updateItem(int index, AlunoModel aluno) {
    alunos[index] = aluno;
  }

  void removeItem(int index) {
    alunos.removeAt(index);
  }
}