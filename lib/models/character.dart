class Character {
  final int id; // Asegúrate de que este campo sea un int
  final String name;
  final String status;
  final String species;
  final String type;
  final String gender;
  final Origin origin;
  final Location location;
  final String image;
  final List<Episode> episode;
  final String created;

  Character({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.type,
    required this.gender,
    required this.origin,
    required this.location,
    required this.image,
    required this.episode,
    required this.created,
  });

  factory Character.fromJson(Map<String, dynamic> json) {
    return Character(
      id:
          json['id'] is int
              ? json['id']
              : int.parse(json['id']), // Asegúrate de que este campo sea un int
      name: json['name'],
      status: json['status'],
      species: json['species'],
      type: json['type'],
      gender: json['gender'],
      origin: Origin.fromJson(json['origin']),
      location: Location.fromJson(json['location']),
      image: json['image'],
      episode:
          (json['episode'] as List).map((e) => Episode.fromJson(e)).toList(),
      created: json['created'],
    );
  }
}

class Origin {
  final String name;

  Origin({required this.name});

  factory Origin.fromJson(Map<String, dynamic> json) {
    return Origin(name: json['name']);
  }
}

class Location {
  final String name;

  Location({required this.name});

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(name: json['name']);
  }
}

class Episode {
  final String name;
  final String episode;

  Episode({required this.name, required this.episode});

  factory Episode.fromJson(Map<String, dynamic> json) {
    return Episode(name: json['name'], episode: json['episode']);
  }
}
