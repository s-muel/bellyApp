import 'package:flutter/material.dart';

class Newappbar extends StatelessWidget {
  // const Newappbar({Key? key}) : super(key: key);
  final String title;
  Newappbar(this.title);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: AppBar(
        leading: Icon(Icons.menu),
        title: Text(title),
        actions: [
          Icon(Icons.favorite),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.search),
          ),
          Icon(Icons.more_vert),
        ],
        backgroundColor: Colors.deepOrangeAccent,
      ),
    );
  }
}
// class NewAppbar extends StatefulWidget {
//   const NewAppbar({Key? key}) : super(key: key);

//   @override
//   _AppbarState createState() => _AppbarState();
// }

// class _AppbarState extends State<NewAppbar> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: AppBar(
//         leading: Icon(Icons.menu),
//         title: Text('Page title'),
//         actions: [
//           Icon(Icons.favorite),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 16),
//             child: Icon(Icons.search),
//           ),
//           Icon(Icons.more_vert),
//         ],
//         backgroundColor: Colors.deepOrangeAccent,
//       ),
//     );
//   }
// }
