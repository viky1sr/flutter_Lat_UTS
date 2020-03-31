import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new MyApp(), debugShowCheckedModeBanner: false));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan UTS',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      initialRoute: '/Home',
      routes: <String, WidgetBuilder>{
        '/Home': (BuildContext context) => new HomePage(),
        '/Hal1Page': (BuildContext context) => new Hal1Page(),
        '/Hal2Page': (BuildContext context) => new Hal2Page(),
        '/Hal3Page': (BuildContext context) => new Hal3Page(),
      },
    );
  }
}

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountEmail: Text('vikymuhamad@gmail.com'),
            accountName: Text('Viky & Aditiya'),
            currentAccountPicture: CircleAvatar(
                child: new Icon(
                  Icons.person,
                  size: 50,
                )),
          ),
          ListTile(
            title: Text("Home"),
            leading: Icon(Icons.home),
            onTap: () {
              Navigator.popAndPushNamed(context, '/Home');
            },
          ),
          ListTile(
            title: Text("Halaman 1"),
            leading: Icon(Icons.work),
            onTap: () {
              Navigator.popAndPushNamed(context, '/Hal1Page');
            },
          ),
          ListTile(
            title: Text("Halaman 2"),
            leading: Icon(Icons.face),
            onTap: () {
              Navigator.popAndPushNamed(context, '/Hal2Page');
            },
          ),
          ListTile(
            title: Text("Halaman 3"),
            leading: Icon(Icons.group),
            onTap: () {
              Navigator.popAndPushNamed(context, '/Hal3Page');
            },
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        title: Text("Latihan UTS"),
      ),
      drawer: AppDrawer(),
      body: Center(
        child: Icon(Icons.home, size: 100),
      ),
    );
  }
}

class Hal1Page extends StatefulWidget {
  @override
  _Hal1PageState createState() => _Hal1PageState();
}

class _Hal1PageState extends State<Hal1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman 1"),
      ),
      drawer: AppDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.home,
              size: 100,
              color: Colors.redAccent,
            ),
            Text("Rumah adalah tempat yang dibutuhkan untuk berlindung sebagai kebutuhan primer. " +
                "Kebutuhan primer ini sering disebut juga sebagai kebutuhan papan.")
          ],
        ),
      ),
    );
  }
}

class Hal2Page extends StatefulWidget {
  @override
  _Hal2PageState createState() => _Hal2PageState();
}

class _Hal2PageState extends State<Hal2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Halaman 2"),
        ),
        drawer: AppDrawer(),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.face, size: 100, color: Colors.blueAccent),
                Text("Pada latihan UTS ini, aplikasi flutter " +
                    "android menggunakan halaman, menu drawer " +
                    "(menu sidebar), app bar dan gambar, buatlah sesuai" +
                    " gambar di bawah. Konten gambar, tulisan dan menu bebas " +
                    "sesuai keinginan dan selera masing-masing. Menu drawer " +
                    "diharuskan minimal memiliki 5 halaman yang dihitung termasuk home page. ")
              ]),
        ));
  }
}

class Hal3Page extends StatefulWidget {
  @override
  _Hal3PageState createState() => _Hal3PageState();
}

class _Hal3PageState extends State<Hal3Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman 3"),
      ),
      drawer: AppDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network("https://res.akdira.com/icons/lemon-256.png"),
            Text(
                'Ini adalah contoh buah-buahan yang sehat dan mengandung anti oksidan'),
          ],
        ),
      ),
    );
  }
}
