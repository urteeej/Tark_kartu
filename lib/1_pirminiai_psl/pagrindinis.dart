import 'package:flutter/material.dart';

class PagrPsl extends StatelessWidget {
  const PagrPsl({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3BF82),
      body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: Container()
              ),
              Expanded(
                  flex: 2,
                  child: Container(
                      child: Center(
                          child: Text(
                            "TARK KARTU",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 100,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.bold,
                              height: 0,
                              shadows: [
                                Shadow(
                                  blurRadius: 5.0,
                                  color: Colors.black,
                                  offset: Offset(2, 2),
                                )
                              ],
                            ),
                          )
                      )
                  )
              ),
              Expanded(
                flex: 3,
                  child: Container(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFF88600),
                          shape: CircleBorder(),
                        ),
                        child: Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                          size: 150,),
                        onPressed: () {
                          Navigator.pushNamed(context, '/garso_pas');
                        },
                    ),
                  )
              ),
              Expanded(
                flex: 3,
                  child: Container()
              ),
            ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/info');
        },
        backgroundColor: Color(0xFFF88600),
        foregroundColor: Colors.white,
        shape: CircleBorder(),
        child: Text(
          'i',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontFamily: 'Inter',
            fontWeight: FontWeight.bold,
            height: 0,
          ),
        ),
      )
    );
  }
}