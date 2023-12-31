import 'package:flutter/material.dart';

class Informacija extends StatelessWidget {
  const Informacija({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF3BF82),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                flex: 2,
                child: Container(
                    child: Center(
                      child: Text(
                        "ŽENKLŲ REIKŠMĖS",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 70,
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
                child: Container()
            ),
            Expanded(
                child: Row (
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFF88600),
                        shape: CircleBorder(),
                      ),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 70,),
                      onPressed: () {},
                    ),
                    Text (
                      '- GRĮŽTI ATGAL',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.bold,
                        height: 0,
                        shadows: [
                          Shadow(
                            blurRadius: 1.0,
                            color: Colors.black,
                            offset: Offset(1, 1),
                          )
                        ],
                      ),
                    ),
                  ],
                )
            ),
            Expanded(
              child: Row (
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFF88600),
                      shape: CircleBorder(),
                    ),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 70,),
                    onPressed: () {},
                  ),
                  Text (
                    '- EITI TOLIAU',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.bold,
                      height: 0,
                      shadows: [
                        Shadow(
                          blurRadius: 1.0,
                          color: Colors.black,
                          offset: Offset(1, 1),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ),
            Expanded(
                child: Row (
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      child: Image.asset(
                        'assets/kita/ausis.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    Text (
                      '- UŽDUOTIS TURI ĮGARSINTŲ ELEMENTŲ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.bold,
                        height: 0,
                        shadows: [
                          Shadow(
                            blurRadius: 1.0,
                            color: Colors.black,
                            offset: Offset(1, 1),
                          )
                        ],
                      ),
                    ),
                  ],
                )
            ),
            Expanded(
                child: Row (
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFF88600),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(80),)
                        ),
                      ),
                      child: Text(
                        'TEKSTAS',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.bold,
                          height: 0,
                        ),
                      ),
                      onPressed: () {},
                    ),
                    Text (
                      '  - PASIRINKIMO ARBA ĮGARSINIMO MYGTUKAS',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.bold,
                        height: 0,
                        shadows: [
                          Shadow(
                            blurRadius: 1.0,
                            color: Colors.black,
                            offset: Offset(1, 1),
                          )
                        ],
                      ),
                    ),
                  ],
                )
            ),
            Expanded(
                flex: 3,
                child: Container()
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/pagr_psl');
          },
          backgroundColor: Color(0xFFF88600),
          foregroundColor: Colors.white,
          shape: CircleBorder(),
          child: const Icon(Icons.arrow_back, size: 50),
        ),
    );
  }
}

