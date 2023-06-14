import 'package:flutter/material.dart';
import 'package:health_e/constantes.dart';

class UserPhoto extends StatelessWidget {
  const UserPhoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: MediaQuery.of(context).size.width / 2,
      width: MediaQuery.of(context).size.width / 2,
      decoration: BoxDecoration(
          borderRadius:
              BorderRadius.circular(MediaQuery.of(context).size.width / 4),
          color: kWhite,
          boxShadow: [
            BoxShadow(
                blurRadius: 4,
                offset: Offset(0, 4),
                color: Colors.black87,
                spreadRadius: -2)
          ]),
      child: Center(
        child: Icon(
          Icons.add_a_photo_outlined,
          color: Colors.black26,
        ),
      ),
    );
  }
}
