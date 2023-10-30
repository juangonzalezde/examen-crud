import 'dart:math';
import 'package:flutter/material.dart';
//


class AuthBackgorundC1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Random rnd=new Random();

    final size_screen =
        MediaQuery.of(context).size; //obtiene el tamaño de la pantalla
    return Container(
      width: double.infinity,
      height: size_screen.height * 0.98, //40% de la pantalla
      decoration: orangeDecoration(),
      child: Stack(
        children: [
          Positioned(
            child: Buble(),
            top: rnd.nextDouble()*90.0,
            //left: 30,
            left: rnd.nextDouble()*150.0,
          ),
          Positioned(
            child: Buble(),
            top: -40+rnd.nextDouble()*60.0,
            left: -30+rnd.nextDouble()*20.0,
          ),
          Positioned(
            child: Buble(),
            top: -50+rnd.nextDouble()*100.0,
            right: -20+rnd.nextDouble()*50.0,
          ),
          Positioned(
            child: Buble(),
            bottom: -50+rnd.nextDouble()*100.0,
            left: -20+rnd.nextDouble()*50.0,
          ),
          Positioned(
            child: Buble(),
            bottom: rnd.nextDouble()*150.0,
            right: rnd.nextDouble()*50.0,
          ),
          Positioned(
            child: Buble(),
            bottom: rnd.nextDouble()*50.0,
            right: rnd.nextDouble()*200.0,
          ),
        ],
      ),
    );
  }

  BoxDecoration orangeDecoration() => const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromRGBO(255, 185, 0, 1),
        Color.fromRGBO(255, 200, 2, 1),
      ]));
}

class Buble extends StatelessWidget {
  @override
  Random rnd=new Random();
  Widget build(BuildContext context) {
    return Container(
      width: rnd.nextDouble()*250.0,
      height: rnd.nextDouble()*250.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Color.fromRGBO(rnd.nextInt(255), rnd.nextInt(255), rnd.nextInt(255), 0.50)),
    );
  }
}
