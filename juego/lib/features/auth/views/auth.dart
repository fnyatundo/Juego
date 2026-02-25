import 'package:flutter/material.dart';
import 'package:juego/features/Navigation/nav_bar.dart';
import 'package:juego/features/home/home.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Image.asset(
                  'assets/images/soccer-field.png',
                  height: 250,
                  width: 150,
                  fit: BoxFit.contain,
                ),
              ),
              OutlinedButton.icon(
                style: ButtonStyle(
                  padding: WidgetStatePropertyAll(
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
                  ),
                  side: WidgetStatePropertyAll(
                    BorderSide(color: Colors.grey.shade400, width: 1.2),
                  ),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  backgroundColor: WidgetStatePropertyAll(Colors.white),
                  overlayColor: WidgetStatePropertyAll(Colors.grey),
                ),
                icon: Image.asset(
                  'assets/images/google_logo.png',
                  height: 28,
                  width: 28,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => NavBar()),
                  );
                },
                label: Text(
                  'Sign in with Google',
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                ),
              ),
              SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
