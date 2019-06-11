import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: new Color.fromRGBO(247, 249, 252, 1.0),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 60,
            ),
            Image.asset("assets/images/logo1x.png"),
            SizedBox(
              height: 10.0,
            ),

            Text(
              'Sign in',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 25.0,
                  fontFamily: 'Aileron',
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(83, 14, 45, 1.0)),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white.withOpacity(0.5),
                  width: 0.1,
                ),
                borderRadius: BorderRadius.circular(5.0),
              ),
              margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Row(
                children: <Widget>[
                  new Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                  ),
                  Container(
                    height: 30.0,
                    width: 1.0,
                    color: Colors.white.withOpacity(0.5),
                    margin: const EdgeInsets.only(left: 00.0, right: 10.0),
                  ),
                  new Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: new BorderRadius.all(Radius.circular(5.0)),
                        ),

                        hintText: 'Enter your Email',
                        hintStyle: TextStyle(color: Colors.black),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ]),
    );
  }
}
