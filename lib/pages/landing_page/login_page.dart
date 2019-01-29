import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage(this.goToSignupPage);
  final VoidCallback goToSignupPage;

  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.greenAccent,
      body: new Container(
        child: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return new Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          colorFilter: new ColorFilter.mode(
              Colors.black.withOpacity(0.15), BlendMode.dstATop),
          image: AssetImage('assets/images/landing_page_bg.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
