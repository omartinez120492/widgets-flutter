import 'package:flutter/material.dart';

class ContainerImage extends StatelessWidget {
  const ContainerImage({super.key, required this.size, required this.imageUrl});

  final Size size;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        height: size.height * .3,
        width: double.infinity,
        //color: Colors.green,
        decoration: BoxDecoration(
          //border: Border.all(color: Colors.blue, width: 3.0),
          borderRadius: BorderRadius.circular(20),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: FadeInImage(
            placeholder: AssetImage('assets/images/loading.gif'),
            image: NetworkImage(imageUrl),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
