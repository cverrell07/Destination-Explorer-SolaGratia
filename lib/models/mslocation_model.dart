class MsLocation{
  final String ambience;
  final String description;
  final double distance;
  final String location;
  final String name;
  final double similarities;

  MsLocation({
    required this.ambience,
    required this.description,
    required this.distance,
    required this.location,
    required this.name,
    required this.similarities
  });

  factory MsLocation.fromJson(Map<String, dynamic> json) {
    return MsLocation(
      ambience: json['Ambience'],
      description: json['Description'],
      distance: json['Distance'],
      location: json['Location'],
      name: json['Name'],
      similarities: json['Similarities'],
    );
  }
}