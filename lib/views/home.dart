import 'package:flutter/material.dart';
import 'package:amigos_de_patas/views/widgets/post_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icon(Icons.restaurant_menu),
              Image(image: AssetImage('assets/images/4.png'), height: 50),
              SizedBox(width: 10),
              // Text('Amigos de Patas'),
            ],
          ),
        ),
        body: PostCard(
          name: 'Patrick',
          age: '2 anos',
          selectedFile:
              'https://www.petz.com.br/blog/wp-content/uploads/2021/11/enxoval-para-gato-Copia.jpg',
          creator: "",
          description: "",
          localization: "",
          owner: "",
          phoneNumber: "",
          createdAt: DateTime(1),
          race: "",
        ));
  }
}
