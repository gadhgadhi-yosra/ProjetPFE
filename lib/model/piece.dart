class piece {
  String name;
  String price;
  String imagePath;

  piece({
    required this.name,
    required this.price,
    required this.imagePath,
  });

  String get _name => name;
  String get _price => price;
}
