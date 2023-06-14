import 'package:flutter/material.dart';
import 'package:health_e/constantes.dart';
import 'package:health_e/widgets/user_photo.dart';

class CustScaffold extends StatelessWidget {
  CustScaffold(
      {Key? key, required this.child, required this.backRoute, this.title})
      : super(key: key);
  String backRoute;
  Widget child;
  String? title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 40),
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  backRoute,
                  fit: BoxFit.contain,
                ),
              ),
              if (title != null)
                Positioned(
                  child: Text(
                    title!,
                    style: TextStyle(
                        color: kWhite,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                  top: 60,
                ),
              Positioned(
                child: UserPhoto(),
                bottom: 0,
              )
            ],
          ),
          Expanded(child: child)
        ],
      ),
    );
  }
}
