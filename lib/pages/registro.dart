import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:health_e/constantes.dart';
import 'package:health_e/main.dart';
import 'package:health_e/modals/auth_modal.dart';
import 'package:health_e/pages/inicio.dart';
import 'package:health_e/pages/login.dart';
import 'package:health_e/service/user_collection_fb.dart';
import 'package:health_e/widgets/cust_button.dart';
import 'package:health_e/widgets/cust_textfield.dart';

class Registro extends StatelessWidget {
  Registro({Key? key}) : super(key: key);
  final name = TextEditingController();
  final lastName = TextEditingController();
  final email = TextEditingController();
  final phone = TextEditingController();
  final age = TextEditingController();
  final sex = TextEditingController();
  final password = TextEditingController();
  final passwordConf = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                color: kBlue,
              ),
            ],
          ),
          Positioned(
              top: 60,
              child: Container(
                height: MediaQuery.of(context).size.height - 60,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.topCenter,
                      child: Image.asset(
                        "assets/images/logo.png",
                        width: MediaQuery.of(context).size.width * .35,
                      ),
                    ),
                    Expanded(
                      child: ListView(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              children: [
                                Expanded(
                                  child: CustTextfield(
                                    textEditingController: name,
                                    hint: "Nombre",
                                    horizontalPadd: 20,
                                  ),
                                ),
                                Expanded(
                                  child: CustTextfield(
                                    textEditingController: lastName,
                                    hint: "Apellido",
                                    horizontalPadd: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          CustTextfield(
                              textEditingController: email,
                              hint: "Correo electrónico",
                              textInputType: TextInputType.emailAddress,
                              horizontalPadd: 20),
                          CustTextfield(
                              textEditingController: phone,
                              hint: "Número de teléfono",
                              horizontalPadd: 20),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              children: [
                                Expanded(
                                  child: CustTextfield(
                                    textEditingController: age,
                                    hint: "Edad",
                                    horizontalPadd: 20,
                                  ),
                                ),
                                Expanded(
                                  child: CustTextfield(
                                    textEditingController: sex,
                                    hint: "Sexo",
                                    horizontalPadd: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          CustTextfield(
                            textEditingController: password,
                            hint: "Contraseña",
                            horizontalPadd: 20,
                            isPassword: true,
                          ),
                          CustTextfield(
                            textEditingController: passwordConf,
                            hint: "Confirmar contraseña",
                            horizontalPadd: 20,
                            isPassword: true,
                          ),
                          CustButton(
                              text: "Registrarse",
                              onPress: () async {
                                try {
                                  var regResult =
                                      await auth.createUserWithEmailAndPassword(
                                          email: email.text,
                                          password: password.text);
                                  await UserCollectionFireBase()
                                      .registratUsuario(
                                          uId: regResult.user!.uid!,
                                          name: name.text,
                                          last_name: lastName.text,
                                          email: email.text,
                                          phone: phone.text,
                                          age: age.text,
                                          sex: sex.text);
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => Login()));
                                } catch (ex) {
                                  if (ex is FirebaseAuthException) {
                                    var fireEx = ex as FirebaseAuthException;
                                    await authModal(
                                        context,
                                        fireEx.message ?? "unknown",
                                        fireEx.code);
                                  }
                                }
                              })
                        ],
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
