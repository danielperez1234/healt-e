import 'package:flutter/material.dart';
import 'package:health_e/widgets/cust_scaffold.dart';

class MiPerfilPage extends StatelessWidget {
  const MiPerfilPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustScaffold(
        title: "Mi perfil",
        child: Column(
          children: [
            Text("Nombre(s)",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700)),
            Text(
              "Apellidos(s)",
              style: TextStyle(),
            ),
            Expanded(
                child: Center(
              child: Text(
                "+info",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
              ),
            ))
          ],
        ),
        backRoute: "assets/images/comidasana.png");
  }
}
