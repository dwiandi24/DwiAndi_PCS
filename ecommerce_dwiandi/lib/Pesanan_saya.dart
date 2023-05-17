import 'package:ecommerce_dwiandi/main.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_dwiandi/routes.dart';

class FormRecordScreen extends StatelessWidget {
  final String name;
  final String address;
  final String selectedSize;
  final Product product;

  FormRecordScreen({
    required this.name,
    required this.address,
    required this.selectedSize,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pesanan Saya'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Nama:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              name,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 24),
            Text(
              'Alamat:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              address,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 24),
            Text(
              'Ukuran:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              selectedSize,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 24),
            Text(
              'Produk:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              product.name,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 24),
            Text(
              'Harga:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Rp ${product.harga.toStringAsFixed(3)}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 32),
            Text(
              'Silahkan Melakukan Pembayaran Melalui Rekening:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '1234 5678 9012 3456 (Bank ABC)',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                // Logika untuk tombol chat
              },
              child: Text('Chat Admin'),
            ),
          ],
        ),
      ),
    );
  }
}
