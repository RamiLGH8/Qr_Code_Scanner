import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/splash.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 230,
                ),
                child: Center(
                    child: Image(image: AssetImage("assets/images/QR.png"))),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'Get Started',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 40),
                child: Text(
                  'Go and enjoy our features for free and make your life easy with us.',
                  textAlign: TextAlign.center,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 30,top:70),
                    child: IconButton.filled(
                        onPressed: () {
                          Navigator.pushNamed(context, '/qr_scan');
                        },
                          icon: Icon(Icons.arrow_circle_right, size: 40, color: Colors.white,)),
                  ),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
