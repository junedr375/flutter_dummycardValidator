import 'package:dummycard/Widget/widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String cardNumber;
  String expiry;
  String securityCode;
  String firstName;
  String lastName;

  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Credit Card Input Exercise'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 0.90,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              SizedBox(height: 20),
              Container(
                height: 80,
                width: MediaQuery.of(context).size.width - 40,
                child: TextFormField(
                  keyboardType: TextInputType.numberWithOptions(signed: true),
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 2)),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 2)),
                    focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 2)),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.yellow[800], width: 2)),
                    labelText: 'Card number',
                    labelStyle: myHintTextStyle(),
                  ),
                  validator: (value) => (value.isEmpty || value.length != 16
                      ? 'Enter Correct 16 Digit Card Number'
                      : null),
                  textAlign: TextAlign.start,
                  onChanged: (value) {
                    setState(() {
                      cardNumber = value;
                    });
                  },
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width * 0.50 - 30,
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.green, width: 2)),
                        focusedErrorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.red, width: 2)),
                        errorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.red, width: 2)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.yellow[800], width: 2)),
                        labelText: 'MM/YY',
                        labelStyle: myHintTextStyle(),
                      ),
                      validator: (value) => (value.isEmpty || value.length != 5
                          ? 'Enter Correct expiry'
                          : null),
                      textAlign: TextAlign.start,
                      onChanged: (value) {
                        setState(() {
                          expiry = value;
                        });
                        if (expiry.length == 2) {
                          expiry = expiry + '/';
                        }
                      },
                    ),
                  ),
                  Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width * 0.50 - 30,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.green, width: 2)),
                        focusedErrorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.red, width: 2)),
                        errorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.red, width: 2)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.yellow[800], width: 2)),
                        labelText: 'Security code',
                        labelStyle: myHintTextStyle(),
                      ),
                      validator: (value) => (value.isEmpty || value.length != 3
                          ? 'Enter Correct Security Code'
                          : null),
                      textAlign: TextAlign.start,
                      onChanged: (value) {
                        setState(() {
                          securityCode = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width * 0.50 - 30,
                    child: TextFormField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.green, width: 2)),
                        focusedErrorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.red, width: 2)),
                        errorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.red, width: 2)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.yellow[800], width: 2)),
                        labelText: 'First Name',
                        labelStyle: myHintTextStyle(),
                      ),
                      validator: (value) =>
                          (value.isEmpty ? '*Required' : null),
                      textAlign: TextAlign.start,
                      onChanged: (value) {
                        setState(() {
                          firstName = value;
                        });
                      },
                    ),
                  ),
                  Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width * 0.50 - 30,
                    child: TextFormField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.green, width: 2)),
                        focusedErrorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.red, width: 2)),
                        errorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.red, width: 2)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.yellow[800], width: 2)),
                        labelText: 'Last Name',
                        labelStyle: myHintTextStyle(),
                      ),
                      validator: (value) =>
                          (value.isEmpty ? '*Required' : null),
                      textAlign: TextAlign.start,
                      onChanged: (value) {
                        setState(() {
                          lastName = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width - 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.lightGreen[700]),
                child: GestureDetector(
                  child: Center(
                    child: Text(
                      'SUBMIT PAYMENT',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                  onTap: () {
                    final FormState form = _formKey.currentState;
                    if (_formKey.currentState.validate()) {
                      form.save();
                      try {
                        String msg = "Payment Successful";
                        _showMyDialog(msg);
                      } catch (e) {
                        print(e.message);
                      }
                    }
                  },
                ),
              ),
              SizedBox(
                height: 300,
              ),
              Center(
                child: Text(
                  'Created By Juned Raza',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _showMyDialog(String msg) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(msg),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          actions: <Widget>[
            FlatButton(
              child: Center(
                child: Text(
                  'Back',
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
