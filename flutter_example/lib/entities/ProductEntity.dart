

class ProductEntity {
  int id;
  String name;
  String desc;
  int price;
  String image;

  ProductEntity({
    this.id,
    this.name,
    this.desc,
    this.price,
    this.image,
  });

  factory ProductEntity.fromJson(Map<String, dynamic> json) {
    print('JSONNNNNNN PARSING ${json}');

    return new ProductEntity(
        id: json['id'] as int,
        name: json['name'] as String,
        desc: json['desc'] as String,
        price: json['price'] as int,
        image: json['image'] as String);
  }
}
