import 'package:flutter/material.dart';
import 'package:foodmonk/router.dart';

class ResultPage extends StatefulWidget {
  final String value;
  final Color col;
  ResultPage({Key key, this.value, this.col}) : super(key: key);
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {

  @override
    Widget build(BuildContext context) {
      MediaQueryData data = MediaQuery.of(context);
      return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          padding: const EdgeInsets.all(16.0),
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Theme
                        .of(context)
                        .primaryColor,
                    Theme
                        .of(context)
                        .accentColor,
                  ]
              )
          ),
          child: Column(children: <Widget>[
            SizedBox(height: data.size.height * 0.06),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Center(
                child: SizedBox(
                  width: data.size.width * 0.8,
                  height: data.size.height * 0.1,
                  child: RaisedButton(
                    elevation: 30,
                    color: Colors.white,
                    padding: const EdgeInsets.all(8.0),
                    splashColor: Colors.amber,
                    child: Text("see your result".toUpperCase(),
                      style: TextStyle(fontSize: 26),
                    ),
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: data.size.height * 0.02),
            CircleAvatar(
              backgroundColor: widget.col,
              maxRadius: 100,
            ),
            SizedBox(height: data.size.height * 0.04),
            Text("${widget.value}" + " ZONE".toUpperCase(),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Center(
                child: SizedBox(
                  width: data.size.width * 0.55,
                  child: RaisedButton(
                    elevation: 30,
                    color: Colors.white,
                    padding: const EdgeInsets.all(8.0),
                    splashColor: Colors.amber,
                    child: Text("NEXT".toUpperCase(),
                      style: TextStyle(fontSize: 24),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, shareRoute);
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)
                    ),
                  ),
                ),
              ),
            )
          ],),
        ),
      );
    }
}
