import 'package:auto_route/auto_route.dart';
import 'package:daily_sillimanian_beta/app/router.gr.dart';
import 'package:daily_sillimanian_beta/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DsbDrawer extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userState = ref.watch(userServiceProvider);
    return Drawer(
      child: Material(
        color: Theme.of(context).colorScheme.secondary,
        child: ListView(
          children: [
            userState.maybeWhen(data: (user) {
              if (user != null) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      buildHeader(
                        context: context,
                        urlImage: user.urlImage,
                        name: user.name,
                        email: user.email,
                        onClicked: () {},
                      ),
                      Divider(
                        thickness: 2,
                        color: Colors.white,
                      ),
                      const SizedBox(height: 10),
                      buildMenuItem(
                        text: 'Profile',
                        icon: Icons.person,
                        onClicked: () {},
                      ),
                    ],
                  ),
                );
              } else {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                  child: Text(
                    "Anonymous",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                );
              }
            }, orElse: () {
              return SizedBox();
            }),
            const SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  buildMenuItem(
                    text: 'About Daily Silliman',
                    icon: Icons.info,
                    onClicked: () {},
                  ),
                  const SizedBox(height: 10),
                  buildMenuItem(
                    text: 'Terms and Conditions',
                    icon: Icons.description,
                    onClicked: () {},
                  ),
                  const SizedBox(height: 10),
                  buildMenuItem(
                    text: 'Log out',
                    icon: Icons.logout,
                    onClicked: () async {
                      await ref.read(userServiceProvider.notifier).logOut();
                      context.router.popUntil((route) {
                        bool shouldPop = false;
                        if (route.settings.name == StartUpRoute.name) {
                          shouldPop = true;
                        }
                        return shouldPop;
                      });
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildHeader({
    required BuildContext context,
    required String? urlImage,
    required String? name,
    required String? email,
    required VoidCallback onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 40),
          child: Row(
            children: [
              urlImage != null
                  ? CircleAvatar(
                      radius: 30, backgroundImage: NetworkImage(urlImage))
                  : CircleAvatar(
                      radius: 30,
                      backgroundColor: Theme.of(context).colorScheme.background,
                      child: Text(
                        "T",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name ?? "Full Name",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    email ?? "Email Address",
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      );

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }
}
