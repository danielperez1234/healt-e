import 'package:flutter/material.dart';
import 'package:health_e/constantes.dart';
import 'package:health_e/pages/inicio.dart';
import 'package:health_e/widgets/cust_button.dart';
import 'package:health_e/widgets/cust_textfield.dart';

class Registro extends StatelessWidget {
  Registro({Key? key}) : super(key: key);
  final nombre = TextEditingController();
  final apellido = TextEditingController();
  final correo = TextEditingController();
  final telefono = TextEditingController();
  final edad = TextEditingController();
  final sexo = TextEditingController();
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
                                    textEditingController: nombre,
                                    hint: "Nombre",
                                    horizontalPadd: 20,
                                  ),
                                ),
                                Expanded(
                                  child: CustTextfield(
                                    textEditingController: apellido,
                                    hint: "Apellido",
                                    horizontalPadd: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          CustTextfield(
                              textEditingController: correo,
                              hint: "Correo electrónico",
                              horizontalPadd: 20),
                          CustTextfield(
                              textEditingController: telefono,
                              hint: "Número de teléfono",
                              horizontalPadd: 20),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              children: [
                                Expanded(
                                  child: CustTextfield(
                                    textEditingController: edad,
                                    hint: "Edad",
                                    horizontalPadd: 20,
                                  ),
                                ),
                                Expanded(
                                  child: CustTextfield(
                                    textEditingController: sexo,
                                    hint: "Sexo",
                                    horizontalPadd: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          CustButton(
                              text: "Registrarse",
                              onPress: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => InicioPage()));
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
