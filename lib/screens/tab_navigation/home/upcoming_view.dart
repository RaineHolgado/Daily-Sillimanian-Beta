import 'package:daily_sillimanian_beta/helpers/constants.dart';
import 'package:daily_sillimanian_beta/screens/tab_navigation/home/upcoming_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ionicons/ionicons.dart';
import 'package:auto_route/auto_route.dart';
import 'package:daily_sillimanian_beta/app/router.gr.dart';

class UpcomingView extends ConsumerWidget {
  const UpcomingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final eventsValue = ref.watch(upcomingControllerProvider);

    return eventsValue.when(
        data: (events) {
          if (events.isNotEmpty) {
            return Column(
              children: [
                for (var event in events) ...[
                  EventCard(
                    imageTag: event.id!,
                    onTapCard: () {
                      context.router.push(EventDetailRoute(event: event));
                    },
                    posterImage: event.eventImage,
                    orgLogo: event.orgLogo,
                    organization: event.orgName,
                    title: event.title,
                    onTapNotification: () {},
                    date: event.toDate,
                  ),
                  SizedBox(height: 15),
                ]
              ],
            );
          } else {
            return Center(
              child: Text("No events posted"),
            );
          }
        },
        loading: () => Center(
              child: CircularProgressIndicator(),
            ),
        error: (err, st) {
          return Center(
            child: Text("$err"),
          );
        });
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
    required this.imageTag,
  }) : super(key: key);

  final VoidCallback onTapCard;
  final String? posterImage;
  final String? orgLogo;
  final String? organization;
  final String? title;
  final VoidCallback onTapNotification;
  final String? date;
  final String imageTag;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: 5, horizontal: MediaQuery.of(context).size.width * 0.07),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: onTapCard,
            child: Hero(
              tag: "$imageTag",
              child: Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      image: AssetImage(posterImage!), fit: BoxFit.cover),
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
                                image: new AssetImage(orgLogo!),
                                fit: BoxFit.contain,
                              ),
                              borderRadius: new BorderRadius.all(
                                  new Radius.circular(50.0)),
                              border: new Border.all(
                                color: Colors.white,
                                width: 1.0,
                              ),
                            ),
                          ),
                          SizedBox(width: 6),
                          Text(
                            organization!,
                            style: Theme.of(context)
                                .primaryTextTheme
                                .overline!
                                .copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                          )
                        ],
                      ),
                    ],
                  ),
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
                  "$title",
                  style: Theme.of(context).primaryTextTheme.bodyText2,
                ),
              ),
              GestureDetector(
                onTap: onTapNotification,
                child: Icon(
                  Ionicons.notifications,
                  size: 23,
                  color: greyAppColor,
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Icon(
                Ionicons.calendar_clear_sharp,
                size: 18,
                color: primaryAppColor,
              ),
              SizedBox(width: 5),
              Text(
                "$date",
                style: Theme.of(context)
                    .primaryTextTheme
                    .overline!
                    .copyWith(color: primaryAppColor),
              ),
            ],
          )
        ],
      ),
    );
  }
}
