import 'package:daily_sillimanian_beta/screens/tab_navigation/home/dummy_events.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:auto_route/auto_route.dart';
import 'package:daily_sillimanian_beta/app/router.gr.dart';

class UpcomingView extends StatelessWidget {
  const UpcomingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (var events in DummyEvents.items) ...[
          EventCard(
            onTapCard: () {
              context.router.push(HomeDetailRoute());
            },
            posterImage: events.posterImage,
            orgLogo: events.orgLogo,
            organization: events.organization,
            title: events.title,
            onTapNotification: () {},
            date: events.date,
          ),
          SizedBox(height: 15),
        ]
      ],
    );
  }
}

class EventCard extends StatelessWidget {
  const EventCard({
    Key? key,
    required this.onTapCard,
    required this.posterImage,
    required this.orgLogo,
    required this.organization,
    required this.title,
    required this.onTapNotification,
    required this.date,
  }) : super(key: key);

  final VoidCallback onTapCard;
  final String posterImage;
  final String orgLogo;
  final String organization;
  final String title;
  final VoidCallback onTapNotification;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.07),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: onTapCard,
            child: Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                    image: AssetImage(posterImage), fit: BoxFit.cover),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 12.0, vertical: 10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 35.0,
                          height: 35.0,
                          decoration: new BoxDecoration(
                            color: const Color(0xff7c94b6),
                            image: new DecorationImage(
                              image: new AssetImage(orgLogo),
                              fit: BoxFit.contain,
                            ),
                            borderRadius:
                                new BorderRadius.all(new Radius.circular(50.0)),
                            border: new Border.all(
                              color: Colors.white,
                              width: 1.0,
                            ),
                          ),
                        ),
                        SizedBox(width: 6),
                        Text(
                          organization,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              GestureDetector(
                onTap: onTapNotification,
                child: Icon(
                  Ionicons.notifications,
                  color: Color(0xFF959595),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Ionicons.calendar_clear_outline,
                color: Color(0xFFBB1017),
              ),
              SizedBox(width: 5),
              Text(
                date,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFBB1017),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
