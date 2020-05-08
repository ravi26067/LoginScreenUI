import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "LoginUi",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            'assets/images/wp2641011.jpg',
            fit: BoxFit.fitWidth,
            color: Colors.black54,
            colorBlendMode: BlendMode.difference,
          ),
          SingleChildScrollView(
            padding: EdgeInsets.only(top:77),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(
                    'assets/images/keys.png',
                    height: 90,
                    width: 90,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30.0),
                  child: Stack(
                    children: <Widget>[
                      SingleChildScrollView(
                        child: Container(
                          height: 300,
                          width: 380,
                          padding: EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 20,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 25.0,
                                ),
                                child: TextField(
                                  autocorrect: false,
                                  autofocus: false,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: 'Username',
                                    border: InputBorder.none,
                                    filled: true,
                                    fillColor: Colors.grey[300],
                                    contentPadding: EdgeInsets.all(15.0),
                                  ),
                                ),
                              ),
                              TextField(
                                autocorrect: false,
                                autofocus: false,
                                obscureText: true,
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                                decoration: InputDecoration(
                                  hintText: 'Password',
                                  border: InputBorder.none,
                                  filled: true,
                                  fillColor: Colors.grey[300],
                                  contentPadding: EdgeInsets.all(15.0),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Text(
                                      "Forgot Password ?",
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 14.0),
                                child: MaterialButton(
                                  onPressed: () {},
                                  color: Colors.yellow[800],
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
