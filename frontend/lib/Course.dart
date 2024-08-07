class Course {
  final String id;
  final String title;
  final String description;
  final String image;
  final String tutorImage;
  final String tutorName;
  final String price;
  final String duration;
  final double rating;

  Course({
    required this.id,
    required this.title,
    required this.description,
    required this.image,
    required this.tutorImage,
    required this.tutorName,
    required this.price,
    required this.duration,
    required this.rating,
  });

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
      id: json['_id'],
      title: json['title'],
      description: json['description'],
      image: json['image'],
      tutorImage: json['tutorImage'],
      tutorName: json['tutorName'],
      price: json['price'],
      duration: json['duration'],
      rating: json['rating'].toDouble(),
    );
  }
}
