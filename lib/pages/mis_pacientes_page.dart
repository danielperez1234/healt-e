import 'package:flutter/material.dart';
import 'package:health_e/pages/mi_perfil.dart';
import 'package:health_e/widgets/card_usuario.dart';
import 'package:health_e/widgets/cust_scaffold.dart';

import '../widgets/card_tarea.dart';

class MisPacientesPage extends StatelessWidget {
  const MisPacientesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustScaffold(
      title: "Mis Pacientes",
      backRoute: 'assets/images/pacientes.png',
      child: ListView(
        children: [
          CardUsuario(
            userName: "El Aletz",
            onClick: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => MiPerfilPage()));
            },
          ),
          CardUsuario(
            userName: "El Aletz",
            onClick: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => MiPerfilPage()));
            },
          ),
          CardUsuario(
            userName: "El Aletz",
            onClick: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => MiPerfilPage()));
            },
          ),
          CardUsuario(
            userName: "El Aletz",
            onClick: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => MiPerfilPage()));
            },
          ),
          CardUsuario(
            userName: "El Aletz",
            onClick: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => MiPerfilPage()));
            },
          ),
          CardUsuario(
            userName: "El Aletz",
            onClick: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => MiPerfilPage()));
            },
          ),
        ],
      ),
    );
  }
}
