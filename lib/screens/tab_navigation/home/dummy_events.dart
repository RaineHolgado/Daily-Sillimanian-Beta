class DummyEvents {
  final String title;
  final String date;
  final String organization;
  final String orgLogo;
  final String posterImage;
  DummyEvents({
    required this.title,
    required this.date,
    required this.organization,
    required this.orgLogo,
    required this.posterImage,
  });

  static List<DummyEvents> get items => [
        DummyEvents(
          title: "PHICES Freshman Orientation 2021",
          date: "July 3, 2022",
          organization: "phices",
          orgLogo: "assets/images/org3.png",
          posterImage: "assets/images/activity1.png",
        ),
        DummyEvents(
          title: "Architect Design Competitions 2021",
          date: "July 3, 2022",
          organization: "arki",
          orgLogo: "assets/images/org2.png",
          posterImage: "assets/images/activity2.png",
        ),
        DummyEvents(
          title: "Million Dollar Company Opening 2021",
          date: "July 3, 2022",
          organization: "pyritecrew",
          orgLogo: "assets/images/org1.png",
          posterImage: "assets/images/activity3.png",
        ),
      ];
}
