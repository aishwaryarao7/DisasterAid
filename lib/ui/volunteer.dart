import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './details.dart';

class Volunteer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Volunteer Form',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Volunteer Form'),
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
                      hintText: 'Enter your first and last name',
                      labelText: 'Name',
                    ),
                  ),
                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.calendar_today),
                      hintText: 'Enter your date of birth',
                      labelText: 'Dob',
                    ),
                    keyboardType: TextInputType.datetime,
                  ),
                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.phone),
                      hintText: 'Enter a phone number',
                      labelText: 'Phone',
                    ),
                    keyboardType: TextInputType.phone,
                    inputFormatters: [
                      WhitelistingTextInputFormatter.digitsOnly,
                    ],
                  ),
                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.email),
                      hintText: 'Enter a email address',
                      labelText: 'Email',
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.home),
                      hintText: 'Enter your address',
                      labelText: 'Address',
                    ),
                  ),
                  new Container(
                      child: new RaisedButton(
                    child: Text('Submit'),
                    color: Colors.blue,
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (_) => new AlertDialog(
                                title: new Text("Disaster Volunteer"),
                                content: new Text("Submitted Successfully"),
                              ));
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => new Details()));
                    },
                  )),
                  new Container(
                      child: new RaisedButton(
                          child: Text('Back'),
                          color: Colors.blue,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => new Details()));
                          })),
                ],
              ))),
    );
  }
}
