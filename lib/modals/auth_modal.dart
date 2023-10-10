import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

Future authModal(context, String message, String title) async {
  await showDialog(
      barrierColor: Colors.transparent,
      context: context,
      builder: (_) {
        return AlertDialog(
          title: Text(
            title,
            style: TextStyle(color: Colors.red),
          ),
          content: ConstrainedBox(
            constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height / 2),
            child: SingleChildScrollView(
              child: Column(
                  mainAxisSize: MainAxisSize.min, children: [Text(message)]),
            ),
          ),
        );
      });
}
