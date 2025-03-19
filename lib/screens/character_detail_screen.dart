import 'package:flutter/material.dart';
import 'package:app_graphql/models/character.dart';

class CharacterDetailScreen extends StatelessWidget {
  final Character character;

  const CharacterDetailScreen({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles del Personaje'),
        actions: [
          IconButton(
            icon: Image.asset('assets/images/custom_icon.png'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(character.image),
                backgroundColor: Colors.blue.shade100,
              ),
            ),
            SizedBox(height: 24),
            Card(
              elevation: 2,
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildDetailRow('ID', '${character.id}'),
                    Divider(),
                    _buildDetailRow('Nombre', character.name),
                    Divider(),
                    _buildDetailRow('Estado', character.status),
                    Divider(),
                    _buildDetailRow('Especie', character.species),
                    Divider(),
                    _buildDetailRow('Género', character.gender),
                    Divider(),
                    _buildDetailRow('Origen', character.origin.name),
                    Divider(),
                    _buildDetailRow('Ubicación', character.location.name),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: TextStyle(fontSize: 16, color: Colors.lightBlue)),
          SizedBox(height: 4),
          Text(
            value,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
