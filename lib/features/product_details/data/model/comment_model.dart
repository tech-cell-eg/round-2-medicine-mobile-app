class CommentModel {
  final String name;
  final String comment;
  final String date;
  final String rating;

  CommentModel({
    required this.name,
    required this.comment,
    required this.date,
    required this.rating,
  });
  factory CommentModel.fromJson(Map<String, dynamic> json) => CommentModel(
    name: json['name'] as String,
    comment: json['comment'] as String,
    date: json['date'] as String,
    rating: json['rating'] as String,
  );
}
