import 'package:flutter/material.dart';
import 'package:foodmonk/router.dart';

class LanguagePage extends StatefulWidget {
  @override
  _LanguagePageState createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {

  int _radioVal = 0;

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
          child: Column(children: <Widget>[
            SizedBox(height: data.size.height * 0.22),
            Text('Choose your Language', style: TextStyle(
                color: Colors.black,
                fontSize: 30.0,
                fontWeight: FontWeight.bold
            ),),
            SizedBox(height: data.size.height * 0.02),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Row(children: <Widget>[
                Column(children: [0, 1, 3].map((int index) =>
                    Radio<int>(
                      value: index,
                      materialTapTargetSize: MaterialTapTargetSize.padded,
                      activeColor: Colors.amberAccent,
                      groupValue : this._radioVal,
                      onChanged: (int value){
                        setState(() => this._radioVal = value);
                      },
                    )).toList(),
                ),
                Column(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("   English",style: TextStyle(
                        color: Colors.black,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Hindi", style: TextStyle(
                        color: Colors.black,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Other", style: TextStyle(
                        color: Colors.black,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                ],),
              ],),
            ),
            SizedBox(
              width: data.size.width * 0.55,
              child: RaisedButton(
                elevation: 30,
                color: Colors.white,
                padding: const EdgeInsets.all(8.0),
                child: Text("NEXT".toUpperCase(), style: TextStyle(fontSize: 24),),
                onPressed: () => Navigator.pushNamed(context, detailRoute),
                splashColor: Colors.amber,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)
                ),
              ),
            ),
          ],),
    ),
    );
  }
}
