class Character {
  int? id;
  String? name;
  String? status;
  String? species;
  String? type;
  String? gender;
  // Addresses? origin;
  // Addresses? location;
  String? image;
  List<String>? episode;
  String? url;
  String? created;
  String? originName;
  String? locationName;

  Character(
      {this.id,
      this.name,
      this.status,
      this.species,
      this.type,
      this.gender,
      // this.origin,
      // this.location,
      this.originName,
      this.locationName,
      this.image,
      this.episode,
      this.url,
      this.created});

  Character.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    status = json['status'];
    species = json['species'];
    type = json['type'];
    gender = json['gender'];
    // origin = json['origin'] != null ? Addresses.fromJson(json['origin']) : null;
    // location =
    //     json['location'] != null ? Addresses.fromJson(json['location']) : null;
    locationName = json['location']['name'];
    originName = json['origin']['name'];
    image = json['image'];
    episode = json['episode'].cast<String>();
    url = json['url'];
    created = json['created'];
  }
}

// class Addresses {
//   String? name;
//   String? url;

//   Addresses({this.name, this.url});

//   Addresses.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     url = json['url'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['name'] = name;
//     data['url'] = url;
//     return data;
//   }
// }
