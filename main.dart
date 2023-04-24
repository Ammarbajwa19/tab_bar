import 'package:flutter/material.dart';
import 'package:tab_bar/appbar.dart';
void main() => runApp(const MyApp());
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with TickerProviderStateMixin{
  
  late AnimationController _controller;
  late Animation<Alignment> _topAlignmentAnimation;
  late Animation<Alignment> _bottomAlignmentAnimation;

  @override
  void initState(){
    super.initState();
    _controller =  AnimationController(vsync: this, duration: const Duration(seconds: 10));
    _topAlignmentAnimation = TweenSequence<Alignment>(
      [
        TweenSequenceItem<Alignment>(
          tween: Tween<Alignment>(begin: Alignment.topLeft, end: Alignment.topRight),
          weight: 1,
        ),
        TweenSequenceItem<Alignment>(
          tween: Tween<Alignment>(begin: Alignment.topRight, end: Alignment.bottomRight),
          weight: 1,
        ),
        TweenSequenceItem<Alignment>(
          tween: Tween<Alignment>(begin: Alignment.bottomRight, end: Alignment.bottomLeft),
          weight: 1,
        ),
        TweenSequenceItem<Alignment>(
          tween: Tween<Alignment>(begin: Alignment.bottomLeft, end: Alignment.topLeft),
          weight: 1,
        )
      ]
    ).animate(_controller);
     _bottomAlignmentAnimation = TweenSequence<Alignment>(
      [
      TweenSequenceItem<Alignment>(
          tween: Tween<Alignment>(begin: Alignment.bottomRight, end: Alignment.bottomLeft),
          weight: 1,
        ),
      TweenSequenceItem<Alignment>(
          tween: Tween<Alignment>(begin: Alignment.bottomLeft, end: Alignment.topLeft),
          weight: 1,
        ),
      TweenSequenceItem<Alignment>(
          tween: Tween<Alignment>(begin: Alignment.topLeft, end: Alignment.topRight),
          weight: 1,
        ),
      TweenSequenceItem<Alignment>(
          tween: Tween<Alignment>(begin: Alignment.topRight, end: Alignment.bottomRight),
          weight: 1,
        ),
      ]
     ).animate(_controller);
    _controller.repeat();
  }
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark( ),
      home: Scaffold(
        appBar: buildAppbar(),
        body: Center(
          child: AnimatedBuilder(
            animation: _controller,
              builder: (context, _) {
                return Container(
                  width: 270,
                  height: 270,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors:[ Color.fromARGB(255, 250, 250, 250),
                    Color.fromARGB(158, 197, 0, 0)],
                    begin: _topAlignmentAnimation.value,
                    end: _bottomAlignmentAnimation.value,
                    ),
                    borderRadius: BorderRadius.circular(20)
                    
                  ),
                );
              }
          ),
        ),
      )
    
    );
}

}