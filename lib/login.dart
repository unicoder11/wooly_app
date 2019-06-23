import 'package:flutter/material.dart';
import 'package:wooly_app/sign_up.dart';
import 'home.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _bColor = Color.fromRGBO(247, 249, 252, 1.0);
    final _tColor = Color.fromRGBO(216, 31, 114, 100);
    final _titleColor = Color.fromRGBO(83, 14, 45, 1.0);
    return Scaffold(
      backgroundColor: _bColor,
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            SizedBox(
              height: 120,
            ),
            Center(child: Image.asset("assets/images/logo1x.png")),
            SizedBox(
              height: 120.0,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(55.0, 0.0, 45.0, 0),
              child: Text(
                'Sign in',
                //textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 24.0,
                    fontFamily: 'Aileron',
                    fontWeight: FontWeight.bold,
                    color: _titleColor),
              ),
            ),
            Container(
              decoration: new BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.08),
                      blurRadius: 30.0,
                      spreadRadius: 0.0,
                      offset: Offset(0.0, 8.0))
                ],
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Row(
                children: <Widget>[
                  new Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(45.0, 25.0, 45, 0.0),
                      child: new TextFormField(
                        autofocus: false,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Aileron',
                          color: _tColor,
                        ),
                        decoration: InputDecoration(
                          hintText: 'Enter your Email',
                          fillColor: _bColor,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide.none,
                          ),
                          hintStyle: TextStyle(color: Colors.black38),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        validator: (val) {
                          if (val.length == 0) {
                            return "Email cannot be empty";
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: new BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.08),
                      blurRadius: 30.0,
                      spreadRadius: 0.0,
                      offset: Offset(0.0, 8.0))
                ],
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Row(
                children: <Widget>[
                  new Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(45.0, 20.0, 45, 15.0),
                      child: new TextFormField(
                        obscureText: true,
                        autofocus: false,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Aileron',
                          color: _tColor,
                        ),
                        decoration: InputDecoration(
                          hintText: 'Enter your Password',
                          fillColor: _bColor,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide.none,
                          ),
                          hintStyle: TextStyle(color: Colors.black38),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        validator: (val) {
                          if (val.length == 0) {
                            return "Password cannot be empty";
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                  Center(
                    child: MaterialButton(
                      color: _tColor,
                      minWidth: 325.0,
                      height: 58.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0)
                      ),
                      child: Text('LOGIN',
                      style: new TextStyle(
                        color: Colors.white,
                      ),
                    ),
                      onPressed: (){ 

                      Navigator.push(context, 
                       MaterialPageRoute(builder: (context) => Home())
                      },
                  ),
                  ),],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: RaisedButton(
                  color: _bColor,
                  elevation: 0,
                  child: Text('Forgot your password?',
                      style: new TextStyle(
                        fontFamily: 'Aileron',
                        fontSize: 16.0,
                        color: _tColor,
                      )
                  ),
                  onPressed: () {


                  },
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 10),
              child: RaisedButton(
                color: _bColor,
                elevation: 0,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                  Text('Don’t have an account?', style: TextStyle(
                    fontFamily: 'Aileron',
                    fontSize: 16.0,
                    color: _tColor),
                  ),
                    Text(' Create one', style: TextStyle(
                        fontWeight: FontWeight.bold,
                      fontFamily: 'Aileron',
                      fontSize: 16.0,
                      color: _tColor,
                    ),
                ),],
                ),
                onPressed: () {
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => SignUp()),
                  );

                },
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
          ]),
    );
  }
}
