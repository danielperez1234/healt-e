import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:health_e/widgets/cust_scaffold.dart';

late Map<String, dynamic> userInfo;

class MiPerfilPage extends StatelessWidget {
  const MiPerfilPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustScaffold(
        title: "Mi perfil",
        child: Column(
          children: [
            Text(userInfo['name'],
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700)),
            Text(
              userInfo['last_name'],
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
