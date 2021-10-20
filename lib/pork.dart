import 'package:flutter/material.dart';

class Pork extends StatelessWidget {
  final String titleText;
  final String subtitleText;
  final String descriptionText;
  final String newimage;
  Pork(this.titleText, this.subtitleText, this.descriptionText, this.newimage);
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
              style: TextStyle(color: Colors.blue[100]),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(16.0),
          // ),
          Image.asset(
            newimage,
            // height: ,
          ),

          Text(
            descriptionText,
            style: TextStyle(color: Colors.blue[900]),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                // textColor: const Color(0xFF6200EE),

                onPressed: () {
                  // Perform some action
                },
                child: const Text('Order Now'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
