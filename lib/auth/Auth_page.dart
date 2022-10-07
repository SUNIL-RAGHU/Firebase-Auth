import 'package:firebasetutorial/Pages/login_page.dart';
import 'package:flutter/material.dart';

import '../Pages/register_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool showLoginPage = true;

  void tooglescreens() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(ShowRegisterPage: tooglescreens);
    } else {
      return RegisterPage(showLoginPage: tooglescreens);
    }
  }
}
