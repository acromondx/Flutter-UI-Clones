import 'package:flutter/material.dart';

import 'stacked_containers.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SpeakerWave(),
    ));

class SpeakerWave extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SpeakerWave();
}

class _SpeakerWave extends State<SpeakerWave> with TickerProviderStateMixin {
  //for speakers
  late AnimationController _controller;
  final Tween<double> _tween = Tween(begin: 1, end: 1.5);

  // for icon
  late AnimationController _iconAnimationController;
  bool isPlaying = false;

  final color = Colors.grey[100]!.withOpacity(0.1);

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        // upperBound: 1.5,
        duration: const Duration(milliseconds: 700),
        vsync: this);
    _controller.repeat(reverse: true);

    _iconAnimationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 450));
  }

  void playOrPause() {
    setState(() {
      isPlaying = !isPlaying;
      isPlaying
          ? _iconAnimationController.reverse()
          : _iconAnimationController.forward();

      isPlaying ? _controller.forward() : _controller.repeat(reverse: true);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Align(
            child: ScaleTransition(
              filterQuality: FilterQuality.low,
              scale: _tween.animate(CurvedAnimation(
                parent: _controller,
                curve: Curves.decelerate,
              )),
              child: SizedBox(
                  height: 400,
                  width: 400,
                  child: StackedContainers(color: color)),
            ),
          ),
          const SizedBox(height: 100),
          IconButton(
            iconSize: 150,
            splashColor: Colors.transparent,
            icon: AnimatedIcon(
              icon: AnimatedIcons.play_pause,
              color: Colors.grey[800],
              progress: _iconAnimationController,
            ),
            onPressed: () => playOrPause(),
          )
        ],
      ),
    );
  }
}
