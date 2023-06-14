import 'package:flutter/cupertino.dart';
import 'package:health_e/widgets/cust_scaffold.dart';

class CalendarioPage extends StatelessWidget {
  const CalendarioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustScaffold(
        title: "Mi calendario",
        child: Container(),
        backRoute: "assets/images/calendario.png");
  }
}
