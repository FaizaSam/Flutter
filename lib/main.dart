import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    title: 'Stateful app example',
    home: FavouriteCity(),
  ));
}

class FavouriteCity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FavouriteCityState();
  }
}

class _FavouriteCityState extends State<FavouriteCity> {
  String nameCity = "";
  @override
  Widget build(BuildContext context) {
    debugPrint("Favourite city Widget is created");
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful App Example'),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              onSubmitted: (String userInput) {
                setState(() {
                  debugPrint(
                      "Set State is called,This tells the widget to redraw the favourite city");
                  nameCity = userInput;
                });
              },
            ),
            Padding(
                padding: EdgeInsets.all(30.0),
                child: Text(
                  "Your best City is $nameCity",
                  style: TextStyle(fontSize: 20.0),
                ))
          ],
        ),
      ),
    );
  }
}
