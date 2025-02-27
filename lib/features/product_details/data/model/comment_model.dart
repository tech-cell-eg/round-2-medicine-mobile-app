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
    name: json['user_name'] as String,
    comment: json['comment'] as String,
    date: json['created_at'] as String,
    rating: json['rating'] as String,
  );
}
