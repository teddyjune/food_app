import 'package:flutter/material.dart';
import 'package:food_app/constants.dart';
import 'package:food_app/demo_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: true,
            backgroundColor: Colors.white,
            elevation: 0,
            title: Column(
              children: [
                Text(
                  "Delivery to".toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(color: kActiveColor),
                ),
                const Text(
                  "홍대",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Filter",
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
          SliverToBoxAdapter(
              child: AspectRatio(
            aspectRatio: 1.81,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                PageView.builder(
                    itemCount: demoBigImages.length,
                    itemBuilder: (context, index) =>
                        Image.asset(demoBigImages[index])),
                const Positioned(
                  bottom: 10,
                  right: 40,
                  child: IndicatorDot(),
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}

class IndicatorDot extends StatelessWidget {
  const IndicatorDot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4,
      width: 8,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(12))),
    );
  }
}
