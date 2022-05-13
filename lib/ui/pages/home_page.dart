import 'package:flutter/material.dart';
import 'package:flutter_airplane/shared/theme.dart';
import 'package:flutter_airplane/ui/widgets/destination_card.dart';
import 'package:flutter_airplane/ui/widgets/destination_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(
            left: defaultMargin, right: defaultMargin, top: 30),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Howdy,\nKezia Anne",
                    overflow: TextOverflow.ellipsis,
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semibold,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    "Where to fly today",
                    style: grayTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 60,
              width: 60,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/image_profile.png"),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget popularDestinations() {
      return Container(
        margin: const EdgeInsets.only(top: 30, left: defaultMargin),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              DestinationCard(
                title: "Lake Ciliwung",
                city: "Tangerang",
                imageUrl: "image_destination1.png",
                rating: 4.8,
              ),
              DestinationCard(
                title: "White Houses",
                city: "Spain",
                imageUrl: "image_destination2.png",
                rating: 4.7,
              ),
              DestinationCard(
                title: "Hill Heyo",
                city: "Monaco",
                imageUrl: "image_destination3.png",
                rating: 4.8,
              ),
              DestinationCard(
                title: "Manarra",
                city: "Japan",
                imageUrl: "image_destination4.png",
                rating: 4.8,
              ),
              DestinationCard(
                title: "Payung Teduh",
                city: "Singapure",
                imageUrl: "image_destination5.png",
                rating: 4.8,
              ),
            ],
          ),
        ),
      );
    }

    Widget newDestinations() {
      return Container(
          margin: const EdgeInsets.only(
            top: 30,
            bottom: 100,
            left: defaultMargin,
            right: defaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "New This Year",
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: semibold,
                ),
              ),
              const DestinationTile(
                title: "Danau Beratan",
                city: "Singapure",
                imageUrl: "image_destination6.png",
                rating: 4.8,
              ),
              const DestinationTile(
                title: "Sidney Opera",
                city: "Australia",
                imageUrl: "image_destination7.png",
                rating: 4.8,
              ),
              const DestinationTile(
                title: "Roma",
                city: "Italy",
                imageUrl: "image_destination8.png",
                rating: 4.8,
              ),
              const DestinationTile(
                title: "Payung Teduh",
                city: "Singapure",
                imageUrl: "image_destination9.png",
                rating: 4.8,
              ),
              const DestinationTile(
                title: "Hill Hey",
                city: "Maroco",
                imageUrl: "image_destination10.png",
                rating: 4.8,
              ),
            ],
          ));
    }

    return ListView(
      children: [
        header(),
        popularDestinations(),
        newDestinations(),
      ],
    );
  }
}
