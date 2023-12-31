import 'package:flutter/material.dart';

class TipoPasirinkimas extends StatelessWidget {
  const TipoPasirinkimas({super.key});

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
                        "PASIRINK UŽDUOTIES TIPĄ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 80,
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
                        'GARSAS',
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
                        Navigator.pushNamed(context, '/garso_sud');
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
                        'SKIEMUO',
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
                        Navigator.pushNamed(context, '/l_skiemenu_u');
                      },
                    ),
                  ],
                ),
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
                    backgroundColor: Color(0xFF26822B),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(80),)
                    ),
                  ),
                  child: Text(
                    'ŽODIS',
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
                    Navigator.pushNamed(context, '/l_zodiu_u');
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
                    'SAKINYS',
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
                    Navigator.pushNamed(context, '/sak_sud');
                  },
                ),
              ],
            ),
          ),
          Expanded(
              child: Container()
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/tema');
        },
        backgroundColor: Color(0xFF26822B),
        foregroundColor: Colors.white,
        shape: CircleBorder(),
        child: const Icon(Icons.arrow_back, size: 50),
      ),
    );
  }
}