import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Game of Life'),
        backgroundColor: const Color.fromARGB(255, 7, 22, 95),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.chevron_left,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: const [
            Text(
              'Game of Life',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 23,
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'The Game of Life, also known simply as Life, is a cellular automaton devised by the British mathematician John Horton Conway in 1970. (Wikipediaxd)',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Flutter app developed by Erick Galván',
              textAlign: TextAlign.end,
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
