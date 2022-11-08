import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:game_of_life/info.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    for (var i = 0; i < rows; i++) {
      final aux = [];
      for (var j = 0; j < columns; j++) {
        aux.add(null);
      }
      firstList.add(aux);
    }
    statesList = List.generate(
      rows,
      (i) => List.generate(
        columns,
        (j) => 0,
      ),
    );
    super.initState();
  }

  List<dynamic> firstList = [];
  var statesList = [];
  int rows = 45;
  int columns = 23;
  Timer? _timer;
  bool _isPlaying = false;

  void startGame() {
    _isPlaying = true;
    const oneLapse = Duration(milliseconds: 500);
    _timer = Timer.periodic(oneLapse, (timer) {
      statesList = List.generate(
        rows,
        (i) => List.generate(
          columns,
          (j) => 0,
        ),
      );

      for (int i = 0; i < rows; i++) {
        for (int j = 0; j < columns; j++) {
          if (i == 0) {
            if (j == 0) {
              firstList[i][j + 1] != null ? statesList[i][j] += 1 : null;
              firstList[i + 1][j] != null ? statesList[i][j] += 1 : null;
              firstList[i + 1][j + 1] != null ? statesList[i][j] += 1 : null;
            } else if (j == columns - 1) {
              firstList[i][j - 1] != null ? statesList[i][j] += 1 : null;
              firstList[i + 1][j] != null ? statesList[i][j] += 1 : null;
              firstList[i + 1][j - 1] != null ? statesList[i][j] += 1 : null;
            } else {
              firstList[i][j - 1] != null ? statesList[i][j] += 1 : null;
              firstList[i][j + 1] != null ? statesList[i][j] += 1 : null;
              firstList[i + 1][j] != null ? statesList[i][j] += 1 : null;
              firstList[i + 1][j - 1] != null ? statesList[i][j] += 1 : null;
              firstList[i + 1][j + 1] != null ? statesList[i][j] += 1 : null;
            }
          } else if (i == rows - 1) {
            if (j == 0) {
              firstList[i - 1][j] != null ? statesList[i][j] += 1 : null;
              firstList[i - 1][j + 1] != null ? statesList[i][j] += 1 : null;
              firstList[i][j + 1] != null ? statesList[i][j] += 1 : null;
            } else if (j == columns - 1) {
              firstList[i - 1][j] != null ? statesList[i][j] += 1 : null;
              firstList[i - 1][j - 1] != null ? statesList[i][j] += 1 : null;
              firstList[i][j - 1] != null ? statesList[i][j] += 1 : null;
            } else {
              firstList[i - 1][j] != null ? statesList[i][j] += 1 : null;
              firstList[i - 1][j - 1] != null ? statesList[i][j] += 1 : null;
              firstList[i - 1][j + 1] != null ? statesList[i][j] += 1 : null;
              firstList[i][j - 1] != null ? statesList[i][j] += 1 : null;
              firstList[i][j + 1] != null ? statesList[i][j] += 1 : null;
            }
          } else if (j == 0) {
            if (i == 0) {
              firstList[i][j + 1] != null ? statesList[i][j] += 1 : null;
              firstList[i + 1][j] != null ? statesList[i][j] += 1 : null;
              firstList[i + 1][j + 1] != null ? statesList[i][j] += 1 : null;
            } else if (i == rows - 1) {
              firstList[i - 1][j] != null ? statesList[i][j] += 1 : null;
              firstList[i - 1][j + 1] != null ? statesList[i][j] += 1 : null;
              firstList[i][j + 1] != null ? statesList[i][j] += 1 : null;
            } else {
              firstList[i - 1][j] != null ? statesList[i][j] += 1 : null;
              firstList[i - 1][j + 1] != null ? statesList[i][j] += 1 : null;
              firstList[i][j + 1] != null ? statesList[i][j] += 1 : null;
              firstList[i + 1][j] != null ? statesList[i][j] += 1 : null;
              firstList[i + 1][j + 1] != null ? statesList[i][j] += 1 : null;
            }
          } else if (j == columns - 1) {
            if (i == 0) {
              firstList[i][j - 1] != null ? statesList[i][j] += 1 : null;
              firstList[i + 1][j] != null ? statesList[i][j] += 1 : null;
              firstList[i + 1][j - 1] != null ? statesList[i][j] += 1 : null;
            } else if (i == rows - 1) {
              firstList[i - 1][j] != null ? statesList[i][j] += 1 : null;
              firstList[i - 1][j - 1] != null ? statesList[i][j] += 1 : null;
              firstList[i][j - 1] != null ? statesList[i][j] += 1 : null;
            } else {
              firstList[i - 1][j] != null ? statesList[i][j] += 1 : null;
              firstList[i - 1][j - 1] != null ? statesList[i][j] += 1 : null;
              firstList[i][j - 1] != null ? statesList[i][j] += 1 : null;
              firstList[i + 1][j] != null ? statesList[i][j] += 1 : null;
              firstList[i + 1][j - 1] != null ? statesList[i][j] += 1 : null;
            }
          } else {
            firstList[i - 1][j] != null ? statesList[i][j] += 1 : null;
            firstList[i - 1][j - 1] != null ? statesList[i][j] += 1 : null;
            firstList[i - 1][j + 1] != null ? statesList[i][j] += 1 : null;
            firstList[i][j - 1] != null ? statesList[i][j] += 1 : null;
            firstList[i][j + 1] != null ? statesList[i][j] += 1 : null;
            firstList[i + 1][j] != null ? statesList[i][j] += 1 : null;
            firstList[i + 1][j - 1] != null ? statesList[i][j] += 1 : null;
            firstList[i + 1][j + 1] != null ? statesList[i][j] += 1 : null;
          }
        }
      }
      for (int i = 0; i < rows; i++) {
        for (int j = 0; j < columns; j++) {
          if (statesList[i][j] < 2 && firstList[i][j] != null) {
            firstList[i][j] = null;
          }
          if ((statesList[i][j] == 2 || statesList[i][j] == 3) &&
              firstList[i][j] != null) {
            firstList[i][j] = 1;
          }
          if (statesList[i][j] > 3 && firstList[i][j] != null) {
            firstList[i][j] = null;
          }
          if (statesList[i][j] == 3 && firstList[i][j] == null) {
            firstList[i][j] = true;
          }
        }
      }
      setState(() {});
    });
  }

  void cleanGame() {
    for (int i = 0; i < rows; i++) {
      for (int j = 0; j < columns; j++) {
        firstList[i][j] = null;
      }
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Game of Life'),
        backgroundColor: const Color.fromARGB(255, 7, 22, 95),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const Info();
                },
              ),
            );
          },
          icon: const Icon(
            Icons.info,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: List.generate(
              rows,
              (i) {
                return SingleChildScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(
                      columns,
                      (j) {
                        return InkWell(
                          onTap: () {
                            if (!_isPlaying) {
                              setState(() {
                                if (firstList[i][j] == null) {
                                  firstList[i][j] = true;
                                } else {
                                  firstList[i][j] = null;
                                }
                              });
                            }
                          },
                          child: Container(
                            margin: const EdgeInsets.all(
                              1,
                            ),
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                              color: firstList[i][j] != null
                                  ? Colors.yellow
                                  : Colors.blue,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndDocked,
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: null,
            backgroundColor: const Color.fromARGB(255, 210, 16, 64),
            onPressed: () {
              if (_isPlaying) {
                _timer!.cancel();
                _isPlaying = false;
                setState(() {});
              } else {
                startGame();
              }
            },
            child: _isPlaying
                ? const Icon(Icons.pause)
                : const Icon(
                    Icons.play_arrow,
                  ),
          ),
          const SizedBox(
            height: 10,
          ),
          !_isPlaying
              ? FloatingActionButton(
                  backgroundColor: const Color.fromARGB(255, 27, 123, 30),
                  heroTag: null,
                  onPressed: () {
                    cleanGame();
                  },
                  child: const Icon(Icons.cleaning_services),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
