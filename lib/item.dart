import 'dart:convert';

List<Post> postFromJson(String str) =>
    List<Post>.from(json.decode(str).map((x) => Post.fromMap(x)));

class Post {
  Post({
    required this.id,
    required this.itemName,
    required this.serialNo,
    required this.qty,
    required this.createdAt,
  });

  int id;
  String itemName;
  String serialNo;
  int qty;
  String createdAt;

  factory Post.fromMap(Map<String, dynamic> json) => Post(
        id: json['id'],
        itemName: json['itemName'],
        serialNo: json['serialNo'],
        qty: json['qty'],
        createdAt: json['qty'],
      );
}