import 'package:flutter/material.dart';
import 'package:food_app/components/image_carousel.dart';
import 'package:food_app/components/restaurant_info_medium_card.dart';
import 'package:food_app/components/section_title.dart';
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
                  "San Francisco",
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
          const SliverToBoxAdapter(child: ImageCarousel()),
          SliverPadding(
            padding: const EdgeInsets.all(defaultPadding),
            sliver: SliverToBoxAdapter(
              child: SectionTitle(
                title: "Featured Partners",
                press: () {},
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Row(
              children: [
                SizedBox(
                    width: 200,
                    child: RestaurantInfoMediumCard(
                      title: demoMediumCardData[0]['name'],
                      image: demoMediumCardData[0]['image'],
                      location: demoMediumCardData[0]['location'],
                      deliveryTime: demoMediumCardData[0]['deliverTime'],
                      rating: demoMediumCardData[0]['rating'],
                      press: () {},
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class IndicatorDot extends StatelessWidget {
  final bool isActive;

  const IndicatorDot({Key? key, required this.isActive}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4,
      width: 8,
      decoration: BoxDecoration(
          color: isActive ? Colors.white : Colors.white54,
          borderRadius: const BorderRadius.all(Radius.circular(12))),
    );
  }
}
