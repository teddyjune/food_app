import 'package:flutter/material.dart';
import 'package:food_app/constants.dart';
import 'package:food_app/demo_data.dart';

class RestaurantInfoMediumCard extends StatelessWidget {
  final String title, image;
  final int deliveryTime;
  final double rating;
  final Function press;
  final String location;

  const RestaurantInfoMediumCard({
    Key? key,
    required this.title,
    required this.image,
    required this.location,
    required this.deliveryTime,
    required this.rating,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1.25,
            child: Image.asset('assets/medium_1.jpg'),
          ),
          Text(
            demoMediumCardData[0]['name'],
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.headline6,
          ),
          Text(
            location,
            style: const TextStyle(color: kBodyTextColor),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DefaultTextStyle(
              style: const TextStyle(color: Colors.black, fontSize: 12),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: defaultPadding / 2,
                      vertical: defaultPadding / 8,
                    ),
                    decoration: const BoxDecoration(
                        color: kActiveColor,
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                    child: Text(
                      rating.toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const Spacer(),
                  Text("$deliveryTime min"),
                  const Spacer(),
                  const CircleAvatar(
                    radius: 2,
                    backgroundColor: Color(0xFF868686),
                  ),
                  const Spacer(),
                  const Text("Free delivery"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
