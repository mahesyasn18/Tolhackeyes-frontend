class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent(
      {required this.image, required this.title, required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title: 'Reduce Congestion',
      image: 'assets/icon_congestion.png',
      discription:
          " By providing real-time information about traffic conditions on toll roads"),
  UnbordingContent(
      title: 'Environmental Contribution',
      image: 'assets/icon_emission.png',
      discription:
          "By reducing the number of vehicles passing on toll roads, the Tolhackeyes app can help reduce greenhouse gas emissions produced by vehicles"),
  UnbordingContent(
      title: 'Rewarding',
      image: 'assets/icon_gifts.png',
      discription:
          "The Tolhackeyes application also offers a rewarding feature, where users who use the application actively and contribute to reducing congestion and improving safety on toll roads will get rewards"),
];
