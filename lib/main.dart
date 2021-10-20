import 'package:flutter/material.dart';
import 'Pork.dart';
import 'newbody.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'fireBelly',
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: MyHomePage(title: 'Fire Belly'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.menu),
            title: Text(
              'Fire Belly',
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,

            automaticallyImplyLeading: false,
            //backgroundColor: Colors.orange,
            flexibleSpace: Container(
                //sm gradient for the appbar
                // decoration: BoxDecoration(
                //     gradient:
                //         LinearGradient(colors: [Colors.yellow, Colors.purple])),
                ),
            bottom: TabBar(
              indicatorColor: Colors.white,
              indicatorWeight: 5,
              labelColor: Colors.white,
              tabs: [
                Tab(text: 'HOME', icon: Icon(Icons.home)),
                Tab(text: 'PORK FIRE', icon: Icon(Icons.no_meals)),
                Tab(text: 'APONKYE FIRE', icon: Icon(Icons.feed)),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                  child: ListView(
                children: [
                  Newcards(
                      "Port Fire",
                      "Fired/ Grilled / Pork Stew/ Pork Soup",
                      "Order our Mini hot = 40 , Normal hot = 70 , Large = 100",
                      'assets/images/homeImg1.jpeg'),
                  //sm space between various cards
                  SizedBox(height: 20),
                  Newcards(
                      "Aponkye Fire",
                      "Fired/ Grilled / Goat Light Soup/ Goat Stew",
                      "description",
                      'assets/images/grill.gif'),
                  SizedBox(height: 20),
                  Newcards(
                      "Fire Stew",
                      "Vegetable Stew/ Tomato Stew / Chicken Stew/kontomire Stew",
                      "description",
                      'assets/images/homeImg3.jpg'),
                  SizedBox(height: 20),
                  Newcards(
                      "Chicken Fire",
                      "Fired/ Grilled / Chicken Light Soup/ Chicken Stew",
                      "description",
                      'assets/images/homeImg4.jpg'),
                ],
              )),
              Container(
                  child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 0.6,
                // childAspectRatio: MediaQuery.of(context).size.width /
                //     (MediaQuery.of(context).size.height / 2),
                children: [
                  Pork("Grilled-Pork Daddy", "Big Size ", "₵90.00",
                      'assets/images/homeImg4.jpg'),
                  Pork("Grilled-Pork Bachelor", "Medium Size", "₵50.00",
                      'assets/images/b_pork.jpg'),
                  Pork("Grilled-Pork Mini", "Small Size", "₵25.00",
                      'assets/images/mini.gif'),
                  Pork("Obolo-Pork Stew", "Family Size", "₵75.00",
                      'assets/images/stew1.jpg'),
                  Pork("Bossu-Port Stew", "Medium Size", "₵50.00",
                      'assets/images/p_maxi.jpg'),
                  Pork("Cutey-Pork Stew", "Small Size", "₵25.00",
                      'assets/images/p_maxi.jpg'),
                ],
              )),
              Center(
                  child: Text(
                'Coming Soon',
                style: TextStyle(fontSize: 50),
              )),
            ],
          ),
        ),
      );
}
