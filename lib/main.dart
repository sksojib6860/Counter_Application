import 'package:flutter/material.dart';

main() {
  runApp(pointsCounter());
}

class pointsCounter extends StatefulWidget {
  @override
  State<pointsCounter> createState() => _pointsCounterState();
}

class _pointsCounterState extends State<pointsCounter> {
  int teamAPoint = 0;
  int teamBPoint = 0;
  void adOnePoint() {
    print('AddOnePoint');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text(
            'Points Counter',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SingleChildScrollView(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SingleChildScrollView(
                    child: Container(
                      height: 500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            'Team A',
                            style: TextStyle(fontSize: 40),
                          ),
                          Text(
                            '$teamAPoint',
                            style: TextStyle(fontSize: 170),
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.orange,
                                fixedSize: Size(150, 50),
                              ),
                              onPressed: () {
                                setState(() {
                                  teamAPoint++;
                                });
                                print(teamAPoint);
                              },
                              child: const Text(
                                'Add 1 Point',
                                style: TextStyle(
                                    fontSize: 22, color: Colors.black),
                              )),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.orange,
                                fixedSize: Size(150, 50),
                              ),
                              onPressed: () {
                                setState(() {
                                  teamAPoint += 2;
                                });
                              },
                              child: const Text(
                                'Add 2 Point',
                                style: TextStyle(
                                    fontSize: 22, color: Colors.black),
                              )),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.orange,
                                fixedSize: Size(150, 50),
                              ),
                              onPressed: () {
                                setState(() {
                                  teamAPoint += 3;
                                });
                              },
                              child: const Text(
                                'Add 3 Point',
                                style: TextStyle(
                                    fontSize: 22, color: Colors.black),
                              )),
                        ],
                      ),
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
                          'Team B',
                          style: TextStyle(fontSize: 40),
                        ),
                        Text(
                          '$teamBPoint',
                          style: TextStyle(fontSize: 170),
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              fixedSize: Size(150, 50),
                            ),
                            onPressed: () {
                              setState(() {
                                teamBPoint++;
                              });
                              print('AddOnePoint');
                            },
                            child: const Text(
                              'Add 1 Point',
                              style:
                                  TextStyle(fontSize: 22, color: Colors.black),
                            )),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              fixedSize: Size(150, 50),
                            ),
                            onPressed: () {
                              setState(() {
                                teamBPoint += 2;
                              });
                            },
                            child: const Text(
                              'Add 2 Point',
                              style:
                                  TextStyle(fontSize: 22, color: Colors.black),
                            )),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              fixedSize: Size(150, 50),
                            ),
                            onPressed: () {
                              setState(() {
                                teamBPoint += 3;
                              });
                            },
                            child: const Text(
                              'Add 3 Point',
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
                  primary: Colors.orange,
                  fixedSize: Size(160, 50),
                ),
                onPressed: () {
                  setState(() {
                    teamAPoint = 0;
                    teamBPoint = 0;
                  });
                },
                child: const Text(
                  'Reset',
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
