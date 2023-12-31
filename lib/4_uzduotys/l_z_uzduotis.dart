import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Zodziai extends StatelessWidget {
  const Zodziai({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7DD081),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      child: Center(
                          child: Text(
                            "ĮVARDINK GYVŪNUS, PRASIDEDANČIUS GARSU Š",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
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
                  ),
                  const SizedBox(width: 30),
                  Container(
                    height: 70,
                    width: 70,
                    child: Image.asset(
                      'assets/kita/ausis.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              )
          ),
          Expanded(
              child: Container()
          ),
          Expanded(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          child: Image.asset(
                            'assets/zodziai/sarka.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF26822B),
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(80),)
                            ),
                          ),
                          child: Text(
                            'ŠARKA',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.bold,
                              height: 0,
                            ),
                          ),
                          onPressed: () {
                            final player = AudioPlayer();
                            player.play(AssetSource('z_uzd/Šarka.mp3'));
                          },
                        ),
                      ]
                  ),
                  const SizedBox(width: 100),
                  Column(
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          child: Image.asset(
                            'assets/zodziai/sernas.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF26822B),
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(80),)
                            ),
                          ),
                          child: Text(
                            'ŠERNAS',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.bold,
                              height: 0,
                            ),
                          ),
                          onPressed: () {
                            final player = AudioPlayer();
                            player.play(AssetSource('z_uzd/Šernas.m4a'));
                          },
                        ),
                      ]
                  ),
                  const SizedBox(width: 100),
                  Column(
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          child: Image.asset(
                            'assets/zodziai/seskas.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF26822B),
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(80),)
                            ),
                          ),
                          child: Text(
                            'ŠEŠKAS',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.bold,
                              height: 0,
                            ),
                          ),
                          onPressed: () {
                            final player = AudioPlayer();
                            player.play(AssetSource('z_uzd/Šeškas.m4a'));
                          },
                        ),
                      ]
                  )
                ]
             )
          ),
          Expanded(
              flex: 2,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          final player = AudioPlayer();
                          player.play(AssetSource('z_uzd/Ššššš.m4a'));
                        },
                        child: Container(
                          height: 120,
                          width: 120,
                          child: Image.asset(
                            'assets/kita/gyvatele_S.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  ]
              )
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