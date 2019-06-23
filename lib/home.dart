import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  final _bColor = Color.fromRGBO(247, 249, 252, 1.0);
  final _tColor = Color.fromRGBO(216, 31, 114, 100);
  final _titleColor = Color.fromRGBO(83, 14, 45, 1.0);
  final _buttonColor = Color.fromRGBO(243, 238, 240, 100);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        iconTheme: IconThemeData(color: _tColor),
      backgroundColor: Colors.transparent,
      elevation: 0,
      
      ),
      drawer: Drawer(
        
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
         children: <Widget>[
           SizedBox(height: 220.0,)
           Container(
             child: Stack(
               children: <Widget>[
                 Center(child: Image.asset("assets/images/logo_background.png")),
               Padding(
              padding: const EdgeInsets.fromLTRB(55.0, 220.0, 45.0, 0),
              child: Text(
                'HOME',
                style: TextStyle(
                    fontSize: 24.0,
                    fontFamily: 'Aileron',
                    fontWeight: FontWeight.bold,
                    color: _titleColor),

              ),
            ),
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
                      padding: const EdgeInsets.fromLTRB(45.0, 25.0, 45, 20.0),
                      child: new TextFormField(
                        autofocus: false,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Aileron',
                          color: _tColor,
                        ),
                        decoration: InputDecoration(
                          hintText: 'Enter confirmation code',
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
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                  Center(
                    child: MaterialButton(
                      color: _buttonColor,
                      minWidth: 325.0,
                      height: 58.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0)
                      ),
                      child: Text('CONFIRM',
                      style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        color: _tColor,
                      ),
                    ),
                      onPressed: (){ 
                        Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => Confirm()),
                  );

                      },
                  ),
                  ),],
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
          ]

      ),
    );
  }
}