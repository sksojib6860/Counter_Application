import 'package:flutter/material.dart';

import 'custom_color/customallcolor.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override


  int teamAPoint = 0;
  int teamBPoint = 0;
  void adOnePoint() {
    print('AddOnePoint');
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AllColor.appColor,
        title: const Text(
          '積分櫃檯',
          style: TextStyle(color: Colors.black87, fontSize: 25),
        ),

        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.white12,Colors.deepOrangeAccent,
                ],
                //stops: [10,0.5]
              )
          ),
        ),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                
                child: Row(
                  
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            'A隊',
                            style: TextStyle(fontSize: 40),
                          ),
                          Text(
                            '$teamAPoint',
                            style: TextStyle(fontSize: 170),
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: AllColor.appColor,
                                fixedSize: Size(150, 50),
                              ),
                              onPressed: () {
                                setState(() {
                                  teamAPoint++;
                                });
                                print(teamAPoint);
                              },
                              child: const Text(
                                '加1分',
                                style: TextStyle(
                                    fontSize: 22, color: Colors.black),
                              )),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: AllColor.appColor,
                                fixedSize: Size(150, 50),
                              ),
                              onPressed: () {
                                setState(() {
                                  teamAPoint += 2;
                                });
                              },
                              child: const Text(
                                '加2分',
                                style: TextStyle(
                                    fontSize: 22, color: Colors.black),
                              )),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: AllColor.appColor,
                                fixedSize: Size(150, 50),
                              ),
                              onPressed: () {
                                setState(() {
                                  teamAPoint += 3;
                                });
                              },
                              child: const Text(
                                '加3分',
                                style: TextStyle(
                                    fontSize: 22, color: Colors.black),
                              )),
                        ],
                      ),
                    ),
                    Container(
                      height: 500,
                      child: VerticalDivider(
                        thickness: 2,
                        color: Colors.grey,
                      ),
                    ),
                    Container(
                      height: 500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            '團隊或',
                            style: TextStyle(fontSize: 40),
                          ),
                          Text(
                            '$teamBPoint',
                            style: TextStyle(fontSize: 170),
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: AllColor.appColor,
                                fixedSize: Size(150, 50),
                              ),
                              onPressed: () {
                                setState(() {
                                  teamBPoint++;
                                });
                                print('AddOnePoint');
                              },
                              child: const Text(
                                '加1分',
                                style:
                                TextStyle(fontSize: 22, color: Colors.black),
                              )),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: AllColor.appColor,
                                fixedSize: Size(150, 50),
                              ),
                              onPressed: () {
                                setState(() {
                                  teamBPoint += 2;
                                });
                              },
                              child: const Text(
                                '加2分',
                                style:
                                TextStyle(fontSize: 22, color: Colors.black),
                              )),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: AllColor.appColor,
                                fixedSize: Size(150, 50),
                              ),
                              onPressed: () {
                                setState(() {
                                  teamBPoint += 3;
                                });
                              },
                              child: const Text(
                                '加3分',
                                style:
                                TextStyle(fontSize: 22, color: Colors.black),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: AllColor.appColor,
                    fixedSize: Size(160, 50),
                  ),
                  onPressed: () {
                    setState(() {
                      teamAPoint = 0;
                      teamBPoint = 0;
                    });
                  },
                  child: const Text(
                    '重置',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                    ),
                  )),
            ],
          ),
        ),
    );
  }
}
