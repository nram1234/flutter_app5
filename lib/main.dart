import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
          primarySwatch: Colors.cyan,
          brightness: Brightness.light,
          buttonTheme: ButtonThemeData(shape: BeveledRectangleBorder())),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> list = [];

  @override
  void initState() {
    for (int i = 0; i < 10000; i++) {
      list.add("item number  $i");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
              children: <Widget>[
        Expanded(child:   ListView.builder(scrollDirection: Axis.horizontal,
            itemCount: list.length,
            itemBuilder: (BuildContext context, int index) {
              return new GestureDetector(
                onTap: () {
                  Scaffold.of(context).showSnackBar(
                      SnackBar(action: SnackBarAction(label: "777777777", onPressed: (){}),content: Text(list[index])));
                },
                child: Card(
                  child: Column(
                    children: <Widget>[
                      Text(
                        list[index],
                        style: TextStyle(color: Colors.cyan),
                      )
                    ],
                  ),
                  elevation: 6.7,
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(2.6)),
                ),
              );
            }))
              ,Container(child: Text("iii"),height: 150.0,width:  200.0,color: Colors.orange,)],
          ),
        );
  }
}
