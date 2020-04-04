import 'package:flutter/material.dart';
import 'package:foodmonk/router.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData data = MediaQuery.of(context);
    return Scaffold(
      resizeToAvoidBottomInset : false,
      body: Container(
        padding: const EdgeInsets.all(16.0),
        height: double.infinity ,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Theme.of(context).primaryColor,
                  Theme.of(context).accentColor,
                ]
            )
        ),
        child: Column(
          children: <Widget>[
            SizedBox(height: data.size.height * 0.22),
            Text("j d s d s sdc c s ca", style: TextStyle(
                color: Colors.white70,
                fontSize: 30.0,
                fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 35.0),
            TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(16.0),
                prefixIcon: Container(
                    padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                    margin: const EdgeInsets.only(right: 8.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            bottomLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0),
                            bottomRight: Radius.circular(10.0)
                        )
                    ),
                    child: Icon(Icons.person, )),
                hintText: "enter your email",
                hintStyle: TextStyle(color: Colors.white54),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none
                ),
                filled: true,
                fillColor: Colors.white.withOpacity(0.1),
              ),

            ),
            SizedBox(height: 10.0),
            TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(16.0),
                prefixIcon: Container(
                    padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                    margin: const EdgeInsets.only(right: 8.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            bottomLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0),
                            bottomRight: Radius.circular(10.0)
                        )
                    ),
                    child: Icon(Icons.lock,)),
                hintText: "enter your password",
                hintStyle: TextStyle(color: Colors.white54),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none
                ),
                filled: true,
                fillColor: Colors.white.withOpacity(0.1),
              ),
              obscureText: true,
            ),
            SizedBox(height: 30.0),
            SizedBox(
              width: double.infinity,
              child: RaisedButton(
                elevation: 30,
                color: Colors.white,
                padding: const EdgeInsets.all(8.0),
                child: Text("Login".toUpperCase(), style: TextStyle(fontSize: 24),),
                onPressed: () => Navigator.pushNamed(context, langRoute),
                splashColor: Colors.amber,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)
                ),
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  textColor: Colors.white70,
                  child: Text("Create Account".toUpperCase()),
                  onPressed: (){},
                ),
                Container(
                  color: Colors.white54,
                  width: 2.0,
                  height: 20.0,
                ),
                FlatButton(
                  textColor: Colors.white70,
                  child: Text("Forgot Password".toUpperCase()),
                  onPressed: (){},
                ),

              ],),
            SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}
