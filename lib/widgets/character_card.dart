import 'package:flutter/material.dart';
import 'package:app_graphql/models/character.dart';

class CharacterCard extends StatelessWidget {
  final Character character;
  final VoidCallback onTap;

  const CharacterCard({
    super.key,
    required this.character,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 16),
      elevation: 2,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                character.name,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 21, 172, 241),
                ),
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Icon(Icons.settings, size: 16, color: Colors.grey),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      character.species,
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4),
              Row(
                children: [
                  Icon(Icons.people, size: 16, color: Colors.grey),
                  SizedBox(width: 8),
                  Text(
                    character.gender,
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
