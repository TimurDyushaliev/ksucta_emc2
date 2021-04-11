import 'package:emc/view/sign_up_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TitlePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
            color: Colors.black,
            child: Text(
              'Войти',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () => Navigator.push(context,
                CupertinoPageRoute(builder: (context) => SignUpPage()))),
      ),
    );
  }
}
