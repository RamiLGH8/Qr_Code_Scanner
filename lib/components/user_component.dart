import 'package:flutter/material.dart';

class UserComponent extends StatefulWidget {
  final String? name;
  final String? email;
  final String? phone;
  final String? birth;
  final double? width;
  final double? height;

  const UserComponent({
    Key? key,
    this.name,
    this.email,
    this.phone,
    this.birth,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  _UserComponentState createState() => _UserComponentState();
}

class _UserComponentState extends State<UserComponent> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  const Color.fromARGB(255, 138, 188, 228),
                  Color.fromARGB(255, 245, 236, 230),
                ],
              ),
            ),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 2, color: Colors.white),
                  color: Colors.blue,
                ),
                width: widget.width! * 0.9,
                height: widget.height! * 0.5,
                child: (widget.name == null ||
                        widget.email == null ||
                        widget.phone == null ||
                        widget.birth == null)
                    ? Center(
                        child: CircularProgressIndicator(),
                      )
                    : Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 40, horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "-Name: ${widget.name}",
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "-Email: ${widget.email}",
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "-Phone: ${widget.phone}",
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "-Birth day: ${widget.birth}",
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
  