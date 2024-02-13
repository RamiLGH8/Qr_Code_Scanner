import 'package:flutter/material.dart';
import 'package:qr_scanner/pages/qr_scan.dart';
import 'package:qr_scanner/pages/splash_screen.dart';
import 'package:qr_scanner/pages/user_data.dart';
void main() {
  runApp(const QR_Scanner());
}

class QR_Scanner extends StatelessWidget {
  const QR_Scanner({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/user_data',
      routes: {
        '/': (context) => SplashScreen(),
        '/qr_scan': (context) => QrScan(),
        '/user_data':(context) => UserData(),
      },
    ) ;
  }
}
