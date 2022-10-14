import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonCard extends StatelessWidget {
  const ButtonCard(
      {Key? key, required this.image, required this.title, required this.route})
      : super(key: key);
  final String route;
  final double top = 18;
  final double bottom = 5;
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 3;
    double height = MediaQuery.of(context).size.height / 6;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextButton(
        onPressed: () {
          context.go('/$route');
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: width,
              height: height,
              constraints: const BoxConstraints(maxHeight: 75, maxWidth: 130),
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(image)),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(top),
                  topRight: Radius.circular(top),
                ),
              ),
            ),
            Container(
              width: width,
              constraints: const BoxConstraints(maxHeight: 70, maxWidth: 130),
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.inversePrimary),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
