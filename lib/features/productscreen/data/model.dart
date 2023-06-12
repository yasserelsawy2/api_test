// ignore_for_file: public_member_api_docs, sort_constructors_first
class Products {
  String? title;
  int? price;
  String? description;
  String? images;
  Products({
    this.title,
    this.price,
    this.description,
    this.images,
  });

  factory Products.fromjson(Map<String, dynamic> json) {
    return Products(
      title: json['title'],
      price: json['price'],
      description: json['description'],
      // images: json['images'],
    );
  }
}
