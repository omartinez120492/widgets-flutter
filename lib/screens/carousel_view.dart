import 'package:flutter/material.dart';

class CarouselViewX extends StatefulWidget {
  const CarouselViewX({super.key});

  @override
  State<CarouselViewX> createState() => _CarouselViewXState();
}

class _CarouselViewXState extends State<CarouselViewX> {
  CarouselController carouselController = CarouselController(initialItem: 2);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(title: Text('Home Screen')),
      body: CarouselView.weighted(
        controller: carouselController,
        //itemExtent: 200,
        shrinkExtent: 200,
        flexWeights: [1, 3, 3, 1],
        children: [
          FadeInImage(
            placeholder: AssetImage('assets/images/loading.gif'),
            image: AssetImage('assets/images/goku.png'),
          ),
          FadeInImage(
            placeholder: AssetImage('assets/images/loading.gif'),
            image: AssetImage('assets/images/goku2.png'),
          ),
          FadeInImage(
            placeholder: AssetImage('assets/images/loading.gif'),
            image: AssetImage('assets/images/goku3.png'),
          ),
          FadeInImage(
            placeholder: AssetImage('assets/images/loading.gif'),
            image: AssetImage('assets/images/goku4.png'),
          ),
        ],
      ),
    );
  }
}
