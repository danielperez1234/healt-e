import 'package:flutter/material.dart';
import 'package:health_e/constantes.dart';

class CardTarea extends StatelessWidget {
  CardTarea({Key? key, required this.tareaName}) : super(key: key);
  String tareaName;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(MediaQuery.of(context).size.width * .1),
      width: MediaQuery.of(context).size.width * .8,
      height: 60,
      decoration: BoxDecoration(
          color: kWhite,
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 5),
                color: Colors.black87,
                spreadRadius: -2,
                blurRadius: 4)
          ],
          borderRadius: BorderRadius.circular(25)),
      padding: EdgeInsets.all(15),
      child: Row(
        children: [
          Icon(
            Icons.check,
            color: Colors.black,
          ),
          Expanded(
              child: Center(
            child: Text(tareaName),
          ))
        ],
      ),
    );
  }
}
