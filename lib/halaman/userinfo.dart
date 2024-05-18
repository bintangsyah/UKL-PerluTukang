import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("assets/tchalamet.jpg"),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _UserInfoItem('Nama: Bintang Syah'),
                    _UserInfoItem('Email: bintangsyah123@gmail.com'),
                    _UserInfoItem('No Telp: 081336504636'),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Edit"),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20), // Add some space between user info and options
            // Container for Account Options
            Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.grey[300]!),
                ),
              ),
              padding: EdgeInsets.only(top: 15),
              child: Column(
                children: [
                  _AccountOptionItem(
                    icon: Icons.lock,
                    text: 'Ubah Password',
                    onTap: () {
                      // Handle password change navigation
                    },
                  ),
                  _AccountOptionItem(
                    icon: Icons.description,
                    text: 'Ketentuan Layanan',
                    onTap: () {
                      // Handle terms of service navigation
                    },
                  ),
                  _AccountOptionItem(
                    icon: Icons.privacy_tip,
                    text: 'Kebijakan Privasi',
                    onTap: () {
                      // Handle privacy policy navigation
                    },
                  ),
                 
                  _AccountOptionItem(
                    icon: Icons.logout,
                    text: 'Keluar Akun',
                    onTap: () {
                      // Handle logout functionality
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _UserInfoItem extends StatelessWidget {
  final String text;
  _UserInfoItem(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontWeight: FontWeight.bold),
    );
  }
}

// New widget for Account Option Item
class _AccountOptionItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onTap;

  _AccountOptionItem({
    required this.icon,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(text),
      onTap: onTap,
    );
  }
}