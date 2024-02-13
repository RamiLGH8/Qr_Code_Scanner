import 'package:flutter/material.dart';

class UserComponent extends StatelessWidget {
   UserComponent({required this.name, required this.email, required this.phone, required this.birth});
  String? name;
  String? email;
  String? phone;
  String? birth;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        body: Container(
          child: Column(children: [
            Text( name!),
            Text( email!),
            Text( phone!),
            Text( birth!),
          ]),
        ),
      )),
    );
  }
}
