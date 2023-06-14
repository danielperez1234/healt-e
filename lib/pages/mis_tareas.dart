import 'package:flutter/cupertino.dart';
import 'package:health_e/widgets/card_tarea.dart';
import 'package:health_e/widgets/cust_scaffold.dart';

class MisTareasPage extends StatelessWidget {
  const MisTareasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustScaffold(
      child: ListView(
        children: [
          CardTarea(tareaName: "Tarea 1"),
          CardTarea(tareaName: "Tarea 1"),
          CardTarea(tareaName: "Tarea 1"),
          CardTarea(tareaName: "Tarea 1"),
          CardTarea(tareaName: "Tarea 1"),
          CardTarea(tareaName: "Tarea 1"),
          CardTarea(tareaName: "Tarea 1"),
          CardTarea(tareaName: "Tarea 1"),
          CardTarea(tareaName: "Tarea 1"),
          CardTarea(tareaName: "Tarea 1"),
        ],
      ),
      backRoute: "assets/images/Tareas.png",
      title: "Mis tareas",
    );
  }
}
