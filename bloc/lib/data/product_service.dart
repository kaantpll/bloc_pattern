import 'package:bloc/models/product.dart';

class ProductService {
  static List<Product> products = List<Product>();

  static ProductService _singLeton = ProductService._();

  factory ProductService() {
    return _singLeton;
  }

  ProductService._();

  static List<Product> getAll() {
    products.add(Product(1, "Acer Laptop", 5555));
    products.add(Product(2, "HP Laptop", 95000));
    products.add(Product(3, "Monster Laptop", 15500));
    return products;
  }
}
