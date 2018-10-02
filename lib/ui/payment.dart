import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './home.dart';
import './cart.dart';


class Payments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Make Payment',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Make Payment'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  List<String> _colors = <String>['', 'red', 'green', 'blue', 'orange'];
  List<String> _months = <String>['Jan', 'Feb', 'March'];
  List<String> _years = <String>['2018', '2019', '2020'];
  String _color = '';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new SafeArea(
          top: false,
          bottom: false,
          child: new Form(
              key: _formKey,
              autovalidate: true,
              child: new ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                children: <Widget>[
                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.person),
                      labelText: 'Name on Card',
                    ),
                  ),
                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.credit_card),
                      labelText: 'Card Number',
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      WhitelistingTextInputFormatter.digitsOnly,
                    ]
                  ),
                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.calendar_today),
                      hintText: 'MM/YYYY',
                      labelText: 'Expiration Date',
                    ),
                  ),
                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.email),
                      labelText: 'Email',
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  new Container(
                      child: new RaisedButton(
                        child: const Text('Submit'),
                        color: Colors.blue,
                        onPressed: (){
                          showDialog(
                              context: context,
                              builder: (_) => new AlertDialog(
                                    title: new Text("Disaster Volunteer"),
                                    content: new Text("Submitted Successfully"),
                                  ));
                          Navigator.push(context, MaterialPageRoute(
                          builder: (context) => new Home()
                          ));
                        },
                      )),

                  new Container(
                      child: new RaisedButton(
                        child: const Text('Back'),
                        color: Colors.blue,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(
                        builder: (context) => new Cart()
              ));
                        },
                      )),
                ],
              ))),
    );
  }
}


