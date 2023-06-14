import 'package:flutter/material.dart';
import 'package:health_e/constantes.dart';

class CardUsuario extends StatelessWidget {
  CardUsuario({Key? key, required this.userName, this.onClick})
      : super(key: key);
  String userName;
  Function()? onClick;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onClick != null) onClick!();
      },
      child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * .1, vertical: 15),
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
              Icons.person_2_outlined,
              color: Colors.black,
            ),
            Expanded(
                child: Center(
              child: Text(userName),
            ))
          ],
        ),
      ),
    );
  }
}
