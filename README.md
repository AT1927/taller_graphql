# app_graphql
Created by: Edgar Andres Torres Muñoz (809977)
Flutter 2 - UCC Campus Pasto 8°

- App Flutter GraphQL - Rick & Morty:

Esta aplicación movil es un ejemplo de cómo utilizar GraphQL con Flutter para consumir la API de Rick and Morty. 
La aplicación permite a los usuarios ver una lista de personajes de la serie Rick and Morty y ver detalles específicos de cada personaje.

Funcionalidades:

- Pantalla Principal (HomeScreen)
Lista de Personajes: La pantalla principal muestra una lista de personajes obtenidos de la API de Rick and Morty.
Actualización de Datos: Los usuarios pueden actualizar la lista de personajes deslizando hacia abajo (pull-to-refresh) o presionando el ícono de la serie ubicado en la parte superior derecha del AppBar.
Navegación a Detalles: Al tocar un personaje en la lista, los usuarios son llevados a una pantalla de detalles del personaje.

- Pantalla de Detalles del Personaje (CharacterDetailScreen)
Detalles del Personaje: Muestra información detallada sobre el personaje seleccionado, incluyendo su nombre, estado, especie, género, origen, ubicación, y una imagen.
Navegación de Regreso: Los usuarios pueden regresar a la pantalla principal presionando el ícono de la serie ubicado en la parte superior derecha del AppBar.

## Resources

- [Api GraphQL](https://rickandmortyapi.com/graphql)
- [Documentation](https://rickandmortyapi.com/documentation)

## Query

```
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
```

## Response

```
{
  "data": {
    "characters": {
      "results": [
        {
          "id": 1,
          "name": "Rick Sanchez",
          "status": "Alive",
          "species": "Human",
          "type": "",
          "gender": "Male",
          "origin": {
            "name": "Earth (C-137)"
          },
          "location": {
            "name": "Earth (Replacement Dimension)"
          },
          "image": "https://rickandmortyapi.com/api/character/avatar/1.jpeg",
          "episode": [
            {
              "name": "Pilot",
              "episode": "S01E01"
            },
            {
              "name": "Lawnmower Dog",
              "episode": "S01E02"
            }
          ],
          "created": "2017-11-04T18:48:46.250Z"
        },
        {
          "id": 183,
          "name": "Johnny Depp",
          "status": "Alive",
          "species": "Human",
          "type": "",
          "gender": "Male",
          "origin": {
            "name": "Earth (C-500A)"
          },
          "location": {
            "name": "Earth (C-500A)"
          },
          "image": "https://rickandmortyapi.com/api/character/avatar/183.jpeg",
          "episode": [
            {
              "name": "Rixty Minutes",
              "episode": "S01E08"
            }
          ],
          "created": "2017-12-29T18:51:29.693Z"
        }
      ]
    }
  }
}
```
