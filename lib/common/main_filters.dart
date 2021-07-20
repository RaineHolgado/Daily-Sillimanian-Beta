import 'package:daily_sillimanian_beta/helpers/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Filters for switching between UPCOMING and TODAY page.
class MainFilters extends StatelessWidget {
  final VoidCallback onUpcomingPressed;
  final VoidCallback onTodayPressed;
  final int selectedIndex;

  const MainFilters({
    Key? key,
    required this.onUpcomingPressed,
    required this.onTodayPressed,
    this.selectedIndex = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 260,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: _FilterButton(
              title: 'UPCOMING',
              isSelected: selectedIndex == 0,
              onPressed: onUpcomingPressed,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5.0),
                bottomLeft: Radius.circular(5.0),
              ),
            ),
          ),
          Expanded(
            child: _FilterButton(
              title: 'TODAY',
              isSelected: selectedIndex == 1,
              onPressed: onTodayPressed,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(5.0),
                bottomRight: Radius.circular(5.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _FilterButton extends StatelessWidget {
  final VoidCallback onPressed;
  final bool isSelected;
  final String title;
  final BorderRadiusGeometry borderRadius;

  const _FilterButton({
    Key? key,
    required this.onPressed,
    this.isSelected = false,
    required this.title,
    required this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 250),
      child: isSelected
          ? ElevatedButton(
              onPressed: onPressed,
              child: Text(title,
                  style: Theme.of(context)
                      .primaryTextTheme
                      .bodyText1!
                      .copyWith(color: whiteAppcolor)),
              style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: borderRadius)),
            )
          : OutlinedButton(
              child: Text(title,
                  style: Theme.of(context)
                      .primaryTextTheme
                      .bodyText1!
                      .copyWith(color: primaryAppColor)),
              onPressed: onPressed,
              style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: borderRadius)),
            ),
    );
  }
}
