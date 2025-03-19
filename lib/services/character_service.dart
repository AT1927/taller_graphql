import 'package:flutter/material.dart';
import 'package:app_graphql/config/graphql_config.dart';

import 'package:app_graphql/models/character.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class CharacterService {
  static final ValueNotifier<GraphQLClient> _client =
      GraphQLConfig.clientToQuery();

  static String getCharactersQuery = '''
    query {
      characters {
        results {
          id
          name
          status
          species
          type
          gender
          origin {
            name
          }
          location {
            name
          }
          image
          episode {
            name
            episode
          }
          created
        }
      }
    }
  ''';

  Future<List<Character>> getCharacters() async {
    try {
      final QueryOptions options = QueryOptions(
        document: gql(getCharactersQuery),
        fetchPolicy: FetchPolicy.networkOnly,
      );

      final QueryResult result = await _client.value.query(options);

      if (result.hasException) {
        throw Exception(result.exception.toString());
      }

      final List<dynamic> charactersData =
          result.data?['characters']['results'] ?? [];
      return charactersData
          .map((characterData) => Character.fromJson(characterData))
          .toList();
    } catch (e) {
      throw Exception('Error fetching characters: $e');
    }
  }
}
