import 'package:flutter/material.dart';
import 'package:health_e/constantes.dart';

class CustTextfield extends StatelessWidget {
  CustTextfield(
      {Key? key,
      required this.textEditingController,
      required this.hint,
      this.isPassword = false,
      this.horizontalPadd})
      : super(key: key);
  TextEditingController textEditingController;
  String hint;
  bool isPassword;
  double? horizontalPadd;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: horizontalPadd ?? MediaQuery.of(context).size.width * .1,
          vertical: 20),
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .05),
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: kWhite,
          boxShadow: [
            BoxShadow(
                blurRadius: 4,
                offset: Offset(0, 4),
                color: Colors.black.withOpacity(.25))
          ]),
      child: TextField(
        controller: textEditingController,
        decoration: InputDecoration(
            hintText: hint,
            border: InputBorder.none,
            disabledBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            focusedErrorBorder: InputBorder.none),
      ),
    );
  }
}
