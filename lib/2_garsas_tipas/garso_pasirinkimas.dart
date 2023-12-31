import 'package:flutter/material.dart';

class GarsoPasirinkimoPsl extends StatelessWidget {
  const GarsoPasirinkimoPsl({super.key});

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
                          "PASIRINK NORIMĄ GARSĄ",
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
                flex: 3,
                child: Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFF88600),
                      shape: CircleBorder(),
                      fixedSize: Size.fromRadius(100),
                    ),
                    child: Text(
                      'Š',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 150,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.bold,
                        height: 0,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/tema');
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
