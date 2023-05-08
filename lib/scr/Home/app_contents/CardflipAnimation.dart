import 'package:flutter/material.dart';

class CardFlipAnimation extends StatefulWidget {
  final Widget front;
  final Widget back;

  const CardFlipAnimation({required this.front, required this.back});

  @override
  _CardFlipAnimationState createState() => _CardFlipAnimationState();
}

class _CardFlipAnimationState extends State<CardFlipAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _isFrontVisible = true;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleCard() {
    if (_isFrontVisible) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
    _isFrontVisible = !_isFrontVisible;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: _toggleCard,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 300,
                  width: 500,
                  child: AnimatedBuilder(
                    animation: _animation,
                    builder: (BuildContext context, Widget? child) {
                      final angle = _animation.value * 3.14;
                      debugPrint(angle.toString());
                      return Transform(
                        transform: Matrix4.identity()
                          ..setEntry(3, 2, 0.001)
                          ..rotateY(angle),
                        alignment: Alignment.center,
                        child: _isFrontVisible ? widget.front : Container(
                          color: Colors.red,
                          child: Center(
                            child: Transform(
                              alignment: Alignment.center,
                              transform: Matrix4.rotationY(3.14),
                              child: Text('Back', style: TextStyle(fontSize: 24)),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class FlipCardUI extends StatelessWidget {

  const FlipCardUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CardFlipAnimation(
      front: Container(
        color: Colors.blue,
        child: const Center(
          child: Text('Front', style: TextStyle(fontSize: 24)),
        ),
      ),
      back: Container(
        color: Colors.red,
        child: Center(
          child: RotatedBox(
              quarterTurns: 4,child: Text('Back', style: TextStyle(fontSize: 24))),
        ),
      ),
    );
  }
}

