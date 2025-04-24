import 'dart:convert';
import 'package:http/http.dart' as http;

// Product Model
class Product {
  final String name;
  final String price;
  final String image;
  final String url;

  Product({
    required this.name,
    required this.price,
    required this.image,
    required this.url,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      name: json['Name'] ?? 'Unnamed',
      price: json['Price'] ?? '0.00',
      image: json['image'] ?? '',
      url: json['url'] ?? '',
    );
  }
}

class ApiService {
  static Future<List<Product>> fetchProducts() async {
    final url = Uri.parse(
        'https://www.parsehub.com/api/v2/projects/t52hHxjvgZKM/last_ready_run/data?api_key=twaTYcajQSyT');
    
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final List productsJson = data['Products'] ?? [];

      return productsJson.map((json) => Product.fromJson(json)).toList();
    } else {
      throw Exception('Failed to fetch products');
    }
  }
}
