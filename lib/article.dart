import 'package:flutter/material.dart';

class ArtikelNews extends StatelessWidget {

  final String title;
  final String imageAsset;

  const ArtikelNews({
    Key? key,
    required this.title,
    required this.imageAsset,
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200, 
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child:Column(
        children: [
            Image.asset(
              imageAsset,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 5,),
            Text(title,
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
            ),
        ],
      ) ,
    );
  }
}