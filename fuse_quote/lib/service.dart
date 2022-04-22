class Service {
  String? name;
  int? quantity;
  String? size;
  String? quality;
  int? story;
  double price = 0;

  Service(
      {String? name,
      int? quantity,
      String? size,
      String? quality,
      int? story,
      double price = 0}) {
    this.name = name;
    this.quantity = quantity;
    this.size = size;
    this.quality = quality;
    this.story = story;
    this.price = price;
  }
}
