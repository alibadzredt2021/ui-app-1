import 'package:flutter/material.dart';

class GridComponent extends StatelessWidget {
  const GridComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4),
          itemCount: 8,
          itemBuilder: (context, index) {
            return Hero(
              tag: '$index',
              child: BoxWidget(
                size: const Size(50.0, 50.0),
                color: const Color.fromARGB(255, 66, 62, 62).withOpacity(0.5),
              ),
            );
          },
        ),
      ),
    );
  }
}

class BoxWidget extends StatelessWidget {
  const BoxWidget({
    super.key,
    required this.size,
    required this.color,
  });

  final Size size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height,
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text("menu"),
          Icon(Icons.book),
        ],
      ),
    );
  }
}
