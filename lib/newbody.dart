import 'package:flutter/material.dart';

class Newcards extends StatelessWidget {
  final String titleText;
  final String subtitleText;
  final String descriptionText;
  final String newimage;
  //final Image;
  Newcards(
      this.titleText, this.subtitleText, this.descriptionText, this.newimage);
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.arrow_drop_down_circle),
            title: Text(titleText),
            subtitle: Text(
              subtitleText,
              style: TextStyle(color: Colors.blue[300]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
          ),
          //Image.asset('assets/card-sample-image.jpg'),
          //Image.network(newimage),
          Image.asset(newimage),

          Text(
            descriptionText,
            style: TextStyle(color: Colors.blue[900]),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.start,
            children: [
              ElevatedButton(
                // textColor: const Color(0xFF6200EE),
                onPressed: () {
                  // Perform some action
                },
                child: const Text('See More'),
              ),
              ElevatedButton(
                // textColor: const Color(0xFF6200EE),
                onPressed: () {
                  // Perform some action
                },
                child: const Text('Quick Order'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
