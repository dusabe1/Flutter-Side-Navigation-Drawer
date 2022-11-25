import 'package:flutter/material.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fluter App'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("User name"),
              accountEmail: Text("username@gmail.com"),
              currentAccountPicture: CircleAvatar(foregroundImage: AssetImage("profiles/abc.jpg"),
              ),
              otherAccountsPictures: [
                CircleAvatar(foregroundImage: AssetImage("images/profiles/abc.jpg")),
                CircleAvatar(foregroundImage: AssetImage("images/profiles/abc.jpg")),
              ],
            ),
            ListTile(leading: const Icon(Icons.home),title: const Text("Home"),onTap: (){},),
            ListTile(leading: const Icon(Icons.shopping_cart),title: const Text("Shop"),onTap: (){},),
            ListTile(leading: const Icon(Icons.favorite),title: const Text("Favorites"),onTap: (){},),
            const Padding(
              padding: EdgeInsets.all(14.0),
              child: Text("Labels"),
            ),
            ListTile(leading: const Icon(Icons.label),title: const Text("Red"),onTap: (){},),
            ListTile(leading: const Icon(Icons.label),title: const Text("Green"),onTap: (){},),
            ListTile(leading: const Icon(Icons.label),title: const Text("Blue"),onTap: (){},),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
        backgroundColor: Colors.black87,
        foregroundColor: Colors.yellow,
        // mini: true,
        // elevation: 0,
        // shape: BeveledRectangleBorder(
        //   borderRadius: BorderRadius.circular(20.0),
        //   side: BorderSide(color: Colors.blue,width: 10)
        // ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
