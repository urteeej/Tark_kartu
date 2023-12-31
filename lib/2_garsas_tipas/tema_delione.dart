import 'dart:math';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TeminisPsl extends StatefulWidget {
  const TeminisPsl({super.key});

  @override
  State<StatefulWidget> createState() => Delione();
}

class Delione extends State<TeminisPsl> {

  List<DetalesInfo> sarDetaliu = [];

  @override
  void initState(){
    uzpildymas();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final widthPadding = size.width * 0.215;
    return Scaffold(
      backgroundColor: Color(0xFF7DD081),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              flex: 1,
              child: Container(
                  child: Center(
                      child: Text(
                        "ATVERSK PAVEIKSLĖLĮ",
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
              )
          ),
          Expanded(
              flex: 8,
              child: Center(
                child: GridView.builder(
                    shrinkWrap: true,
                    padding: EdgeInsets.only(left: widthPadding, right: widthPadding),
                    itemCount: 6,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 3,
                      mainAxisSpacing: 3,
                      mainAxisExtent: size.height * 0.38,
                    ),
                    itemBuilder: (context, index) => Detale(index: index, zodis: sarDetaliu[index],),
                ),
              )
          ),
          Expanded(
              flex: 1,
              child: Container()
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(left: 30),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/garso_pas');
                },
                backgroundColor: Color(0xFF26822B),
                foregroundColor: Colors.white,
                shape: CircleBorder(),
                child: const Icon(Icons.arrow_back, size: 50),
              ),
              Expanded(child: Container()),
              FloatingActionButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/tipo_pas');
                },
                backgroundColor: Color(0xFF26822B),
                foregroundColor: Colors.white,
                shape: CircleBorder(),
                child: const Icon(Icons.arrow_forward, size: 50),
              ),
            ]
        ),
      ),
    );
  }

  uzpildymas(){
    sarDetaliu.add(DetalesInfo(
        tekstas: "1",
        nuoroda: 'assets/delione/1.png',
        isvestis: false)
    );
    sarDetaliu.add(DetalesInfo(
        tekstas: "2",
        nuoroda: 'assets/delione/2.png',
        isvestis: false)
    );
    sarDetaliu.add(DetalesInfo(
        tekstas: "3",
        nuoroda: 'assets/delione/3.png',
        isvestis: false)
    );
    sarDetaliu.add(DetalesInfo(
        tekstas: "4",
        nuoroda: 'assets/delione/4.png',
        isvestis: false)
    );
    sarDetaliu.add(DetalesInfo(
        tekstas: "5",
        nuoroda: 'assets/delione/5.png',
        isvestis: false)
    );
    sarDetaliu.add(DetalesInfo(
        tekstas: "6",
        nuoroda: 'assets/delione/6.png',
        isvestis: false)
    );
  }
}

class Detale extends StatelessWidget {
  const Detale({
    required this.index,
    required this.zodis,
    Key? key,
  }) : super(key: key);

  final int index;
  final DetalesInfo zodis;

  @override
  Widget build(BuildContext context) {
    return Consumer<DelionesManager>(
      builder: (_, notifier, __) => GestureDetector(
        onTap: (){
          notifier.tileTapped(index: index);
        },
        child: FlipAnimation(
          reverse: false,
          animationCompleted: (completed){
            print('call back $completed');
          },
          animate: notifier.index == index,
          word: Container(
            child: zodis.isvestis ?
              Transform(
                alignment: Alignment.center,
                  transform: Matrix4.rotationY(pi),
                  child: Text(zodis.tekstas)) :
            Image.asset(zodis.nuoroda)
          ),
        ),
      ),
    );
  }
}

class DetalesInfo {
  final String tekstas;
  final String nuoroda;
  bool isvestis;

  DetalesInfo({required this.tekstas, required this.nuoroda, required this.isvestis});
}

class FlipAnimation extends StatefulWidget {
  const FlipAnimation({
    required this.word,
    required this.animate,
    required this.reverse,
    required this.animationCompleted,
    super.key});

  final Widget word;
  final bool animate;
  final bool reverse;
  final Function(int) animationCompleted;

  @override
  State<FlipAnimation> createState() => _FlipAnimationState();
}

class _FlipAnimationState extends State<FlipAnimation> with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: Duration(milliseconds: 2000),
        vsync: this)..addStatusListener(
            (status) {
              if(status == AnimationStatus.completed){
                widget.animationCompleted.call(0);
              }
              if(status == AnimationStatus.dismissed){
                widget.animationCompleted.call(1);
              }
            });
    _animation = Tween<double>(
      begin: 0.0,
      end: 1.0)
    .animate(CurvedAnimation(
        parent: _controller,
        curve: Curves.bounceInOut)
    );
  }

  @override
  void didUpdateWidget(covariant FlipAnimation oldWidget){
    if(widget.animate){
      if(widget.reverse){
        _controller.reverse();
      } else {
        _controller.reset();
        _controller.forward();
      }
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _controller,
        builder: (context, child) => Transform(
          alignment: Alignment.center,
          transform: Matrix4.identity()
          ..rotateY(_animation.value * pi)
          ..setEntry(2, 3, 0.005),
          child: _controller.value >= 0.50 ?
          widget.word :
            Container(
              color: Color(0xFF26822B),
              child: Icon(
                  Icons.question_mark,
                  size: 50,
                  color: Colors.white,
              ),
            ),
        ),
    );
  }
}

class DelionesManager extends ChangeNotifier {

  int index = 0;

  tileTapped({required int index}) {
    this.index = index;
    notifyListeners();
  }
}

