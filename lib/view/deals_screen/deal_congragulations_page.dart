import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:particles_flutter/component/particle/particle.dart';
import 'package:particles_flutter/particles_engine.dart';
import 'package:real_estate_app/widgets/text.dart';

class DealCongragulationsPage extends StatelessWidget {
  static const routeName = '/dealCongragulationsPage';
  const DealCongragulationsPage(
      {super.key, required this.agentName, required this.amountWorth});
  final String agentName;
  final String amountWorth;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: AlertDialog(
        content: Column(
          children: [
            // SizedBox.expand(),

            Align(
              alignment: Alignment.center,
              child: Card(
                elevation: 0,
                color: Colors.transparent,
                margin: EdgeInsets.all(16),
                child: SizedBox(
                  width: MediaQuery.sizeOf(context).width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 16),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Lottie.asset("assets/lottie/confetti.json",
                            animate: true,
                            repeat: true,
                            frameRate: FrameRate(10000),
                            reverse: true,
                            renderCache: RenderCache.drawingCommands,
                            backgroundLoading: true,
                            width: MediaQuery.sizeOf(context).width),
                        CircleAvatar(
                          radius: 80,
                          backgroundImage: NetworkImage(
                            "https://fcb-abj-pre.s3.amazonaws.com/img/jugadors/MESSI.jpg",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 22.0,
                          ),
                          child: HeadingText(
                            text: "Hurray!!  Deal closed",
                            fontSize: 24,
                            color: const Color.fromARGB(255, 175, 198, 238),
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        SizedBox(
                          width: 100,
                          child: OutlinedButton(
                              onPressed: () {},
                              child: Icon(Icons.thumb_up_outlined)),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),

            // Positioned(
            //   left: 0,
            //   right: 0,
            //   bottom: -200,
            //   child: Lottie.asset("assets/lottie/confetti.json",
            //       animate: true,
            //       repeat: true,
            //       reverse: true,
            //       renderCache: RenderCache.drawingCommands,
            //       backgroundLoading: true,
            //       width: MediaQuery.sizeOf(context).width),
            // ),
          ],
        ),
      ),
    );
  }

  List<Particle> createParticles() {
    var rng = Random();
    List<Particle> particles = [];
    for (int i = 0; i < 140; i++) {
      particles.add(Particle(
        color: const Color.fromARGB(255, 167, 227, 255).withOpacity(0.6),
        size: rng.nextDouble() * 5,
        velocity: Offset(rng.nextDouble() * 200 * randomSign(),
            rng.nextDouble() * 200 * randomSign()),
      ));
    }
    return particles;
  }

  double randomSign() {
    var rng = Random();
    return rng.nextBool() ? 1 : -1;
  }
}
