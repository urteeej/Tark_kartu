import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class SakinioSunki extends StatelessWidget {
  const SakinioSunki({super.key});

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
                            "SUDARYK ILGĄ SAKINĮ",
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
              flex: 6,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/kita/namas_be.png'),
                    fit: BoxFit.contain,
                  ),
                ),
                child: Column(
                  children: [
                    ///tuščia eilutė sulygiavimui
                    Row(
                      children: [
                        Container(
                          height: 60,
                          width: 80,
                        )
                      ],
                    ),

                    ///stogas
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                color: Colors.brown[300],
                                child: Image.asset(
                                  'assets/zodziai/sarka.png',
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
                                  'ŠARKA',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.bold,
                                    height: 0,
                                  ),
                                ),
                                onPressed: () {
                                  final player = AudioPlayer();
                                  player.play(AssetSource('s_s_uzd/Šarka.mp3'));
                                  //player.release();
                                },
                              ),
                            ]
                        ),
                        const SizedBox(width: 50),
                        Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
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
                                    fontSize: 15,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.bold,
                                    height: 0,
                                  ),
                                ),
                                onPressed: () {
                                  final player = AudioPlayer();
                                  player.play(AssetSource('s_s_uzd/Šernas.m4a'));
                                },
                              ),
                            ]
                        ),
                        const SizedBox(width: 50),
                        Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                color: Colors.brown[300],
                                child: Image.asset(
                                  'assets/zodziai/seskas.png',
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
                                  'ŠEŠKAS',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.bold,
                                    height: 0,
                                  ),
                                ),
                                onPressed: () {
                                  final player = AudioPlayer();
                                  player.play(AssetSource('s_s_uzd/Šeškas.m4a'));
                                },
                              ),
                            ]
                        )
                      ],
                    ),

                    ///tuščia eilutė sulygiavimui
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 80,
                        )
                      ],
                    ),

                    ///antras aukštas
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                color: Colors.yellow[300],
                                child: Image.asset(
                                  'assets/zodziai/maistas_sarkai.png',
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
                                  'LESA',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.bold,
                                    height: 0,
                                  ),
                                ),
                                onPressed: () {
                                  final player = AudioPlayer();
                                  player.play(AssetSource('s_s_uzd/Lesa.m4a'));
                                },
                              ),
                            ]
                        ),
                        const SizedBox(width: 30),
                        Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
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
                                    fontSize: 15,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.bold,
                                    height: 0,
                                  ),
                                ),
                                onPressed: () {
                                  final player = AudioPlayer();
                                  player.play(AssetSource('s_s_uzd/Guli.m4a'));
                                },
                              ),
                            ]
                        ),
                        const SizedBox(width: 30),
                        Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
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
                                    fontSize: 15,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.bold,
                                    height: 0,
                                  ),
                                ),
                                onPressed: () {
                                  final player = AudioPlayer();
                                  player.play(AssetSource('s_s_uzd/Bėga.m4a'));
                                },
                              ),
                            ]
                        ),
                        const SizedBox(width: 30),
                        Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                color: Colors.yellow[300],
                                child: Image.asset(
                                  'assets/zodziai/maistas_seskui.png',
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
                                  'VALGO',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.bold,
                                    height: 0,
                                  ),
                                ),
                                onPressed: () {
                                  final player = AudioPlayer();
                                  player.play(AssetSource('s_s_uzd/Valgo.m4a'));
                                },
                              ),
                            ]
                        )
                      ],
                    ),

                    ///tuščia eilutė sulygiavimui
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 80,
                        )
                      ],
                    ),

                    ///pirmas aukštas
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                color: Colors.yellow[300],
                                child: Image.asset(
                                  'assets/zodziai/sarka_tupi.png',
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
                                  'TUPI',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.bold,
                                    height: 0,
                                  ),
                                ),
                                onPressed: () {
                                  final player = AudioPlayer();
                                  player.play(AssetSource('s_s_uzd/Tupi.m4a'));
                                },
                              ),
                            ]
                        ),
                        const SizedBox(width: 30),
                        Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                color: Colors.yellow[300],
                                child: Image.asset(
                                  'assets/zodziai/sarka_skrenda.png',
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
                                  'SKRENDA',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.bold,
                                    height: 0,
                                  ),
                                ),
                                onPressed: () {
                                  final player = AudioPlayer();
                                  player.play(AssetSource('s_s_uzd/Skrenda.m4a'));
                                },
                              ),
                            ]
                        ),
                        const SizedBox(width: 30),
                        Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
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
                                    fontSize: 15,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.bold,
                                    height: 0,
                                  ),
                                ),
                                onPressed: () {
                                  final player = AudioPlayer();
                                  player.play(AssetSource('s_s_uzd/Ėda.m4a'));
                                },
                              ),
                            ]
                        ),
                        const SizedBox(width: 30),
                        Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                color: Colors.yellow[300],
                                child: Image.asset(
                                  'assets/zodziai/seskas_guli.png',
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
                                    fontSize: 15,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.bold,
                                    height: 0,
                                  ),
                                ),
                                onPressed: () {
                                  final player = AudioPlayer();
                                  player.play(AssetSource('s_s_uzd/Guli.m4a'));
                                },
                              ),
                            ]
                        ),
                        const SizedBox(width: 30),
                        Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                color: Colors.yellow[300],
                                child: Image.asset(
                                  'assets/zodziai/seskas_bega.png',
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
                                  'EINA',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.bold,
                                    height: 0,
                                  ),
                                ),
                                onPressed: () {
                                  final player = AudioPlayer();
                                  player.play(AssetSource('s_s_uzd/Eina.m4a'));
                                },
                              ),
                            ]
                        )
                      ],
                    ),
                  ],
                ),
              )
          ),
          Expanded(
              child: Row (
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                      const SizedBox(width: 300),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                          shape: CircleBorder(),
                        ),
                        child: Text(
                          'IR',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.bold,
                            height: 0,
                          ),
                        ),
                        onPressed: () {
                          final player = AudioPlayer();
                          player.play(AssetSource('s_s_uzd/Ir.m4a'));
                        },
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                          shape: CircleBorder(),
                        ),
                        child: Text(
                          'O',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.bold,
                            height: 0,
                          ),
                        ),
                        onPressed: () {
                          final player = AudioPlayer();
                          player.play(AssetSource('s_s_uzd/O.m4a'));
                        },
                      ),
                  ],
              )
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