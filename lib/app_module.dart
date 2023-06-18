import 'package:crud_mobx_w3/views/page_adicionar.dart';
import 'package:crud_mobx_w3/views/page_editar.dart';
import 'package:crud_mobx_w3/views/page_listar.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'controller/aluno_controller.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => AlunoController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => PageListar(controller: Modular.get<AlunoController>())),
    ChildRoute('/adicionar', child: (_, __) =>  PageAdicionar()),
ChildRoute('/editar/:index', child: (_, args) => PageEditar(index: int.parse(args.params['index']))),

  ];
}

