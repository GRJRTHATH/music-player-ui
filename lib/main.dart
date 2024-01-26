import 'package:flutter/material.dart';
import 'package:music_player_ui/customContainer.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.grey.shade300,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomContainer(
                          height: 60,
                          width: 60,
                          child: Icon(
                            Icons.arrow_back,
                          )),
                      Text("P L A Y L I S T"),
                      CustomContainer(
                          height: 60,
                          width: 60,
                          child: Icon(
                            Icons.menu,
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  CustomContainer(
                      height: 300,
                      width: double.infinity,
                      child: Column(
                        children: [
                          Container(
                              height: 200,
                              width: double.infinity,
                              child: Image.asset("assets/images/lofi2.jpg")),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "LOFI SONG",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  Text(
                                    "Kesariya",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.favorite,
                                size: 32,
                                color: Colors.red,
                              )
                            ],
                          ),
                        ],
                      )),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("0:00"),
                      Icon(Icons.shuffle),
                      Icon(Icons.repeat),
                      Text("4:50"),
                    ],
                  ),
                  SizedBox(height: 20),
                  CustomContainer(
                      child: LinearPercentIndicator(
                    lineHeight: 10,
                    percent: 0.8,
                    progressColor: Colors.green,
                    backgroundColor: Colors.transparent,
                  )),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                          child: CustomContainer(
                              child: Icon(Icons.skip_previous))),
                      Expanded(
                          child: CustomContainer(child: Icon(Icons.pause))),
                      Expanded(
                          child: CustomContainer(child: Icon(Icons.forward))),
                    ],
                  ),
                ],
              ),
            ),
          )),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
