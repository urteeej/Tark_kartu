import 'package:flutter/material.dart';

class SakinioSudPsl extends StatelessWidget {
  const SakinioSudPsl({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7DD081),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              flex: 2,
              child: Container(
                  child: Center(
                      child: Text(
                        "PASIRINK UŽDUOTIES SUDĖTINGUMĄ",
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
            flex: 2,
            child: Row (
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF26822B),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(80),)
                    ),
                  ),
                  child: Text(
                    'LENGVAS',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 70,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.bold,
                      height: 0,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/1_l_sakinio_u');
                  },
                ),
                const SizedBox(width: 70),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF26822B),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(80),)
                    ),
                  ),
                  child: Text(
                    'SUNKUS',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 70,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.bold,
                      height: 0,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/s_sakinio_u');
                  },
                ),
              ],
            ),
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
          Navigator.pushNamed(context, '/tipo_pas');
        },
        backgroundColor: Color(0xFF26822B),
        foregroundColor: Colors.white,
        shape: CircleBorder(),
        child: const Icon(Icons.arrow_back, size: 50),
      ),
    );
  }
}