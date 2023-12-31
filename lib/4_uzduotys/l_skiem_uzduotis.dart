import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Skiemenys extends StatefulWidget {
  const Skiemenys({super.key});

  @override
  State<StatefulWidget> createState() => SkiemState();
}

class SkiemState extends State<Skiemenys> {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final widthPadding = size.width * 0.1;
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
                            "PRIJUNK GARSĄ Š PRIE KITŲ GARSŲ IR IŠTARK SKIEMENĮ",
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
          Center(
            child: Expanded(
              flex: 7,
              child: Padding(
                padding: EdgeInsets.only(left: widthPadding, right: widthPadding),
                child: Container(
                  height: size.height * 0.7,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              height: size.height * 0.6,
                              width: size.height * 0.6,
                              child: Row(
                                children: [
                                  Column(
                                      children: [
                                        Draggable(
                                          child: Container(
                                            height: 85,
                                            width: 85,
                                            child: Image.asset(
                                              'assets/kita/Š_mygtukas.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          feedback: Container(
                                            height: 85,
                                            width: 85,
                                            child: Image.asset(
                                              'assets/kita/Š_mygtukas.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          childWhenDragging: Container(),
                                        ),]
                                  ),
                                  Column(),
                                ],
                              )
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: size.height * 0.6,
                            width: size.height * 0.35,
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    const SizedBox(height: 10),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xFF26822B),
                                        shape: CircleBorder(),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'A',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 60,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.bold,
                                            height: 0,
                                          ),
                                        ),
                                      ),
                                      onPressed: () {
                                        final player = AudioPlayer();
                                        player.play(AssetSource('skiem_uzd/Ša.m4a'));
                                      },
                                    ),
                                    const SizedBox(height: 7),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xFF26822B),
                                        shape: CircleBorder(),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'E',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 60,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.bold,
                                            height: 0,
                                          ),
                                        ),
                                      ),
                                      onPressed: () {
                                        final player = AudioPlayer();
                                        player.play(AssetSource('skiem_uzd/Še.m4a'));
                                      },
                                    ),
                                    const SizedBox(height: 7),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xFF26822B),
                                        shape: CircleBorder(),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'I',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 60,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.bold,
                                            height: 0,
                                          ),
                                        ),
                                      ),
                                      onPressed: () {
                                        final player = AudioPlayer();
                                        player.play(AssetSource('skiem_uzd/Ši.m4a'));
                                      },
                                    ),
                                    const SizedBox(height: 7),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xFF26822B),
                                        shape: CircleBorder(),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'O',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 60,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.bold,
                                            height: 0,
                                          ),
                                        ),
                                      ),
                                      onPressed: () {
                                        final player = AudioPlayer();
                                        player.play(AssetSource('skiem_uzd/Šo.m4a'));
                                      },
                                    ),
                                    const SizedBox(height: 7),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xFF26822B),
                                        shape: CircleBorder(),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'U',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 60,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.bold,
                                            height: 0,
                                          ),
                                        ),
                                      ),
                                      onPressed: () {
                                        final player = AudioPlayer();
                                        player.play(AssetSource('skiem_uzd/Šu.m4a'));
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
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

