import 'package:flutter/material.dart';
import './details.dart';

class Home extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Disaster Aid'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /*int _counter = 0;
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }*/

  @override
  Widget build(BuildContext context) {

    List<Widget> list = <Widget>[
      ListTile(
        title: Text('Hurricane Florence',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
        subtitle: Text('Category 1 Storm in North Carolina with forecasts predicting devastating flooding and storm surge.'),
        leading: Icon(
          Icons.add_alert,
          color: Colors.red[500],
        ),
        onTap: (){
          Navigator.push(context, MaterialPageRoute(
                builder: (context) => new Details()
              ));
              }
      ),
      ListTile(
        title: Text('Kerela Floods',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
        subtitle: Text('Over 75 Dead in Flooding Across Kerala.'),
        leading: Icon(
          Icons.add_alert,
          color: Colors.blue[500],
        ),
        onTap: (){
          Navigator.push(context, MaterialPageRoute(
                builder: (context) => new Details()
              ));
        },
      ),
      ListTile(
        title: Text('Super Typhoon Mangkhut',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
        subtitle: Text('Strongest Storm in Cagayan province,Philippines.'),
        leading: Icon(
          Icons.add_alert,
          color: Colors.red[500],
        ),
        onTap: (){
          Navigator.push(context, MaterialPageRoute(
                builder: (context) => new Details()
              ));
        },
      ),
      ListTile(
        title: Text('Sri Lankan Flood',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
        subtitle: Text('Heavy rains in Sri Lanka has affected 68,343 persons in 18 districts.'),
        leading: Icon(
          Icons.add_alert,
          color: Colors.blue[500],
        ),
        onTap: (){
          Navigator.push(context, MaterialPageRoute(
                builder: (context) => new Details()
              ));
        },
      ),
      ListTile(
        title: Text('The Unicorn Fire',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
        subtitle: Text('Wildfire burning in Yosemite National Parks Wilderness.'),
        leading: Icon(
          Icons.add_alert,
          color: Colors.yellow[500],
        ),
        onTap: (){
          Navigator.push(context, MaterialPageRoute(
                builder: (context) => new Details()
              ));
        },
      )
    ];



    return new Scaffold(
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: new Text(widget.title),
      ),
      body:
      ListView(
        children: list,
      ),
      /*Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child:
        new DisasterList(items:Disasters.disaster),

      *//*  new Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug paint" (press "p" in the console where you ran
          // "flutter run", or select "Toggle Debug Paint" from the Flutter tool
          // window in IntelliJ) to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'You have pushed the button  times:',
            ),
            ListView(
              children: list,
            ),
          ],
        ),*//*
      ),*/
      /* floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.*/
    );
  }
}
