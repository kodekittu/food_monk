import 'package:flutter/material.dart';

class SharePage extends StatefulWidget {
  @override
  _SharePageState createState() => _SharePageState();
}

class _SharePageState extends State<SharePage> {
  @override
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

          SizedBox(height: data.size.height * 0.02),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Row(children: <Widget>[
              Column(children: [0, 1, 2, 3, 4, 5, 6,7,8].map((int index) =>
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
                  child: Text("1",style: TextStyle(
                      color: Colors.black,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("2", style: TextStyle(
                      color: Colors.black,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("3", style: TextStyle(
                      color: Colors.black,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("1",style: TextStyle(
                      color: Colors.black,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("2", style: TextStyle(
                      color: Colors.black,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("3", style: TextStyle(
                      color: Colors.black,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("1",style: TextStyle(
                      color: Colors.black,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("2", style: TextStyle(
                      color: Colors.black,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("3", style: TextStyle(
                      color: Colors.black,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold
                  ),),
                ),
              ],),
            ],),
          ),
          SizedBox(
            width: data.size.width * 0.65,
            child: RaisedButton(
              color: Colors.white,
              padding: const EdgeInsets.all(8.0),
              child: Text("Submit".toUpperCase(), style: TextStyle(fontSize: 24),),
              onPressed: () => {},// Navigator.pushNamed(context, detailRoute),
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
