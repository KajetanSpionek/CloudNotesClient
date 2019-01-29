import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage(this.goToSignupPage);
  final VoidCallback goToSignupPage;

  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = new GlobalKey<FormState>();
  String _password;
  String _email;

  bool _validateAndSave() {
    final form = _formKey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
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
      child: new ListView(
        padding: EdgeInsets.only(left: 24.0, right: 24.0, top: 96.0),
        children: <Widget>[
          _buildLogo(),
          _addHorizontalPadding(50.0),
          _buildLoginForm(),
        ],
      ),
    );
  }

  Widget _buildLogo() {
    return new Hero(
        tag: 'logo-hero',
        child: new CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 96.0,
          child: Image.asset('assets/images/landing_page_logo.png'),
        ));
  }

  Widget _buildLoginForm() {
    return new Form(
      key: _formKey,
      child: new Column(
        children: <Widget>[
          new TextFormField(
            keyboardType: TextInputType.emailAddress,
            autofocus: false,
            obscureText: false,
            onSaved: (value) => _email = value,
            decoration: InputDecoration(
              hintText: 'Email',
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
            ),
          ),
          _addHorizontalPadding(30.0),
          new TextFormField(
            keyboardType: TextInputType.text,
            autofocus: false,
            obscureText: true,
            onSaved: (value) => _password = value,
            decoration: InputDecoration(
              hintText: 'Password',
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
            ),
          ),
          _addHorizontalPadding(30.0),
          new RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32.0),
            ),
            onPressed: () => _validateAndSave(),
            padding: EdgeInsets.only(top: 20.0, bottom: 20.0, right: 50.0, left: 50.0),
            color: Colors.lightBlueAccent,
            child: Text('Log In', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }

  Widget _addHorizontalPadding(num value) {
    return new Padding(
      padding: new EdgeInsets.only(top: value),
    );
  }
}
