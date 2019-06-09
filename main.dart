import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("aNIMACIÓN hERO"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: ()=>showPage(context),
          child: Hero(
            tag: "logo",
            child: Material(
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.lightBlue,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26, offset: Offset(0, 0), blurRadius: 100),
                  ],
                ),
                child: Center(
                  child: Hero(
                    tag: "cuad",
                    child: Center(
                      child: Material(
                        type: MaterialType.transparency,
                        child: Text("hola", style: TextStyle(color: Colors.white30, fontSize: 40, fontStyle: FontStyle.normal ,fontWeight: FontWeight.w100, letterSpacing: -2),
                        ),
                      ),
                    ),
                  )
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  showPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>SecondPage()));
    }
}

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("aNIMACIÓN hERO"),
      ),
      body: Center(
        child: Hero(
          tag: "logo",
          child: Material(
            child: Container(
                width: 800,
                height: 800,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.redAccent,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26, offset: Offset(0, 0), blurRadius: 100),
                  ],
                ),
              child: Center(
                  child: Hero(
                    tag: "cuad",
                    child: Center(
                      child: Material(
                        type: MaterialType.transparency,
                        child: Text("chau", style: TextStyle(color: Colors.white30, fontSize: 120, fontStyle: FontStyle.italic ,fontWeight: FontWeight.w100, letterSpacing: -10),
                        ),
                      ),
                    ),
                  )
              ),
            ),
          ),
        ),
        ),
    );
  }

}
