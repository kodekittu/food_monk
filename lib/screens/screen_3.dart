import 'package:flutter/material.dart';
import 'package:foodmonk/router.dart';

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {

  final _formkey = GlobalKey<FormState>();
  final fullNameController =TextEditingController();
  final ageController =TextEditingController();
  final sexController =TextEditingController();
  final cityController =TextEditingController();

  @override
  Widget build(BuildContext context) {
    MediaQueryData data = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 50, bottom: 40),
        height: double.infinity ,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Theme.of(context).primaryColor,
                  Theme.of(context).accentColor,
                ]
            )
        ),
        child: Form(
          key: _formkey,
          child: Container(
            color: Colors.white10,
            padding: EdgeInsets.all(6),
            child: SingleChildScrollView(padding: EdgeInsets.all(4),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(child: Text('Enter your Details',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),),
                  Padding(padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 4),
                    child: TextFormField(
                      maxLines: 1,
                      validator: (value) => value.isEmpty ? "First Name can't be empty" : null,
                      onSaved: (value) => fullNameController.text = value.trim(),
                      controller: fullNameController,
                      decoration: InputDecoration(
                        labelText: "Full Name", hasFloatingPlaceholder: true,
                      ),
                    ),
                  ),
                  Padding(padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 4),
                    child: TextFormField(
                      maxLines: 1,
                      validator: (value) => value.isEmpty ? "Age can't be empty" : null,
                      onSaved: (value) => ageController.text = value.trim(),
                      controller: ageController,
                      decoration: InputDecoration(
                        labelText: "Age", hasFloatingPlaceholder: true,
                      ),
                    ),
                  ),
                  Padding(padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 4),
                    child: TextFormField(
                      controller: sexController,
                      maxLines: 1,
                      validator: (value) => value.isEmpty ? "Sex can't be empty" : null,
                      onSaved: (value) => sexController.text = value.trim(),
                      decoration: InputDecoration(
                        labelText: "Sex", hasFloatingPlaceholder: true,
                      ),
                    ),
                  ),
                  Padding(padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 4),
                    child: TextFormField(
                      maxLines: 1,
                      validator: (value) => value.isEmpty ? "City can't be empty" : null,
                      onSaved: (value) => cityController.text = value.trim(),
                      controller: cityController,
                      decoration: InputDecoration(
                        hintText: 'City',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Center(
                      child: SizedBox(
                        width: data.size.width * 0.55,
                        child: RaisedButton(
                          color: Colors.white,
                          padding: const EdgeInsets.all(8.0),
                          splashColor: Colors.amber,
                          child: Text("SUBMIT".toUpperCase(),
                            style: TextStyle(fontSize: 24),
                          ),
                          onPressed: () { // => Navigator.pushNamed(context, paymntRoute),
                            if(_formkey.currentState.validate()) {
                                Navigator.pushNamed(context, quesRoute);
                            }
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
        ),
      ),
    );
  }
}
