import 'package:flutter/material.dart';
import 'package:foodmonk/router.dart';
import 'package:foodmonk/screens/screen_5.dart';

class QuestionsPage extends StatefulWidget {
  @override
  _QuestionsPageState createState() => _QuestionsPageState();
}

class _QuestionsPageState extends State<QuestionsPage> {

  var _resController = TextEditingController();
  bool _cb1 = false;
  bool _cb2 = false;
  bool _cb3 = false;
  bool _cb4 = false;
  bool _cb5 = false;
  bool _cb6 = false;
  bool _cb7 = false;
  int res = 0;
  String zone;
  Color col;

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
            ),
        ),
        child: SingleChildScrollView(
          child: Column(children: <Widget>[
            SizedBox(height: data.size.height * 0.06),
            Text('Answer some questions', style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.bold
            ),),
            SizedBox(height: data.size.height * 0.02),
            Row(children: <Widget>[
              Checkbox(
                onChanged: (bool value){
                  setState(() {
                    this._cb1 = value;
                    if(value == true){
                      res++;
                    }else{
                      res--;
                    }
                  });
                },
                value: this._cb1,
              ),
              SizedBox(width: data.size.width * 0.01),
              Container(
                width: data.size.width * 0.72,
                child: Text("Do you have fever?", style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w300
                ),),
              ),
            ],
            ),
            Row(children: <Widget>[
              Checkbox(
                onChanged: (bool value){
                  setState(() {
                    this._cb2 = value;
                    if(value == true){
                      res++;
                    }else{
                      res--;
                    }
                  });
                },
                value: this._cb2,
              ),
              SizedBox(width: data.size.width * 0.01),
              Container(
                width: data.size.width * 0.72,
                child: Text("Do you have dry cough?", style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w300
                ),),
              ),
            ],
            ),
            Row(children: <Widget>[
              Checkbox(
                onChanged: (bool value){
                  setState(() {
                    this._cb3 = value;
                    if(value == true){
                      res++;
                    }else{
                      res--;
                    }
                  });
                },
                value: this._cb3,
              ),
              SizedBox(width: data.size.width * 0.01),
              Container(
                width: data.size.width * 0.72,
                child: Text("Do you get easily tired these days?", style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w300
                ),),
              ),
            ],
            ),
            Row(children: <Widget>[
              Checkbox(
                onChanged: (bool value){
                  setState(() {
                    this._cb4 = value;
                    if(value == true){
                      res++;
                    }else{
                      res--;
                    }
                  });
                },
                value: this._cb4,
              ),
              SizedBox(width: data.size.width * 0.01),
              Container(
                width: data.size.width * 0.72,
                child: Text("Are you experiencing shortness of breath?", style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w300
                ),),
              ),
            ],
            ),
            SizedBox(height: data.size.height * 0.01),
            Row(children: <Widget>[
              Checkbox(
                onChanged: (bool value){
                  setState(() {
                    this._cb5 = value;
                    if(value == true){
                      res++;
                    }else{
                      res--;
                    }
                  });
                },
                value: this._cb5,
              ),
              SizedBox(width: data.size.width * 0.01),
              Container(
                width: data.size.width * 0.72,
                child: Text("Do you have any of the life threatening symptoms from the following- Altered Sensorium, Chest Pain, Blue colored lips or face.", style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w300
                ),),
              ),
            ],
            ),
            SizedBox(height: data.size.height * 0.01),
            Row(children: <Widget>[
              Checkbox(
                onChanged: (bool value){
                  setState(() {
                    this._cb6 = value;
                    if(value == true){
                      res++;
                    }else{
                      res--;
                    }
                  });
                },
                value: this._cb6,
              ),
              SizedBox(width: data.size.width * 0.01),
              Container(
                width: data.size.width * 0.72,
                child: Text("Have you travelled from abroad in the last 14 days?", style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w300
                ),),
              ),
            ],
            ),
            SizedBox(height: data.size.height * 0.01),
            Row(children: <Widget>[
              Checkbox(
                onChanged: (bool value){
                  setState(() {
                    this._cb7 = value;
                    if(value == true){
                      res++;
                    }else{
                      res--;
                    }
                  });
                },
                value: this._cb7,
              ),
              SizedBox(width: data.size.width * 0.01),
              Container(
                width: data.size.width * 0.72,
                child: Text("Do you have any of these diseases- diabetes, high blood pressure, kidney/ heart or lung disease and stroke?", style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w300
                ),),
              ),
            ],
            ),
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
                      print(res);
                      if(res == 0){
                        zone = "green";
                        col = Colors.green;
                      }else if(res>=3){
                        zone = "red";
                        col = Colors.red;
                      }else{
                        zone = "yellow";
                        col = Colors.yellow;
                      }
                      setState(() {
                        _resController.text = zone;
                      });
                      var route = new MaterialPageRoute(
                        builder: (BuildContext context) =>
                         ResultPage(value: _resController.text, col: col,),
                      );
                      Navigator.pushNamed(context, resultRoute);
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
      ),
    );
  }
}
