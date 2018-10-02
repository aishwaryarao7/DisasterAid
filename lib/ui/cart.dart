import 'package:flutter/material.dart';
import './payment.dart';
import './products.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Cart';
    return MaterialApp(
      title: title,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              trailing: Text('1'),
              title: Text('Food'),
            ),
            ListTile(
              trailing: Text('2'),
              title: Text('Water'),
            ),
            ListTile(
              trailing: Text('3'),
              title: Text('Clothes'),
            ),              
            
             new Container(
                      child: new RaisedButton(
                        child: const Text('Pay'),
                        color: Colors.blue,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(
                          builder: (context) => new Payments()
                          ));
                        },
                      )),
             new Container(
                      child: new RaisedButton(
                        child: const Text('Back'),
                        color: Colors.blue,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(
                          builder: (context) => new Products()
                          ));
                        },
                      )),
          ],
        ),
      ),
    );
  }
}