import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
//        primarySwatch: Colors.blue,
          ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _value = 0.0;

  onChanged(double value) {
    setState(() {
      _value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset("images/albumArt01.png", fit: BoxFit.fill)),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                child: Image.asset("images/albumArt01.png", fit: BoxFit.fill),
              ),
            ),
            backgroundColor: Colors.white.withOpacity(0.9),
            title: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Reality Check",
                  style: TextStyle(color: Colors.black, fontSize: 18.0),
                ),
                Text(
                  "Wojciech Golczewski",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 13.0,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.queue_music, color: Colors.black),
                  onPressed: null),
              IconButton(
                  icon: Icon(Icons.more_vert, color: Colors.black),
                  onPressed: null)
            ],
          ),

          body: Container(
            alignment: Alignment.bottomCenter,
            color: Colors.transparent,
            child: Row(
              children: <Widget>[
                IconButton(
                    icon: Icon(Icons.repeat, color: Colors.white),
                    onPressed: null),
                IconButton(
                    icon: Icon(Icons.shuffle, color: Colors.white),
                    onPressed: null)
              ],
            ),
          ),

          // Bottom Control bar

          bottomNavigationBar: BottomAppBar(
            color: Colors.white.withOpacity(0.9),
            child: Container(
              height: 75.0,
              child: Column(
                children: <Widget>[

                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(child: Container()),
                        IconButton(
                          onPressed: () {
                            debugPrint("pressed");
                          },
                          icon: Icon(
                            OMIcons.thumbUpAlt,
                          ),
                        ),
                        Expanded(child: Container()),
                        IconButton(
                            onPressed: () {
                              debugPrint("pressed");
                            },
                            icon: Icon(
                              Icons.skip_previous,
                              color: Colors.black,
                              size: 30.0,
                            )),
                        Expanded(child: Container()),
                         Padding(
                           padding: const EdgeInsets.fromLTRB(0.0, 0.0, 16.0, 19.0),
                           child: IconButton(
                                  onPressed: () {
                                    debugPrint("pressed");
                                  },
                                  icon: Icon(
                                    Icons.play_circle_filled,
                                    color: Colors.redAccent,
                                    size: 70.0,
                                  )),
                         ),
                        Expanded(child: Container()),
                        IconButton(
                            onPressed: () {
                              debugPrint("pressed");
                            },
                            icon: Icon(
                              Icons.skip_next,
                              color: Colors.black,
                              size: 30.0,
                            )),
                        Expanded(child: Container()),
                        IconButton(
                          onPressed: () {
                            debugPrint("pressed");
                          },
                          icon: Icon(
                            OMIcons.thumbDownAlt,
                          ),
                        ),
                        Expanded(child: Container()),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
