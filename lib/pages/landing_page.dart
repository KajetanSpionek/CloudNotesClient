import 'package:flutter/material.dart';
import 'landing_page/login_page.dart';
import 'landing_page/signup_page.dart';

class LandingPage extends StatefulWidget {
  State createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  _goToLoginPage() {
    _controller.animateToPage(
      0,
      duration: Duration(milliseconds: 250),
      //curve: Curves.bounceOut,
      curve: Curves.fastOutSlowIn
    );
  }

  _goToSignupPage() {
    _controller.animateToPage(
      1,
      duration: Duration(milliseconds: 250),
      curve: Curves.fastOutSlowIn,
    );
  }

  Widget loginPage() {
    return new LoginPage(() => _goToSignupPage());
  }

  Widget signUpPage() {
    return new SignupPage();
  }

  PageController _controller =
      new PageController(initialPage: 0, viewportFraction: 1.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Container(
          height: MediaQuery.of(context).size.height,
          child: new PageView(
            physics: new AlwaysScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            controller: _controller,
            children: <Widget>[
              loginPage(),
              signUpPage()
            ],
          )),
    );
  }
}
