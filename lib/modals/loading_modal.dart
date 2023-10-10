import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:health_e/constantes.dart';
import 'package:health_e/modals/auth_modal.dart';

Future loadingModal(BuildContext context, Future<dynamic> future) async {
  late final res;
  future.then((value) {
    res = value;
    Navigator.pop(context);
  }).onError((error, stackTrace) async {
    res = null;

    if (error is FirebaseAuthException) {
      var fbErr = error as FirebaseAuthException;
      await authModal(context, fbErr.message ?? "unknown", fbErr.code);
      Navigator.pop(context);
    }
  });
  await showDialog(
      context: context,
      builder: (_) {
        return Container(
          color: kVerde.withOpacity(.35),
          child: Center(
            child: CircularProgressIndicator(
              color: kBlue.withOpacity(.4),
            ),
          ),
        );
      });
  return res;
}
