import 'package:flutter/material.dart';
import 'package:projeto_pratica/config/routes.dart';

class WidgetCidadeLista extends StatelessWidget {
  var people = [
    {
      'name': 'Gustavo',
      'phone': '123',
      'url':
          'https://a.storyblok.com/f/178900/1504x846/2a6685e7ed/sword-art-online-episode-13-kirito.jpg/m/1200x0/filters:quality(95)format(webp)',
    },
    {
      'name': 'Luan',
      'phone': '321',
      'url':
          'https://cdn.pixabay.com/photo/2017/08/10/23/36/street-workout-2628919_960_720.jpg',
    },
    {
      'name': 'Laryssa',
      'phone': '456',
      'url':
          'https://media.istockphoto.com/id/1301556422/pt/foto/woman-reading-book-in-hammock.jpg?s=1024x1024&w=is&k=20&c=0r7mjVNRtoS19J0uQF5vlfiQ2KE0xVwfxH2PPj3llHM=',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Lista de Pessoas',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontStyle: FontStyle.normal,
            decoration: TextDecoration.none,
            fontSize: 40,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: ListView.builder(
          itemCount: people.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(people[index]['url'].toString()),
              ),
              title: Text('${people[index]['name']}'),
              subtitle: Text('${people[index]['phone']}'),
              trailing: SizedBox(
                width: 100,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Excluido')));
                        },
                        icon: Icon(Icons.delete)),
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(Routes.city);
                        },
                        icon: Icon(Icons.edit))
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
