import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: ThemeData.dark(),
        home: const MyHomePage(title: 'Lab 7'),
        debugShowCheckedModeBanner: false,
      );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Color> colors = [
    const Color(0xffFFD93D),
    const Color(0xffFF6B6B),
    const Color(0xff4D96FF)
  ];

  final double a = 20, b = 30, c = 65;
  final double radiusBorder = 10;

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Align(
          alignment: Alignment.bottomRight,
          child: Stack(
            fit: StackFit.loose,
            alignment: Alignment.bottomRight,
            textDirection: TextDirection.ltr,
            children: [
              Container(
                height: a + b + c,
                width: (a + b + c) + 100,
                decoration: BoxDecoration(
                    color: colors[0],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(radiusBorder))),
              ),
              Container(
                height: b + c,
                width: (b + c) + 100,
                decoration: BoxDecoration(
                    color: colors[1],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(radiusBorder))),
                child: Stack(
                  children: const [
                    Positioned(
                      left: 120,
                      top: 5,
                      child: Text(
                        "Z",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Positioned(
                      left: 130,
                      top: 5,
                      child: Text(
                        "S",
                        style: TextStyle(color: Colors.yellow),
                      ),
                    ),
                    Positioned(
                      left: 140,
                      top: 5,
                      child: Text("U", style: TextStyle(color: Colors.green)),
                    ),
                    Positioned(
                      left: 155,
                      top: 5,
                      child: Text(
                        "link",
                        style: TextStyle(
                          color: Colors.green,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: c,
                width: c + 100,
                decoration: BoxDecoration(
                    color: colors[2],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(radiusBorder))),
              ),
            ],
          )));
}
