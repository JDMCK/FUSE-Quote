class Service {
  String? name;
  int? quantity;
  String? size;
  String? quality;
  int? story;
  String? material;
  double price = 0;

  Service(
      {this.name,
      this.story,
      this.quantity,
      this.size,
      this.quality,
      this.material,
      this.price = 0});
}
