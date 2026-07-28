import 'package:flutter/material.dart';
import '../widgets/tuile.dart';
import 'ecran2.dart'; // adapte le chemin

class ListeCoursesV2 extends StatelessWidget {
  const ListeCoursesV2({super.key});

  final List<Map<String, dynamic>> ingredients = const [
    {'name': 'Pommes', 'description': 'une bonne pomme bien fraiche','qte':12,'price': 3.99, 'image': 'https://imgs.search.brave.com/GNIR_IPzZ_9VDXFDDcfGIdxl2qH-nR0_ZToKWotDbMo/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9wb21t/ZXNldHBvaXJlc2Rl/ZnJhbmNlLmZyL3dw/LWNvbnRlbnQvdXBs/b2Fkcy8yMDI2LzAy/L3BvbW1lLXNldWxl/LndlYnA'},
    {'name': 'Poires', 'description': 'une bonne poire bien fraiche','qte':27, 'price': 8.99, 'image': 'https://imgs.search.brave.com/OgWZPNm39BEMCFPIzfFYUtK9N7lh04bfA4p-n-CRduI/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzAwLzk2Lzk1LzYx/LzM2MF9GXzk2OTU2/MTU2X3dDT1RxUFVX/bTVxSHp3cWRHaGRr/aEwxaHF4a0habmFM/LmpwZw'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text('Liste de courses'),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: ingredients.length,
        itemBuilder: (context, index) {
          final ingredient = ingredients[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Tuile(
              name: ingredient['name'] as String,
              description: ingredient['description'] as String,
              price: ingredient['price'] as double,
              image: ingredient['image'] as String,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailCourses(
                      name: ingredient['name'] as String,
                      qte: ingredient['qte'] as int,
                      image: ingredient['image'] as String,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}