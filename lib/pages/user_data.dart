import 'package:flutter/material.dart';
import 'package:qr_scanner/components/user_component.dart';

class UserData extends StatefulWidget {
  const UserData({super.key});

  @override
  State<UserData> createState() => _UserDataState();
}

class _UserDataState extends State<UserData> {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        body: UserComponent(
            name: 'Rami Leghrib',
            email: 'ramilgh1604@gmail.com',
            phone: '0783111071',
            birth: '07/07/2003'),
      )),
    );
  }
}
