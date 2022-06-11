class Hostel {
  final String imageUrl;
  final String name;
  final String desc;

  Hostel({required this.imageUrl, required this.name, required this.desc});

  factory Hostel.fromJson(Map<String, dynamic> json) {
    return Hostel(
      imageUrl: json['imageUrl'],
      name: json['name'],
      desc: json['desc'],
    );
  }

  Hostel test = {} as Hostel;

  Hostel fetchHostel() {
    return test;
  }
}
