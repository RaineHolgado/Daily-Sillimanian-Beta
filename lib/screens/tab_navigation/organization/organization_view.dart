import 'package:daily_sillimanian_beta/helpers/constants.dart';
import 'package:daily_sillimanian_beta/screens/tab_navigation/tabNavigation_builder_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ionicons/ionicons.dart';

class OrganizationView extends StatelessWidget {
  const OrganizationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,
        titleSpacing: 0,
        leadingWidth: 75,
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: CircleAvatar(
                radius: 16,
                backgroundColor: Theme.of(context).colorScheme.secondary,
                child: Text(
                  "T",
                  style: Theme.of(context)
                      .primaryTextTheme
                      .bodyText2!
                      .copyWith(color: whiteAppcolor),
                ),
              ),
            ),
          ],
        ),
        title: Text(
          "Organizations",
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Ionicons.search_outline,
                color: blackAppColor,
              ),
            ),
          )
        ],
      ),
      body: Consumer(
        builder: (context, ref, _) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Text(
                  "MOST VIEWED ORGANIZATIONS",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  height: 63,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      for (var i = 0; i < 5; i++)
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            children: [
                              Container(
                                width: 40.0,
                                height: 40.0,
                                decoration: new BoxDecoration(
                                  color: const Color(0xFF870510),
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Text(
                                    i.toString(),
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 7),
                              Text(
                                "Lorem",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "ORGANIZATIONS",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                const SizedBox(height: 15),
                Expanded(
                  child: ListView(
                    children: [
                      for (var i = 0; i < 10; i++)
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "organization $i",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    const SizedBox(height: 3),
                                    Text(
                                      "Founder: Lorem Epsum",
                                      style: TextStyle(
                                          color: const Color(0xFF959595),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                width: 50.0,
                                height: 50.0,
                                decoration: new BoxDecoration(
                                  color: const Color(0xFFBB1017),
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Text(
                                    i.toString(),
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
