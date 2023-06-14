import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_e/constantes.dart';

class CustBotoncito extends StatelessWidget {
  CustBotoncito({Key? key, required this.icon, this.onClick}) : super(key: key);
  IconData icon;
  Function()? onClick;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(MediaQuery.of(context).size.width / 16),
      height: MediaQuery.of(context).size.width / 4,
      width: MediaQuery.of(context).size.width / 4,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(25), boxShadow: [
        BoxShadow(
            offset: Offset(0, 5),
            color: Colors.black87,
            spreadRadius: -2,
            blurRadius: 4)
      ]),
      child: RawMaterialButton(
        onPressed: () {
          if (onClick != null) onClick!();
        },
        elevation: 0,
        fillColor: kWhite,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        child: Center(
          child: Icon(
            icon,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
