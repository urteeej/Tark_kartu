import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:provider/provider.dart';

class GarsoSunki extends StatefulWidget {
  const GarsoSunki({super.key});

  @override
  State<StatefulWidget> createState() => Remelis2();
}

class Remelis2 extends State<GarsoSunki> {

  List<LangelioInfo> sarLangeliu = [];

  @override
  void initState(){
    uzpildymas();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final widthPadding = size.width * 0.2;
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
                        "SURASK VISUS Š GARSUS",
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
                  ),
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
            ),
          ),
          Expanded(
              flex: 7,
              child: Center(
                child: GridView.builder(
                  shrinkWrap: true,
                  padding: EdgeInsets.only(left: widthPadding, right: widthPadding),
                  itemCount: 24,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 6,
                    crossAxisSpacing: 3,
                    mainAxisSpacing: 3,
                    mainAxisExtent: size.height * 0.15,
                  ),
                  itemBuilder: (context, index) => Langelis(index: index, langelis: sarLangeliu[index], teisingas: sarLangeliu[index].teisingas, paspaude: false,),
                ),
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
                          player.play(AssetSource('g_uzd/Ššššš.m4a'));
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
          Navigator.pushNamed(context, '/garso_sud');
        },
        backgroundColor: Color(0xFF26822B),
        foregroundColor: Colors.white,
        shape: CircleBorder(),
        child: const Icon(Icons.arrow_back, size: 50),
      ),
    );
  }


  uzpildymas(){

    for(int i = 0; i < 7; i++){
      sarLangeliu.add(LangelioInfo(
          nuoroda: 'assets/raides_sunk/Š.png',
          teisingas: true,
          isvestis: false)
      );
    }

    for(int i = 0; i < 3; i++){
      sarLangeliu.add(LangelioInfo(
          nuoroda: 'assets/raides_sunk/S.png',
          teisingas: false,
          isvestis: false)
      );
    }

    for(int i = 0; i < 2; i++){
      sarLangeliu.add(LangelioInfo(
          nuoroda: 'assets/raides_sunk/Z.png',
          teisingas: false,
          isvestis: false)
      );
    }

    for(int i = 0; i < 2; i++){
      sarLangeliu.add(LangelioInfo(
          nuoroda: 'assets/raides_sunk/Ž.png',
          teisingas: false,
          isvestis: false)
      );
    }

    for(int i = 0; i < 2; i++){
      sarLangeliu.add(LangelioInfo(
          nuoroda: 'assets/raides_sunk/Š_06.png',
          teisingas: false,
          isvestis: false)
      );
    }

    sarLangeliu.add(LangelioInfo(
        nuoroda: 'assets/raides_sunk/Š_02.png',
        teisingas: false,
        isvestis: false)
    );
    sarLangeliu.add(LangelioInfo(
        nuoroda: 'assets/raides_sunk/Š_03.png',
        teisingas: false,
        isvestis: false)
    );
    sarLangeliu.add(LangelioInfo(
        nuoroda: 'assets/raides_sunk/Š_04.png',
        teisingas: false,
        isvestis: false)
    );
    sarLangeliu.add(LangelioInfo(
        nuoroda: 'assets/raides_sunk/Š_05.png',
        teisingas: false,
        isvestis: false)
    );
    sarLangeliu.add(LangelioInfo(
        nuoroda: 'assets/raides_sunk/Š_07.png',
        teisingas: false,
        isvestis: false)
    );
    sarLangeliu.add(LangelioInfo(
        nuoroda: 'assets/raides_sunk/Š_08.png',
        teisingas: false,
        isvestis: false)
    );
    sarLangeliu.add(LangelioInfo(
        nuoroda: 'assets/raides_sunk/Š_09.png',
        teisingas: false,
        isvestis: false)
    );
    sarLangeliu.add(LangelioInfo(
        nuoroda: 'assets/raides_sunk/Š_10.png',
        teisingas: false,
        isvestis: false)
    );
    sarLangeliu.shuffle();
  }
}

class LangelioInfo {
  final String nuoroda;
  bool teisingas;
  bool isvestis;

  LangelioInfo({required this.nuoroda, required this.teisingas, required this.isvestis});
}

class Langelis extends StatelessWidget {
  Langelis({
    required this.index,
    required this.langelis,
    required this.teisingas,
    required this.paspaude,
    Key? key,
  }) : super(key: key);

  final int index;
  final LangelioInfo langelis;
  bool teisingas;
  bool paspaude;

  @override
  Widget build(BuildContext context) {
    return Consumer<LangeliuManager>(
      builder: (_, notifier, __) => Container(
        child: GestureDetector(
          onTap: (){
            notifier.tileTapped(index: index, teisingas: langelis.teisingas, paspaude: true);
            paspaude = true;
          },
          child: Container(

                decoration: BoxDecoration(
                  color: teisingas && paspaude ? Colors.green : !teisingas && paspaude ? Colors.redAccent : Colors.orangeAccent[100]
                ),
                child: langelis.isvestis ? Text('') : Image.asset(langelis.nuoroda)
          ),
        ),
      ),
    );
  }
}

class LangeliuManager extends ChangeNotifier {

  int index = 0;
  bool teisingas = false;
  bool paspaude = false;

  tileTapped({required int index, required bool teisingas, required bool paspaude}) {
    this.index = index;
    this.teisingas = teisingas;
    this.paspaude = paspaude;
    notifyListeners();
  }
}