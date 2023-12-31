import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class SakinioLengva2 extends StatelessWidget {
  const SakinioLengva2({super.key});

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
                            "SUDARYK TRUMPĄ SAKINĮ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 50,
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
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/kita/namas_be.png'),
                    fit: BoxFit.contain,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 150,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(width: 10),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFDBC500),
                                shape: CircleBorder(),
                                alignment: Alignment.centerLeft,
                              ),
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                                size: 70,),
                              onPressed: () {
                                Navigator.pushNamed(context, '/1_l_sakinio_u');
                              },
                            ),
                          ]
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 100,
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                      children: [
                                        Container(
                                          height: 150,
                                          width: 150,
                                          color: Colors.yellow[300],
                                          child: Image.asset(
                                            'assets/zodziai/sernas_guli.png',
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
                                            'GULI',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.bold,
                                              height: 0,
                                            ),
                                          ),
                                          onPressed: () {
                                            final player = AudioPlayer();
                                            player.play(AssetSource('l_s_uzd/Guli.m4a'));
                                          },
                                        ),
                                      ]
                                  ),

                                  const SizedBox(width: 20),

                                  Column(
                                      children: [
                                        Container(
                                          height: 150,
                                          width: 150,
                                          color: Colors.brown[300],
                                          child: Image.asset(
                                            'assets/zodziai/sernas.png',
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                        ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(0xFFF9E535),
                                            shape: const RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(Radius.circular(80),)
                                            ),
                                          ),
                                          child: Text(
                                            'ŠERNAS',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.bold,
                                              height: 0,
                                            ),
                                          ),
                                          onPressed: () {
                                            final player = AudioPlayer();
                                            player.play(AssetSource('l_s_uzd/Šernas.m4a'));
                                          },
                                        ),
                                      ]
                                  ),

                                  const SizedBox(width: 20),

                                  Column(
                                    children: [
                                      Container(
                                        height: 150,
                                        width: 150,
                                        color: Colors.yellow[300],
                                        child: Image.asset(
                                          'assets/zodziai/maistas_sernui.png',
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
                                          'ĖDA',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.bold,
                                            height: 0,
                                          ),
                                        ),
                                        onPressed: () {
                                          final player = AudioPlayer();
                                          player.play(AssetSource('l_s_uzd/Ėda.m4a'));
                                        },
                                      ),
                                    ],
                                  ),

                                  const SizedBox(width: 20),

                                  Column(
                                      children: [
                                        Container(
                                          height: 150,
                                          width: 150,
                                          color: Colors.yellow[300],
                                          child: Image.asset(
                                            'assets/zodziai/sernas_bega.png',
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
                                            'BĖGA',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.bold,
                                              height: 0,
                                            ),
                                          ),
                                          onPressed: () {
                                            final player = AudioPlayer();
                                            player.play(AssetSource('l_s_uzd/Bėga.m4a'));
                                          },
                                        ),
                                      ]
                                  ),
                                ],
                              ),
                            ]
                        ),
                      ),
                    ),
                    Container(
                      width: 150,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFDBC500),
                                shape: CircleBorder(),
                                alignment: Alignment.centerRight,
                              ),
                              child: Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: 70,),
                              onPressed: () {
                                Navigator.pushNamed(context, '/3_l_sakinio_u');
                              },
                            ),
                            const SizedBox(width: 10),
                          ]
                      ),
                    ),
                  ],
                ),
              )
          ),
          Expanded(
              child: Container()
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/sak_sud');
        },
        backgroundColor: Color(0xFF26822B),
        foregroundColor: Colors.white,
        shape: CircleBorder(),
        child: const Icon(Icons.arrow_back, size: 50),
      ),
    );
  }
}

