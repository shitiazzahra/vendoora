import 'package:e_commers/consts.dart'; // Pastikan textColor didefinisikan di sini
import 'package:e_commers/ui/splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FloShop());
}

class FloShop extends StatelessWidget {
  const FloShop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vendoora',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Muli',
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: textColor), // Pastikan textColor ada di consts.dart
          bodySmall: TextStyle(color: textColor),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
