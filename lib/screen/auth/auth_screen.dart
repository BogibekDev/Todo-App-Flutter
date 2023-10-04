import 'package:flutter/material.dart';
import 'package:todo/screen/auth/login_screen.dart';
import 'package:todo/screen/auth/signup_screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool isLogin = false;

  void to() {
    setState(() {
      isLogin = !isLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    return isLogin ? LoginScreen(to) : SignUpScreen(to);
  }
}
