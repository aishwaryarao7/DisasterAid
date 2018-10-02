import 'package:flutter/material.dart';
import './cart.dart';

class Products extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final title = 'Donate';
    final key = new GlobalKey<ScaffoldState>();
    return new MaterialApp(
      title: title,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: key,
      appBar: AppBar(
      title: Text(title),
        actions: <Widget>[
          IconButton(icon: new Icon(Icons.shopping_cart),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                builder: (context) => new Cart()
              ));
              })
        ],
      ),
      body: new ListView(
        children: <Widget>[
          new ListTileItem(
            title: "Food",
          ),
          new Divider(height: 15.0,color: Colors.grey,),
          new ListTileItem(
            title: "Water",
          ),
          new Divider(height: 15.0,color: Colors.grey,),
          new ListTileItem(
            title: "Clothes",
          ),
          new Divider(height: 15.0,color: Colors.grey,),
          new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                  child: new Text('Add To Cart'),
                  color: Theme.of(context).accentColor,
                  elevation: 4.0,
                  splashColor: Colors.blueGrey,
                  onPressed: () {
                    key.currentState.showSnackBar(new SnackBar(
                    content: new Text("Items were added to cart"),
                    ));
                  },
                )
              ]
          )
        ]
      ),
    ));
  }
}
class ListTileItem extends StatefulWidget {
  String title;
  String test;
  ListTileItem({this.title});
  @override
  _ListTileItemState createState() => new _ListTileItemState();
}

class _ListTileItemState extends State<ListTileItem> {
  int _itemCount = 0;

  @override
  Widget build(BuildContext context) {
    return new ListTile(
      title: new Text(widget.title, style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0),),
      trailing: new Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          new IconButton(icon: new Icon(Icons.remove),
        onPressed: () => setState(() => _itemCount > 0 ? _itemCount-- : _itemCount == _itemCount),),
        new Text(_itemCount.toString(), style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0)),
        new IconButton(icon: new Icon(Icons.add),
            onPressed: () => setState(() => _itemCount++)),
        ],
      ),
    );
    
  }
}