// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));


class Welcome {
    final String id;
    final String name;
    final String category;
    final List<String> imageUrl;
    final String oldPrice;
    final List<dynamic> sizes;
    final String price;
    final String description;
    final String title;

    Welcome({
        required this.id,
        required this.name,
        required this.category,
        required this.imageUrl,
        required this.oldPrice,
        required this.sizes,
        required this.price,
        required this.description,
        required this.title,
    });

    factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        id: json["id"],
        name: json["name"],
        category: json["category"],
        imageUrl: List<String>.from(json["imageUrl"].map((x) => x)),
        oldPrice: json["oldPrice"],
        sizes: List<dynamic>.from(json["sizes"].map((x) => x)),
        price: json["price"],
        description: json["description"],
        title: json["title"],
    );

}


