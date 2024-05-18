import 'package:flutter/material.dart';

import 'package:uklperlu/halaman/homepage.dart';
import 'package:uklperlu/halaman/profile.dart';

class Transaksi extends StatelessWidget {
  final List<Map<String, String>> items = [
    {
      'image': 'assets/diditteknik.jpg',
      'label': 'Didit Teknik',
      'times': '10/10/2024 20.10',
      'inpo': 'Didit Teknik'
    },
    {
      'image': 'assets/danishjaya.jpg',
      'label': 'Danish Jaya Teknik',
      'times': '10/08/2024 17.50',
      'inpo': 'Danish Jaya Teknik'
    },
    {
      'image': 'assets/freekuota.jpg',
      'label': 'Free Kuota',
      'times': '5/6/2024 15.40',
      'inpo': 'FREE KUOTA'
    },
    // Tambahkan lebih banyak item jika diperlukan
  ];

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
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 3,
              color: Colors.grey[100],
              child: ListTile(
                
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(items[index]['image']!),
                ),
                title: Text(items[index]['label']!),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(items[index]['times']!),
                    SizedBox(height: 5,),
                    Text(items[index]['inpo']!),
                  ],
                ),
              ),
            );
          },
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
