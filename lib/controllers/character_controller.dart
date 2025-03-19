import 'package:get/get.dart';

import 'package:app_graphql/models/character.dart';
import 'package:app_graphql/services/character_service.dart';

class CharacterController extends GetxController {
  final CharacterService _characterService = CharacterService();

  final RxList<Character> characters = <Character>[].obs;
  final RxBool isLoading = false.obs;
  final RxString error = ''.obs;

  @override
  void onInit() {
    super.onInit();
    fetchCharacters();
  }

  Future<void> fetchCharacters() async {
    isLoading.value = true;
    error.value = '';

    try {
      final result = await _characterService.getCharacters();
      characters.value = result;
      isLoading.value = false;
    } catch (e) {
      isLoading.value = false;
      error.value = e.toString();
    }
  }
}
