import 'package:flutter/material.dart';
import 'package:tuolewe/subfolder/categories.dart';
import 'package:tuolewe/subfolder/products.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false, // make debug banner disappear
    home: HomePage(),
  ));
}

// Stateful widget for my static layout
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // styling the top of my app
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.orange,
        title: Text(
          "Tuolewe 💍",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black),
        ),
        // adding my icons to my appbar
        actions: [
          // search icon
          new IconButton(
              icon: Icon(Icons.search), color: Colors.black, onPressed: () {}),
          // notification icon
          new IconButton(
              icon: Icon(Icons.notifications),
              color: Colors.black,
              onPressed: () {})
        ],
      ),
      //drawer icon
      drawer: new Drawer(),

      // app body
      body: new ListView(
        children: [
          // padding widget
          new Padding(
              padding: const EdgeInsets.all(15.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: new Text(
                  '️Categories 🛒',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              )),
          // horizontal list view
          HorizontalList(),

          new Padding(
              padding: const EdgeInsets.all(20.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: new Text(
                  'Hot Sale!!',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              )),

          //  grid view
          Container(
            height: 600.0,
            child: Products(),
          )
        ],
      ),

      // Bottom Nav Bar
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          // home icon
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.orange,
            ),
            label: 'Home',
          ),

          // cart icon
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.orange,
            ),
            label: 'My Cart',
          ),

          //favorites icon
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: Colors.orange,
            ),
            label: 'Favorites',
          ),
        ],
      ),
    );
  }
}
