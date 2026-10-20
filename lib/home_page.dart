import 'package:flutter/material.dart';

const List<Map<String, dynamic>> activites = [
  {
    "id": 1,
    "titre": "Dessin et coloriage",
    "description": "Développement de la créativité",
    "icone": "🎨"
  },
  {
    "id": 2,
    "titre": "Jeux éducatifs",
    "description": "Apprentissage par le jeu",
    "icone": "🧩"
  },
  {
    "id": 3,
    "titre": "Musique et chansons",
    "description": "Éveil musical des enfants",
    "icone": "🎵"
  },
  {
    "id": 4,
    "titre": "Lecture de contes",
    "description": "Découverte des histoires",
    "icone": "📚"
  },
  {
    "id": 5,
    "titre": "Activités sportives",
    "description": "Développement de la motricité",
    "icone": "⚽"
  },
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ma Garderie'),
        backgroundColor: Colors.deepPurple.shade100,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.deepPurple),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Ma Garderie',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Accueil'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(Icons.child_care),
              title: const Text('Activités'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('À propos'),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: activites.length,
        itemBuilder: (context, index) {
          final activite = activites[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 6),
            child: ListTile(
              leading: Text(
                activite['icone'] as String,
                style: const TextStyle(fontSize: 32),
              ),
              title: Text(
                activite['titre'] as String,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(activite['description'] as String),
              onTap: () {},
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}