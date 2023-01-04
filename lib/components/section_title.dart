import 'package:flutter/material.dart';
import 'package:food_app/constants.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final Function press;

  const SectionTitle({Key? key, required this.title, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Featured Partners", style: Theme.of(context).textTheme.headline6),
        TextButton(
          onPressed: press(),
          style: TextButton.styleFrom(foregroundColor: kActiveColor),
          child: const Text("See all"),
        )
      ],
    );
  }
}
