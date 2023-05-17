import 'package:ecommerce_dwiandi/DetailProduct.dart';
import 'package:ecommerce_dwiandi/Pesanan_saya.dart';
import 'package:ecommerce_dwiandi/main.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_dwiandi/firstscreen.dart';
import 'package:ecommerce_dwiandi/secondscreen.dart';
import 'package:ecommerce_dwiandi/Pesanan.dart';

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case '/products':
        return MaterialPageRoute(builder: (_) => ProductsScreen());
      case '/product-details':
        if (args is Product) {
          return MaterialPageRoute(builder: (_) => ProductDetailsScreen(product: args));
        }
        return _errorRoute();
      case '/pesanan':
        if (args is Product) {
          return MaterialPageRoute(builder: (_) => PesananScreen(product: args));
        }
        return _errorRoute();
      case '/form-record':
        if (args is Map<String, dynamic> &&
            args.containsKey('name') &&
            args.containsKey('address') &&
            args.containsKey('selectedSize') &&
            args.containsKey('product')) {
          return MaterialPageRoute(
            builder: (_) => FormRecordScreen(
              name: args['name'],
              address: args['address'],
              selectedSize: args['selectedSize'],
              product: args['product'],
            ),
          );
        }
        return _errorRoute();
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('Error: Invalid Route'),
        ),
      );
    });
  }
}
