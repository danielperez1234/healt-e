import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:health_e/constantes.dart';
import 'package:health_e/main.dart';
import 'package:health_e/modals/auth_modal.dart';
import 'package:health_e/modals/loading_modal.dart';
import 'package:health_e/pages/inicio.dart';
import 'package:health_e/pages/mi_perfil.dart';
import 'package:health_e/pages/registro.dart';
import 'package:health_e/service/user_collection_fb.dart';
import 'package:health_e/widgets/cust_button.dart';
import 'package:health_e/widgets/cust_textfield.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);
  final usuario = TextEditingController();
  final password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .4,
            child: Image.asset(
              "assets/images/logo.png",
              width: MediaQuery.of(context).size.width * .35,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                CustTextfield(
                  textEditingController: usuario,
                  hint: "Correo",
                  textInputType: TextInputType.emailAddress,
                ),
                CustTextfield(
                  textEditingController: password,
                  hint: "Contraseña",
                  isPassword: true,
                ),
                CustButton(
                  text: "Iniciar sesión",
                  onPress: () async {
                    var logRes = await loadingModal(
                        context,
                        auth.signInWithEmailAndPassword(
                            email: usuario.text, password: password.text));
                    print(logRes);
                    if (logRes is UserCredential) {
                      userInfo = await UserCollectionFireBase()
                          .getUserInfo(logRes.user!.uid);
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => InicioPage()));
                    }
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      "¿No tienes cuenta?",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => Registro()));
                      },
                      child: Text(
                        "¡Haz click aquí!",
                        style: TextStyle(
                            color: kVerde, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
