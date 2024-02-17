import 'package:flutter/material.dart';
import 'package:qr_scanner/components/user_component.dart';
import 'package:qr_scanner/services/database.dart';

class UserData extends StatefulWidget {
  UserData({required this.id});
  String? id;

  @override
  State<UserData> createState() => _UserDataState();
}

class _UserDataState extends State<UserData> {
  String? name;
  String? email;
  String? phone;
  String? birth;
  getData() async {
    final user = await MongoDataBase.getDocument(widget.id);
    name = user['name'];
    email = user['email'];
    phone = user['phone'];
    birth = user['birth'];
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        backgroundColor: Colors.blue,
        body: UserComponent(
          name: name,
          email: email,
          phone: phone,
          birth: birth,
          width: _width,
          height: _height,),
      )),
    );
  }
}
