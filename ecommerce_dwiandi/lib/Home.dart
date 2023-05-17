import 'package:ecommerce_dwiandi/main.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_dwiandi/Produk.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
        children: <Widget>[
          Image.network(
            'https://img.lovepik.com/photo/20211118/medium/lovepik-shopping-mall-mens-shirt-shop-display-picture_500132659.jpg',
            width: 1000,
            height: 150,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 16),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: EdgeInsets.all(16),
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/products');
                      },
                      icon: Icon(Icons.shopping_bag),
                      label: Text('Produk'),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/form-record');
                      },
                      icon: Icon(Icons.assignment),
                      label: Text('Pesanan Saya'),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        // Tambahkan kode Anda untuk tombol ketiga di sini
                      },
                      icon: Icon(Icons.chat),
                      label: Text('Chat'),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    child: ElevatedButton.icon(
                      onPressed: () {
                      Navigator.of(context).pushNamed('/profil');
                      },
                      icon: Icon(Icons.person),
                      label: Text('Profil Saya'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
