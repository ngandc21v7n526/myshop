import '../../models/product.dart';

class ProductsManager {
  final List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Blue Jeans',
      description: 'Comfortable blue jeans for everyday wear.',
      price: 49.50,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/6/6f/Jeans_for_men.jpg',
    ),
    Product(
      id: 'p3',
      title: 'White Sneakers',
      description: 'Classic white sneakers for all outfits.',
      price: 69.00,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/3/3a/White_Sneakers.jpg',
    ),
    Product(
      id: 'p4',
      title: 'Backpack',
      description: 'Durable backpack for school or travel.',
      price: 39.99,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/0/0c/Backpack.jpg',
    ),
  ];

  int get itemCount {
    return _items.length;
  }

  List<Product> get items {
    return [..._items];
  }

  List<Product> get favoriteItems {
    return _items.where((item) => item.isFavorite).toList();
  }
}
