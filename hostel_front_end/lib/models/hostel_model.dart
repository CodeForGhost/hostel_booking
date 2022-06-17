class Hostel {
  final String imageUrl;
  final String name;
  final String desc;
  final String isBook;

  Hostel({
    required this.imageUrl,
    required this.name,
    required this.desc,
    required this.isBook,
  });

  factory Hostel.fromJson(Map<String, dynamic> json) {
    return Hostel(
      imageUrl: json['imageUrl'],
      name: json['name'],
      desc: json['desc'],
      isBook: json['isBook'],
    );
  }

  Hostel test = {} as Hostel;

  Hostel fetchHostel() {
    return test;
  }
}
