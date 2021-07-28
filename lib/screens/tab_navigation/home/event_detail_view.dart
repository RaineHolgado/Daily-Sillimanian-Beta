import 'package:flutter/material.dart';

import 'package:daily_sillimanian_beta/models/models.dart';

class EventDetailView extends StatelessWidget {
  const EventDetailView({
    Key? key,
    required this.event,
  }) : super(key: key);
  final Events event;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Hero(
            tag: event.id!,
            child: Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                    image: AssetImage(event.eventImage!), fit: BoxFit.cover),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                Text(
                  "${event.title}",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
