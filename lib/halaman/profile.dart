import 'package:flutter/material.dart';
import 'package:uklperlu/halaman/homepage.dart';
import 'package:uklperlu/halaman/transaksi.dart';
import 'package:uklperlu/halaman/userinfo.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[300], // Background color set to white
          elevation: 10,
          title: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.grey[200], // Background color set to light grey
              borderRadius: BorderRadius.circular(30),
            ),
            child: const Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.grey,
                  size: 15,
                ), // Icon color set to grey
                SizedBox(width: 5),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none, // Remove border
                      hintText: "Cari Kebutuhan Servicemu...",
                      hintStyle: TextStyle(
                          color: Colors.grey, fontSize: 16), // Hint text color
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications,
                  color: Colors.grey), // Icon color set to grey
            ),
          ],
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              UserInfo(),
              
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                    icon: Icon(Icons.home),
                  ),
                  Text('Beranda'), // Tambahkan teks sebagai subtitle
                ],
              ),
              // Tambahkan IconButton dan teks untuk setiap item di BottomAppBar
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Transaksi()),
                      );
                    },
                    icon: Icon(Icons.history),
                  ),
                  Text('Transaksi'),
                ],
              ),

              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Profile()),
                      );
                    },
                    icon: Icon(Icons.person_2),
                  ),
                  Text('Akun'),
                ],
              ),
            ],
          ),
        ));
  }
}



class _Button extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onPressed;

  _Button(this.text, this.icon, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon),
          SizedBox(width: 5),
          Text(text),
        ],
      ),
    );
  }
}
