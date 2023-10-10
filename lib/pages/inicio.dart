import 'package:flutter/material.dart';
import 'package:health_e/pages/calendario.dart';
import 'package:health_e/pages/mi_perfil.dart';
import 'package:health_e/pages/mis_pacientes_page.dart';
import 'package:health_e/pages/mis_tareas.dart';
import 'package:health_e/widgets/cust_botoncito.dart';
import 'package:health_e/widgets/cust_scaffold.dart';

class InicioPage extends StatelessWidget {
  const InicioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustScaffold(
        title: "Welcome ${userInfo['name']}",
        child: Wrap(
          children: [
            CustBotoncito(
              icon: Icons.person_2_outlined,
              onClick: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => MiPerfilPage()));
              },
            ),
            CustBotoncito(
              icon: Icons.fact_check_outlined,
              onClick: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => MisTareasPage()));
              },
            ),
            CustBotoncito(
              icon: Icons.calendar_month_outlined,
              onClick: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => CalendarioPage()));
              },
            ),
            CustBotoncito(
              icon: Icons.people_outline,
              onClick: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => MisPacientesPage()));
              },
            ),
          ],
        ),
        backRoute: "assets/images/comidasana.png");
  }
}
