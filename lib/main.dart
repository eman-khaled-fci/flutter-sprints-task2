import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  width: 180,
                  height: 180,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("images/flutterPic2.jpg"),
                    ),
                  )),
              TextField(
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black45, width: 2.0),
                    ),
                    labelText: 'Phone Number',
                    contentPadding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                    labelStyle: TextStyle(
                      //color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    )),
              ),
              TextField(
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black45, width: 2.0),
                    ),
                    labelText: 'Password',
                    contentPadding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                    labelStyle: TextStyle(
                      //color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    )),
              ),
              Container(
                width: double.infinity,
                height: 110,
                // margin: EdgeInsets.all(10.0),
                padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
                child: ElevatedButton(
                  onPressed: () {
                    // Respond to button press
                  },
                  child: Text(
                    'Log in',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  'Forgot password ? No yawa.Tap me',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: double.infinity,
                height: 70,
                // margin: EdgeInsets.all(10.0),
                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white12),
                  ),
                  onPressed: () {
                    // Respond to button press
                  },
                  child: Text(
                    'No Account ? Sign Up',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
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
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
