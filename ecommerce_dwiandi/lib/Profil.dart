import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: NetworkImage('https://i.pinimg.com/736x/97/7f/e7/977fe798cf2c3a037e7aa9af6ce4b9d1.jpg'),
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Dwi Andi Wijaya',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'dwiandiwijaya24@gmail.com',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 24),
              Card(
                elevation: 4,
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Informasi Personal',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 16),
                      ListTile(
                        title: Text('Jenis Kelamin'),
                        subtitle: Text('Pria'),
                      ),
                      Divider(),
                      ListTile(
                        title: Text('Tanggal Lahir'),
                        subtitle: Text('24 Juli 2001'),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 24),
              Card(
                elevation: 4,
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Alamat',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 16),
                      ListTile(
                        title: Text('Alamat Lengkap'),
                        subtitle: Text('Jl. Swadaya Lr. Sukadarma 2, Talang Aman'),
                      ),
                      Divider(),
                      ListTile(
                        title: Text('Kota, Provinsi'),
                        subtitle: Text('Palembang, Sumatera Selatan'),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
