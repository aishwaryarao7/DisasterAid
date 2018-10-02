import 'package:flutter/material.dart';
import './volunteer.dart';
import './products.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Donate',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Donate'),
        ),
        body: BodySection,
      ),
    );
  }

  Widget BodySection = Container(
    alignment: Alignment.center,
    child: Column(
      children: <Widget>[
        OrgImage(),
        Title(),
        DonateButton(),
        BodyText(),
      ],
    ),
  );
}

class Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              'Hurricane Florence',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DonateButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      child: new ButtonBar(
        alignment: MainAxisAlignment.center,
        children: <Widget>[
          new RaisedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => new Products()
              ));
            },
            color: Colors.blue,
            child: Text("Donate"),
          ),
          new RaisedButton(
            onPressed: () {
               Navigator.push(context, MaterialPageRoute(
                builder: (context) => new Volunteer()
              ));
            },
            color: Colors.blue,
            child: Text("Volunteer"),
          ),
        ],
      ),
    );
  }
}

class OrgImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage img1 = AssetImage(
        '/Users/aishwaryarao/Documents/flutter project/new_app/lib/images/profile.jpg');
    Image image = Image(
      image: img1,
      width: 600.0,
      height: 240.0,
      fit: BoxFit.cover,
    );
    return Container(
      child: image,
    );
  }
}

class BodyText extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text('Emergency supplies help people in the immediate aftermath of a disaster and in the days and weeks that follow. Our comfort kits contain basic personal supplies needed in the aftermath of a disaster, such as a toothbrush, deodorant and shampoo. Other emergency supplies could include tarps, rakes, shovels, and trash bags to help people clean up their homes and return to normalcy. Emergency supplies can be handed out at convenient distribution centers or from an emergency response vehicle in affected areas.',
            style: TextStyle(fontWeight: FontWeight.bold),),
          ),
        ],
      ),
    );
  }

}