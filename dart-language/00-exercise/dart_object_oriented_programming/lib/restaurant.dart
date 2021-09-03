class Restaurant {
  Restaurant({
    required this.name,
    required this.cuisine,
    required this.ratiings,
  });

  final String name;
  final String cuisine;
  final List<double> ratiings;

  int get numRattings => ratiings.length;
  double? avgRatting() {
    if (ratiings.isEmpty) {
      return null;
    }

    return ratiings.reduce((value, element) => value + element) /
        ratiings.length;
  }
}
