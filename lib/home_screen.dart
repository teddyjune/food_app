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
            floating: true,
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
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: List.generate(
                demoMediumCardData.length,
                (index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RestaurantInfoMediumCard(
                    title: demoMediumCardData[index]['name'],
                    image: demoMediumCardData[index]['image'],
                    location: demoMediumCardData[index]['location'],
                    deliverTime: demoMediumCardData[index]['deliverTime'],
                    rating: demoMediumCardData[index]['rating'],
                    press: () {},
                  ),
                ),
              )),
            ),
          ),
          SliverToBoxAdapter(
            child: Image.asset("assets/big_7.jpg"),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(defaultPadding),
            sliver: SliverToBoxAdapter(
              child: SectionTitle(
                title: "Best Pick",
                press: () {},
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: List.generate(
                demoMediumCardData.length,
                (index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RestaurantInfoMediumCard(
                    title: demoMediumCardData[index]['name'],
                    image: demoMediumCardData[index]['image'],
                    location: demoMediumCardData[index]['location'],
                    deliverTime: demoMediumCardData[index]['deliverTime'],
                    rating: demoMediumCardData[index]['rating'],
                    press: () {},
                  ),
                ),
              )),
            ),
          ),
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
