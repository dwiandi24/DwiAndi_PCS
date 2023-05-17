import 'package:ecommerce_dwiandi/main.dart';
import 'package:flutter/material.dart';

class PesananScreen extends StatelessWidget {
  final Product product;

  PesananScreen({required this.product});

  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  List<String> sizes = ['S', 'M', 'L', 'XL']; // Daftar pilihan ukuran
  String selectedSize = 'S'; // Ukuran yang dipilih, diinisialisasi dengan ukuran pertama

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pesanan'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Nama Produk:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              product.name,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            Text(
              'Harga:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Rp ${product.harga.toStringAsFixed(3)}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            Text(
              'Ukuran:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            DropdownButtonFormField(
              value: selectedSize,
              onChanged: (value) {
                selectedSize = value.toString();
              },
              items: sizes.map((size) {
                return DropdownMenuItem(
                  value: size,
                  child: Text(size),
                );
              }).toList(),
            ),
            SizedBox(height: 16),
            Text(
              'Nama:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: 'Masukkan nama Anda',
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Alamat:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            TextFormField(
              controller: addressController,
              decoration: InputDecoration(
                hintText: 'Masukkan alamat pengiriman',
              ),
            ),
            SizedBox(height: 16),
           ElevatedButton(
  onPressed: () {
    // Proses pengiriman pesanan
    String name = nameController.text;
    String address = addressController.text;

    // ...

    Navigator.pushNamed( context,'/form-record',
      arguments: {
        'name': name,
        'address': address,
        'selectedSize': selectedSize,
        'product': product,
      },
    );
  },
  child: Text('Beli Sekarang'),
),

          ],
        ),
      ),
    );
  }
}
