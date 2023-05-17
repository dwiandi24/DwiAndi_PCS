import 'package:ecommerce_dwiandi/main.dart';
import 'package:flutter/material.dart';

class ProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Produk'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16),
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Product product = Product(
                name: 'Outerwear Unisex Erigo Coach Jacket Idaina Kaeru Taslan Black ',
                description: 'Coach Jacket Erigo saat ini merupakan salah satu lini pakaian terbaik dan berkualitas tinggi di antara Local Brand Indonesia. Jaket berkerah dengan kancing jepret, saku fungsional, dan karet pada ujung lengan. Coach Jacket Erigo memiliki printed design yang unik pada bagian lengan dan punggung, dengan warna memukau siap menjadikanmu penuh semangat!',
                harga: 155,
              );
              Navigator.of(context).pushNamed('/product-details', arguments: product);
            },
            child: Column(
              children: <Widget>[
                Image.network(
                  'https://images.tokopedia.net/img/cache/700/VqbcmM/2021/2/24/ed9ad62e-b13a-43ba-a021-ee51be422a3e.jpg',
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 8),
                Text('Erigo Coach Jacket'),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Product product = Product(
                name: 'Kaos Puan Maharani Black Homage Tee',
                description: 'WARNA WASHED OLD TEES STYLE POLA CUTTING KAOS : OVERSIZE CUT BAHAN KAOS SANGAT NYAMAN UNTUK DIPAKAI SEHARI-HARI KAOS OVERSIZED KEREN UNTUK SELFI DAN MENAMBAH KEPERCAYAAN DIRI.',
                harga: 90
              );
              Navigator.of(context).pushNamed('/product-details', arguments: product);
            },
            child: Column(
              children: <Widget>[
                Image.network(
                  'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2022/9/29/8a40ded4-00c6-4e5f-94ec-05f4be3a0a50.jpg',
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 8),
                Text('Kaos PUAN MAHARANI'),
              ],
            ),
          ),
         GestureDetector(
            onTap: () {
              Product product = Product(
                name: 'Russ Sweater Crewneck NorthMisty ',
                description: 'bahan kualitas yang nyaman dan cocok dipakai untuk udara dingin dan outdoor. Detail Produk : Regular fit, Fleece, Embroidery, Casual Style',
                harga: 180,
              );
              Navigator.of(context).pushNamed('/product-details', arguments: product);
            },
            child: Column(
              children: <Widget>[
                Image.network(
                  'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2021/2/18/eea45258-5ddd-4e65-b992-3a8f7de13e2f.jpg',
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 8),
                Text('Russ Sweater'),
              ],
            ),
          ), 
          GestureDetector(
            onTap: () {
              Product product = Product(
                name: 'ERIGO T-shirt Pria (Size M) Kaos Pria Ukuran M - Universe Cream',
                description: 'T-Shirt Erigo saat ini merupakan salah satu lini pakaian terbaik dan berkualitas tinggi di antara Local Brand Indonesia. Dibuat dengan bahan cotton yang nyaman untuk menemani harimu dan memiliki print desain yang unik. ',
                harga: 60,
              );
              Navigator.of(context).pushNamed('/product-details', arguments: product);
            },
            child: Column(
              children: <Widget>[
                Image.network(
                  'https://images.tokopedia.net/img/cache/700/VqbcmM/2020/11/19/71b9d00c-5947-405a-bafe-f95feded673e.jpg',
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 8),
                Text('ERIGO T-shirt'),
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}
