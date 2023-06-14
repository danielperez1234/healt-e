import 'package:flutter/material.dart';
import 'package:health_e/constantes.dart';

class CustButton extends StatelessWidget {
  CustButton({Key? key, required this.text, required this.onPress})
      : super(key: key);
  String text;
  Function() onPress;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .25),
      width: MediaQuery.of(context).size.width * .5,
      child: RawMaterialButton(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * .5,
        ),
        onPressed: () {
          onPress();
        },
        fillColor: kVerde,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        padding: EdgeInsets.all(0),
        child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width * .5,
            child: Center(
              child: Text(
                text,
                style: TextStyle(color: kWhite, fontWeight: FontWeight.w700),
              ),
            )),
      ),
    );
  }
}
