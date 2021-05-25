import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
const margin = 10.0;

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff343963),
        scaffoldBackgroundColor: Color(0xff343963),
      ),
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 60.0,
                  child: Center(child: Text('Live quiz')),
                ),
                Expanded(child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    color: Colors.red,
                  ),
                  margin: EdgeInsets.all(10),
                  child: Center(child: Text('question goes here')),
                ),
                  flex: 2,
                ),
                Expanded(child: Container(
                 child: Row(
                    children: <Widget>[
                      Expanded(
                        child: questionbar(),
                      ),
                      Expanded(
                        child: questionbar(),
                      ),
                      Expanded(
                        child: questionbar(),
                      ),
                      Expanded(
                        child: questionbar(),
                      ),
                      Expanded(
                        child: questionbar(),
                      ),
                    ],
                  ),
                )),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: Row(
                          children: <Widget>[
                            Expanded(child: answersops(EdgeInsets.only(left: 30.0, top: 10.0,right: 10.0, bottom: 10.0 ))),
                            Expanded(child: answersops(EdgeInsets.only(left: 10.0, top: 10.0,right: 30.0, bottom: 10.0 ))),


                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: <Widget>[
                            Expanded(child: answersops(EdgeInsets.only(left: 30.0, top: 10.0,right: 10.0, bottom: 10.0 ))),
                            Expanded(child: answersops(EdgeInsets.only(left: 10.0, top: 10.0,right: 30.0, bottom: 10.0 ))),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all( 30.0),
                  decoration :BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),

                  ),
                  height: 50.0,

                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

class answersops extends StatelessWidget {
  final EdgeInsets margin;

  answersops(
      this.margin,
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.all(Radius.circular(15.0)),

      ),
    );
  }
}



class questionbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red,
      ),
      margin: EdgeInsets.all(margin),
    );
  }
}
